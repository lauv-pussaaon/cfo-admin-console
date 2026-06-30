-- =============================================================================
-- event_seed_organizations_ideacarb_internal_demo.sql
-- Run after:
--   01_schema.sql
--   02_seed_master_data.sql
--   migration_add_employee_account_type.sql
-- Purpose:
--   Seed 22 internal demo organizations from ideacarb employee list
--   (CBiS01..CBiS13, SID-En01..SID-En09).
-- =============================================================================

WITH admin_user AS (
  SELECT id
  FROM users
  WHERE email = 'admin@cfo.com'
  LIMIT 1
),
client_orgs AS (
  SELECT *
  FROM (
    VALUES
      ('CBiS01', 'cbis01', 'https://cbis01.ideacarb.com', 'pphonthakorn.work@gmail.com', 'นายพนธกร', 'พฤกษา', '08 0154 6956'),
      ('CBiS02', 'cbis02', 'https://cbis02.ideacarb.com', 'Phatchariya4411@gmail.com', 'ดร.พัชรียา', 'รุ่งกิจวัฒนานุกูล', '08 9689 4411'),
      ('CBiS03', 'cbis03', 'https://cbis03.ideacarb.com', 'ratchanan.ch@gmail.com', 'น.ส. รัชนัน', 'ชำนาญหมอ', '09 6363 4314'),
      ('CBiS04', 'cbis04', 'https://cbis04.ideacarb.com', 'bewthan.2781@gmail.com', 'น.ส. ธันยาภรณ์', 'มีทรัพย์', '08-3645-6929'),
      ('CBiS05', 'cbis05', 'https://cbis05.ideacarb.com', 'trn.tanita@gmail.com', 'น.ส. ธนิตา', 'รุ่งกิจวัฒนานุกูล', '09 5546 3430'),
      ('CBiS06', 'cbis06', 'https://cbis06.ideacarb.com', 'chanyanuch.m@hotmail.com', 'น.ส. ชัญญานุช', 'เมฆาวัชร์', '08 0514 5465'),
      ('CBiS07', 'cbis07', 'https://cbis07.ideacarb.com', 'lalitalampueng005@gmail.com', 'น.ส. ลลิตา', 'หลำพึ่ง', '08 1297 6268'),
      ('CBiS08', 'cbis08', 'https://cbis08.ideacarb.com', 'chakrit1997@gmail.com', 'นายชาคริต', 'ยุกตานนท์', '09 3389 8502'),
      ('CBiS09', 'cbis09', 'https://cbis09.ideacarb.com', 'ekkapong2002@gmail.com', 'นายเอกพงศ์', 'จอมวงศ์', '09 2997 4606'),
      ('CBiS10', 'cbis10', 'https://cbis10.ideacarb.com', 'Yontarchai2545@gmail.com', 'นายยนตระชัย', 'กล้าหาญ', '09 2997 4606'),
      ('CBiS11', 'cbis11', 'https://cbis11.ideacarb.com', 'wang.siriluck@mail.com', 'น.ส. ศิริลักษณ์', 'อยู่สังข์', '09 0656 4422'),
      ('CBiS12', 'cbis12', 'https://cbis12.ideacarb.com', 'panidakneefel@gmail.com', 'นางพณิดา', 'คนีเฟล', '06 3396 2262'),
      ('CBiS13', 'cbis13', 'https://cbis13.ideacarb.com', 'saran.paisiriyuenyong@gmail.com', 'น.ส. สราญ', 'ไพศิริยืนยง', '09 0918 9399'),
      ('SID-En01', 'sid-en01', 'https://sid-en01.ideacarb.com', 'jittawat@sid-enconsult.com', 'นายจิตวัต', 'อรุณนภา', '08 1649 2974'),
      ('SID-En02', 'sid-en02', 'https://sid-en02.ideacarb.com', 'suriya@sid-enconsult.com', 'นายสุริยา', 'ด่อนแผ้ว', '09 4916 3949'),
      ('SID-En03', 'sid-en03', 'https://sid-en03.ideacarb.com', 'krairawee@sid-enconsult.com', 'นายไกรวี', 'โนศรี', '09 6305 3007'),
      ('SID-En04', 'sid-en04', 'https://sid-en04.ideacarb.com', 'walaipat@sid-enconsult.com', 'น.ส.วลัยพัชร', 'ใจเรือน', '08 2403 3355'),
      ('SID-En05', 'sid-en05', 'https://sid-en05.ideacarb.com', 'Thananchanok@sid-enconsult.com', 'น.ส.ธนัญชนกศ์', 'เขียวรัตน์', '08 0775 0498'),
      ('SID-En06', 'sid-en06', 'https://sid-en06.ideacarb.com', 'Jirawat@sid-enconsult.com', 'นายจิรวัฒน์', 'สุทธิพัฒนารัตน์', '09 1404 8672'),
      ('SID-En07', 'sid-en07', 'https://sid-en07.ideacarb.com', 'Sadudee@sid-enconsult.com', 'นายสดุดี', 'สกุลดี', '06 1915 2363'),
      ('SID-En08', 'sid-en08', 'https://sid-en08.ideacarb.com', 'arin@sid-enconsult.com', 'น.ส.เอริน', 'เงาภู่ทอง', '08 9442 2985'),
      ('SID-En09', 'sid-en09', 'https://sid-en09.ideacarb.com', 'sssuwitchaya@gmail.com', 'น.ส.สุวิชชญา', 'สุพรรณ', '09 5386 5111')
  ) AS t(
    name,
    code,
    app_url,
    factory_admin_email,
    contact_first_name,
    contact_last_name,
    contact_phone
  )
)
INSERT INTO organizations (
  name,
  code,
  app_url,
  factory_admin_email,
  account_type,
  contact_first_name,
  contact_last_name,
  contact_phone,
  is_initialized,
  created_by
)
SELECT
  co.name,
  co.code,
  co.app_url,
  co.factory_admin_email,
  'employee',
  co.contact_first_name,
  co.contact_last_name,
  co.contact_phone,
  FALSE,
  (SELECT id FROM admin_user)
FROM client_orgs co
ON CONFLICT (code) DO UPDATE
SET
  name = EXCLUDED.name,
  app_url = EXCLUDED.app_url,
  factory_admin_email = EXCLUDED.factory_admin_email,
  account_type = EXCLUDED.account_type,
  contact_first_name = EXCLUDED.contact_first_name,
  contact_last_name = EXCLUDED.contact_last_name,
  contact_phone = EXCLUDED.contact_phone,
  updated_at = NOW();

-- =============================================================================
-- Verification snippets
-- =============================================================================

-- 1) Expect 22 rows
-- SELECT COUNT(*) AS org_count
-- FROM organizations
-- WHERE account_type = 'employee';

-- 2) Verify mapping order/content
-- SELECT code, name, app_url, factory_admin_email, contact_first_name, contact_last_name, contact_phone
-- FROM organizations
-- WHERE account_type = 'employee'
-- ORDER BY code;
