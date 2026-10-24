-- IdeaCarb 2.0.0 announcement shown in every organization app.
-- Banner file: database/seeds/platform-updates/v2.0.0-banner.png
-- Upload that file after this seed: npx tsx scripts/seed-platform-update-banner.ts
-- Existing Supabase projects: run this file by hand, then upload the banner.

INSERT INTO platform_updates (
  id,
  status,
  published_on,
  banner_kind,
  banner_path,
  title_th,
  title_en,
  body_th,
  body_en,
  created_by
)
VALUES (
  'c2e02000-0006-4000-8000-000000002000',
  'active',
  '2026-09-06',
  'image',
  'c2e02000-0006-4000-8000-000000002000/banner.png',
  'ส่งออก Word และ Excel จาก ส่งออกรายงาน อบก.',
  'Export Word and Excel from Export TGO reports',
  $body_th${
    "type": "doc",
    "content": [
      {
        "type": "paragraph",
        "inlines": [
          {
            "type": "text",
            "text": "IdeaCarb 2.0.0 เพิ่มไฟล์ Excel และ Word ระดับองค์กร รายงานประจำปียังเหมือนเดิม ไฟล์ใหม่เริ่มจากเมนู ส่งออกรายงาน อบก. และยังไม่ใช่การยื่นให้ อบก."
          }
        ]
      },
      {
        "type": "heading",
        "level": 2,
        "inlines": [{ "type": "text", "text": "สี่ขั้น" }]
      },
      {
        "type": "bulletList",
        "items": [
          [{ "type": "text", "text": "ในขั้น เลือกรายงาน เลือกปีรายงาน ปีฐาน และหน่วยงาน หน่วยงานหลักไม่ต้องติ๊กได้" }],
          [{ "type": "text", "text": "ในขั้น Scope 3 ให้ประเมินให้ครบ หรือกด ข้ามการประเมิน scope 3" }],
          [{ "type": "text", "text": "ในขั้น Versheet กรอกปก Excel แล้วกด ถัดไป" }],
          [{ "type": "text", "text": "ในขั้น รายงาน Word กรอกข้อความของปี แล้วกด เสร็จสิ้น" }]
        ]
      },
      {
        "type": "paragraph",
        "inlines": [
          {
            "type": "text",
            "text": "ที่รายการการตั้งค่ารายงาน กด ส่งออก Versheet หรือ ส่งออก Word บนแถวที่บันทึกแล้ว หากขึ้นว่า ข้อมูลเปลี่ยน ให้เปิดการตั้งค่านั้นแล้วกด เสร็จสิ้น อีกครั้ง"
          }
        ]
      },
      {
        "type": "paragraph",
        "inlines": [
          { "type": "text", "text": "เปิด " },
          {
            "type": "link",
            "text": "คู่มือเวอร์ชัน 2.0.0",
            "href": "https://support.ideacarb.com/docs/user-manual/whats-new/excel-and-word"
          }
        ]
      }
    ]
  }$body_th$::jsonb,
  $body_en${
    "type": "doc",
    "content": [
      {
        "type": "paragraph",
        "inlines": [
          {
            "type": "text",
            "text": "IdeaCarb 2.0.0 adds organization Excel and Word files. Yearly reports stay the same. The new files start from Export TGO reports. They are not a submission to TGO."
          }
        ]
      },
      {
        "type": "heading",
        "level": 2,
        "inlines": [{ "type": "text", "text": "Four steps" }]
      },
      {
        "type": "bulletList",
        "items": [
          [{ "type": "text", "text": "On Reports, choose the report year, base year, and units. The main unit can stay unticked." }],
          [{ "type": "text", "text": "On Scope 3, complete the assessment, or select Skip Scope 3 assessment." }],
          [{ "type": "text", "text": "On Versheet, fill the Excel cover, then select Next." }],
          [{ "type": "text", "text": "On Word report, fill the year text, then select Finish." }]
        ]
      },
      {
        "type": "paragraph",
        "inlines": [
          {
            "type": "text",
            "text": "On the report settings list, select Export Versheet or Export Word on a saved row. If the row says Data changed, open that setting and select Finish again."
          }
        ]
      },
      {
        "type": "paragraph",
        "inlines": [
          { "type": "text", "text": "Open the " },
          {
            "type": "link",
            "text": "User manual 2.0.0",
            "href": "https://support.ideacarb.com/docs/user-manual/whats-new/excel-and-word"
          }
        ]
      }
    ]
  }$body_en$::jsonb,
  NULL
)
ON CONFLICT (id) DO UPDATE
SET
  status = EXCLUDED.status,
  published_on = EXCLUDED.published_on,
  banner_kind = EXCLUDED.banner_kind,
  banner_path = EXCLUDED.banner_path,
  title_th = EXCLUDED.title_th,
  title_en = EXCLUDED.title_en,
  body_th = EXCLUDED.body_th,
  body_en = EXCLUDED.body_en,
  updated_at = NOW();
