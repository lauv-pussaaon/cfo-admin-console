-- =============================================================================
-- migrate_consult_audit_verification.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   Move Consult/Audit verification off users columns into
--   consult_audit_verification + verification_documents.
--
-- Safe to re-run: IF NOT EXISTS / DROP COLUMN IF EXISTS.
-- =============================================================================

BEGIN;

CREATE TABLE IF NOT EXISTS consult_audit_verification (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID NOT NULL UNIQUE REFERENCES users(id) ON DELETE CASCADE,
  token TEXT UNIQUE NOT NULL,
  status TEXT NOT NULL DEFAULT 'pending_upload'
    CHECK (status IN ('pending_upload', 'pending_review', 'approved', 'rejected')),
  verified_date DATE,
  expired_date DATE,
  rejection_reason TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS verification_documents (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  consult_audit_verification_id UUID NOT NULL
    REFERENCES consult_audit_verification(id) ON DELETE CASCADE,
  file_url TEXT NOT NULL,
  file_name TEXT NOT NULL,
  uploaded_date TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Migrate existing users who had verification data into the new tables
INSERT INTO consult_audit_verification (
  user_id,
  token,
  status,
  verified_date,
  expired_date,
  created_at,
  updated_at
)
SELECT
  u.id,
  replace(uuid_generate_v4()::text, '-', ''),
  CASE
    WHEN u.status = 'active' AND COALESCE(u.has_verification, FALSE) THEN 'approved'
    WHEN u.status = 'rejected' THEN 'rejected'
    WHEN COALESCE(cardinality(u.verification_documents), 0) > 0 THEN 'pending_review'
    ELSE 'pending_upload'
  END,
  CASE
    WHEN u.status = 'active' AND COALESCE(u.has_verification, FALSE)
      THEN COALESCE(u.certified_date, CURRENT_DATE)
    ELSE NULL
  END,
  CASE
    WHEN u.status = 'active' AND COALESCE(u.has_verification, FALSE)
      THEN COALESCE(u.certification_expiry, (CURRENT_DATE + INTERVAL '2 years')::date)
    ELSE NULL
  END,
  COALESCE(u.created_at, NOW()),
  NOW()
FROM users u
WHERE u.role IN ('Consult', 'Audit')
  AND NOT EXISTS (
    SELECT 1 FROM consult_audit_verification v WHERE v.user_id = u.id
  );

INSERT INTO verification_documents (
  consult_audit_verification_id,
  file_url,
  file_name,
  uploaded_date
)
SELECT
  v.id,
  doc_url,
  COALESCE(NULLIF(split_part(doc_url, '/', -1), ''), 'document'),
  COALESCE(v.created_at, NOW())
FROM consult_audit_verification v
JOIN users u ON u.id = v.user_id
CROSS JOIN LATERAL unnest(COALESCE(u.verification_documents, '{}')) AS doc_url
WHERE COALESCE(cardinality(u.verification_documents), 0) > 0
  AND NOT EXISTS (
    SELECT 1
    FROM verification_documents d
    WHERE d.consult_audit_verification_id = v.id
      AND d.file_url = doc_url
  );

ALTER TABLE users DROP COLUMN IF EXISTS has_verification;
ALTER TABLE users DROP COLUMN IF EXISTS certified_date;
ALTER TABLE users DROP COLUMN IF EXISTS certification_expiry;
ALTER TABLE users DROP COLUMN IF EXISTS verification_documents;

COMMIT;
