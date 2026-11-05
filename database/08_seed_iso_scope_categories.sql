-- ISO 14064-1 subcategories. scope is category 1–6. Each row is one subcategory.
-- The column stays scope because TGO uses the same table. Not TGO Scope.
-- Ids match dataprep/iso-14064-1/build-iso-catalog.mjs (uuid v5 of category:{code}).
-- Does not insert fuel rows. Those enter through Import new version.

INSERT INTO scope_categories (id, family, scope, name_th, name_en, display_order)
VALUES
  ('3cf07854-e4bf-5b0c-9377-6146cb6ceeec', 'iso', 1, '1.1 การปล่อยก๊าซเรือนกระจกทางตรงจากการเผาไหม้อยู่กับที่', '1.1 Direct GHG emissions from stationary combustion', 1),
  ('d9de2d2d-e047-570e-963d-4cf5f442ec65', 'iso', 1, '1.2 การปล่อยก๊าซเรือนกระจกทางตรงจากการเผาไหม้แบบเคลื่อนที่', '1.2 Direct GHG emissions from mobile combustion', 2),
  ('d79056b2-2e16-5a7e-91dc-3ff45061b88f', 'iso', 1, '1.3 การปล่อยและดูดกลับก๊าซเรือนกระจกทางตรงจากกระบวนการผลิตอุตสาหกรรม', '1.3 Direct process emissions and removals', 3),
  ('ff90b587-a2f9-57a0-81da-4eeb610639e8', 'iso', 1, '1.4 การปล่อยก๊าซเรือนกระจกทางตรงจากการรั่วไหลในระบบที่ดำเนินงานโดยมนุษย์', '1.4 Direct fugitive emissions', 4),
  ('f973367a-974c-59b7-a2a8-d7c315d183f0', 'iso', 1, '1.5 การปล่อยและดูดกลับก๊าซเรือนกระจกทางตรงจากการใช้ที่ดิน การเปลี่ยนแปลงการใช้ที่ดิน และการป่าไม้ (LULUCF)', '1.5 Direct emissions and removals from LULUCF', 5),
  ('82fc113b-9c03-5bc5-a5b7-a979e4c6b84f', 'iso', 2, '2.1 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการนำเข้าไฟฟ้า', '2.1 Indirect GHG emissions from imported electricity', 6),
  ('cc43c12b-d425-5e7d-b804-5cca8916fb14', 'iso', 2, '2.2 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการนำเข้าพลังงานอื่นที่ไม่ใช่ไฟฟ้า', '2.2 Indirect GHG emissions from imported energy other than electricity', 7),
  ('7c1318e7-6200-558b-82ac-9577cddd1efe', 'iso', 3, '3.1 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการขนส่งและกระจายสินค้าต้นน้ำ', '3.1 Upstream transport and distribution', 8),
  ('a7555246-0e7f-598b-9bb2-1a0c05b0ab62', 'iso', 3, '3.2 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการขนส่งและกระจายสินค้าปลายน้ำ', '3.2 Downstream transport and distribution', 9),
  ('203dc5a0-81d2-51c4-a87c-bd043c9ff7ee', 'iso', 3, '3.3 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการเดินทางของพนักงาน', '3.3 Employee commuting', 10),
  ('78c836d1-d30c-5d81-aab4-e2ae356cb155', 'iso', 3, '3.4 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการเดินทางของลูกค้าและผู้มาติดต่อ', '3.4 Customer and visitor travel', 11),
  ('d8d606cb-344e-565c-beb3-bdbca2dc8f56', 'iso', 3, '3.5 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการเดินทางเพื่อธุรกิจ', '3.5 Business travel', 12),
  ('ecf70c8e-834a-502a-98c3-420fa7affbaa', 'iso', 4, '4.1 การปล่อยก๊าซเรือนกระจกทางอ้อมจากสินค้าที่ซื้อ', '4.1 Purchased goods', 13),
  ('287c6b49-80c5-5b8a-99d2-a20b2b749e00', 'iso', 4, '4.2 การปล่อยก๊าซเรือนกระจกทางอ้อมจากสินค้าทุน', '4.2 Capital goods', 14),
  ('31f614a4-f63c-5da3-b2be-3b51a2c389c1', 'iso', 4, '4.3 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการกำจัดของเสียที่เป็นของแข็งและของเหลว', '4.3 Disposal of solid and liquid waste', 15),
  ('f1107c48-471c-5f3c-b244-f3f8edd341cc', 'iso', 4, '4.4 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการใช้สินทรัพย์เช่าต้นน้ำ', '4.4 Upstream leased assets', 16),
  ('a2bed09c-a2c3-5404-8071-afd82f363478', 'iso', 4, '4.5 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการใช้บริการอื่น ๆ', '4.5 Use of other services', 17),
  ('7d0d5537-d442-5268-82fe-e02c5ddb69f3', 'iso', 5, '5.1 การปล่อยหรือดูดกลับก๊าซเรือนกระจกทางอ้อมจากช่วงการใช้งานของผลิตภัณฑ์', '5.1 Use of sold products', 18),
  ('ffb53821-853c-5fc1-8f91-72c6932191aa', 'iso', 5, '5.2 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการปล่อยเช่าสินทรัพย์ปลายน้ำ', '5.2 Downstream leased assets', 19),
  ('24bcb846-6e18-5d45-9821-5d7f9411e85a', 'iso', 5, '5.3 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการกำจัดซากผลิตภัณฑ์ที่องค์กรจำหน่าย', '5.3 End-of-life treatment of sold products', 20),
  ('68f95478-1486-5c9d-aca9-58507c16ab93', 'iso', 5, '5.4 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการลงทุน', '5.4 Investments', 21),
  ('fa7f102a-509c-5a61-8c49-6bfde2086e1b', 'iso', 6, '6. การปล่อยก๊าซเรือนกระจกทางอ้อมจากแหล่งอื่น ๆ', '6. Indirect GHG emissions from other sources', 22)
ON CONFLICT (id) DO UPDATE SET
  family = EXCLUDED.family,
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  updated_at = NOW();
