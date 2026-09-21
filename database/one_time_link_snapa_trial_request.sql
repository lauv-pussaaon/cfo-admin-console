-- One-shot: link leftover snapa trial request onto the existing org and
-- copy request name/email/contact. Does not send onboard or admin notice.
-- Does not stamp onboard_email_sent_at / instance_ready_notice_sent_at.
-- Run once in the admin Supabase SQL editor.

UPDATE organizations o
SET
  name = r.organization_name,
  factory_admin_email = r.contact_email,
  contact_first_name = r.contact_first_name,
  contact_last_name = r.contact_last_name,
  contact_phone = r.contact_phone,
  updated_at = NOW()
FROM organization_trial_requests r
WHERE o.id = '4cf4724b-2244-4cb4-9c79-3524c01b9aaf'
  AND o.code = 'snapa'
  AND r.id = 'ab90b161-f197-4088-93d6-8fac1438a446'
  AND r.company_code = 'snapa'
  AND r.status = 'started';

UPDATE organization_trial_requests
SET
  status = 'deployed',
  organization_id = '4cf4724b-2244-4cb4-9c79-3524c01b9aaf',
  approved_account_type = 'demo',
  reviewed_at = NOW(),
  updated_at = NOW()
WHERE id = 'ab90b161-f197-4088-93d6-8fac1438a446'
  AND company_code = 'snapa'
  AND status = 'started'
  AND organization_id IS NULL;

SELECT
  r.id AS request_id,
  r.status,
  r.organization_id,
  r.approved_account_type,
  r.reviewed_at,
  o.id AS org_id,
  o.code,
  o.name,
  o.factory_admin_email,
  o.contact_first_name,
  o.contact_last_name,
  o.contact_phone,
  o.is_initialized,
  o.onboard_email_sent_at,
  o.instance_ready_notice_sent_at
FROM organization_trial_requests r
JOIN organizations o ON o.id = r.organization_id
WHERE r.id = 'ab90b161-f197-4088-93d6-8fac1438a446';
