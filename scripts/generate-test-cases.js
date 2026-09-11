const XLSX = require('xlsx');
const path = require('path');
const fs = require('fs');

// Test cases for User Management module - Focused on main functions
const userManagementTestCases = [
  {
    module: 'User Management',
    testCaseId: 'TC-USER-001',
    testCaseName: 'System Admin: สร้างผู้ใช้ Factory Admin พร้อมเลือกองค์กร',
    priority: 'High',
    preconditions: 'ผู้ใช้เป็น System Admin และเข้าสู่ระบบแล้ว',
    testSteps: '1. ไปที่หน้า User Management (/admin-console/users)\n2. คลิกปุ่ม "สร้างผู้ใช้ใหม่"\n3. กรอกข้อมูลผู้ใช้ (username, email, name, password)\n4. เลือกบทบาท "Factory Admin"\n5. เลือกองค์กร\n6. คลิกปุ่ม "บันทึก"',
    expectedResults: 'สร้างผู้ใช้สำเร็จ แสดง success message และผู้ใช้ใหม่ปรากฏในตาราง',
    testData: 'Username: factoryadmin1, Email: factoryadmin1@test.com, Name: Factory Admin 1, Password: pass123, Role: Factory Admin, Organization: (เลือกองค์กร)',
    status: 'Not Tested'
  },
  {
    module: 'User Management',
    testCaseId: 'TC-USER-002',
    testCaseName: 'Factory Admin: สร้างผู้ใช้ในองค์กรของตัวเอง',
    priority: 'High',
    preconditions: 'ผู้ใช้เป็น Factory Admin และเข้าสู่ระบบแล้ว',
    testSteps: '1. ไปที่หน้า User Management (/[organizationId]/admin/users)\n2. คลิกปุ่ม "สร้างผู้ใช้ใหม่"\n3. กรอกข้อมูลผู้ใช้\n4. เลือกบทบาท (Consult, User, Internal Audit, หรือ Contractor)\n5. คลิกปุ่ม "บันทึก"',
    expectedResults: 'สร้างผู้ใช้สำเร็จ ผู้ใช้ถูก assign ให้กับองค์กรของ Factory Admin โดยอัตโนมัติ',
    testData: 'Username: user1, Email: user1@test.com, Name: User 1, Password: pass123, Role: User',
    status: 'Not Tested'
  },
  {
    module: 'User Management',
    testCaseId: 'TC-USER-003',
    testCaseName: 'แก้ไขข้อมูลผู้ใช้',
    priority: 'High',
    preconditions: 'ผู้ใช้เข้าสู่ระบบและมีผู้ใช้ในระบบ',
    testSteps: '1. ไปที่หน้า User Management\n2. คลิกปุ่ม Edit (ไอคอนแก้ไข) ของผู้ใช้ที่ต้องการแก้ไข\n3. แก้ไขข้อมูล (เช่น name, email)\n4. คลิกปุ่ม "บันทึก"',
    expectedResults: 'แก้ไขข้อมูลสำเร็จ แสดง success message และข้อมูลในตารางถูกอัพเดท',
    testData: 'แก้ไข Name จาก "User 1" เป็น "User 1 Updated"',
    status: 'Not Tested'
  },
  {
    module: 'User Management',
    testCaseId: 'TC-USER-004',
    testCaseName: 'ลบผู้ใช้',
    priority: 'High',
    preconditions: 'ผู้ใช้เข้าสู่ระบบและมีผู้ใช้ในระบบ',
    testSteps: '1. ไปที่หน้า User Management\n2. คลิกปุ่ม Delete (ไอคอนลบ) ของผู้ใช้ที่ต้องการลบ\n3. ยืนยันการลบใน dialog\n4. คลิกปุ่ม "ยืนยัน"',
    expectedResults: 'ลบผู้ใช้สำเร็จ แสดง success message และผู้ใช้ถูกลบออกจากตาราง',
    testData: 'ลบผู้ใช้ที่มี Username: user1',
    status: 'Not Tested'
  },
  {
    module: 'User Management',
    testCaseName: 'ตรวจสอบ validation เมื่อไม่กรอก username',
    testCaseId: 'TC-USER-005',
    priority: 'High',
    preconditions: 'ผู้ใช้อยู่ที่หน้า User Management และเปิด modal สร้างผู้ใช้',
    testSteps: '1. ปล่อยช่อง username ว่าง\n2. กรอกข้อมูลอื่นๆ\n3. คลิกปุ่ม "บันทึก"',
    expectedResults: 'แสดง validation message "กรุณากรอกชื่อผู้ใช้"',
    testData: 'Username: (ว่าง), Email: test@test.com, Name: Test User',
    status: 'Not Tested'
  },
  {
    module: 'User Management',
    testCaseId: 'TC-USER-006',
    testCaseName: 'ตรวจสอบ validation เมื่อ username มีอักขระพิเศษ',
    priority: 'Medium',
    preconditions: 'ผู้ใช้อยู่ที่หน้า User Management และเปิด modal สร้างผู้ใช้',
    testSteps: '1. กรอก username ที่มีอักขระพิเศษ (เช่น user@123)\n2. กรอกข้อมูลอื่นๆ\n3. คลิกปุ่ม "บันทึก"',
    expectedResults: 'แสดง validation message "ชื่อผู้ใช้ต้องเป็นตัวอักษร ตัวเลข หรือ _ เท่านั้น"',
    testData: 'Username: user@123, Email: test@test.com',
    status: 'Not Tested'
  },
  {
    module: 'User Management',
    testCaseId: 'TC-USER-007',
    testCaseName: 'ตรวจสอบ validation เมื่อ email ไม่ถูกต้อง',
    priority: 'High',
    preconditions: 'ผู้ใช้อยู่ที่หน้า User Management และเปิด modal สร้างผู้ใช้',
    testSteps: '1. กรอก email ที่ไม่ถูกต้อง (เช่น test@)\n2. กรอกข้อมูลอื่นๆ\n3. คลิกปุ่ม "บันทึก"',
    expectedResults: 'แสดง validation message "กรุณากรอกอีเมลที่ถูกต้อง"',
    testData: 'Username: user1, Email: test@, Name: Test User',
    status: 'Not Tested'
  },
  {
    module: 'User Management',
    testCaseId: 'TC-USER-008',
    testCaseName: 'ตรวจสอบ validation เมื่อ password สั้นเกินไป',
    priority: 'High',
    preconditions: 'ผู้ใช้อยู่ที่หน้า User Management และเปิด modal สร้างผู้ใช้',
    testSteps: '1. กรอก password ที่สั้นกว่า 6 ตัวอักษร\n2. กรอกข้อมูลอื่นๆ\n3. คลิกปุ่ม "บันทึก"',
    expectedResults: 'แสดง validation message "รหัสผ่านต้องมีอย่างน้อย 6 ตัวอักษร"',
    testData: 'Username: user1, Email: test@test.com, Password: 12345',
    status: 'Not Tested'
  },
  {
    module: 'User Management',
    testCaseId: 'TC-USER-009',
    testCaseName: 'System Admin: ตรวจสอบการแสดงเฉพาะ Admin และ Factory Admin',
    priority: 'Medium',
    preconditions: 'ผู้ใช้เป็น System Admin และเข้าสู่ระบบแล้ว',
    testSteps: '1. ไปที่หน้า User Management (/admin-console/users)\n2. สังเกตตารางผู้ใช้',
    expectedResults: 'ตารางแสดงเฉพาะผู้ใช้ที่มีบทบาท Admin และ Factory Admin จากทุกองค์กร',
    testData: 'N/A',
    status: 'Not Tested'
  },
  {
    module: 'User Management',
    testCaseId: 'TC-USER-010',
    testCaseName: 'Factory Admin: ตรวจสอบการแสดงเฉพาะผู้ใช้ในองค์กรของตัวเอง',
    priority: 'Medium',
    preconditions: 'ผู้ใช้เป็น Factory Admin และเข้าสู่ระบบแล้ว',
    testSteps: '1. ไปที่หน้า User Management (/[organizationId]/admin/users)\n2. สังเกตตารางผู้ใช้',
    expectedResults: 'ตารางแสดงเฉพาะผู้ใช้ในองค์กรของ Factory Admin ที่มีบทบาท Factory Admin, Consult, User, Internal Audit, หรือ Contractor',
    testData: 'N/A',
    status: 'Not Tested'
  }
];

// Test cases for Authentication & Login module - Focused on main functions
const authTestCases = [
  {
    module: 'Authentication & Login',
    testCaseId: 'TC-AUTH-001',
    testCaseName: 'เข้าสู่ระบบด้วย username ที่ถูกต้อง',
    priority: 'High',
    preconditions: 'ผู้ใช้มีบัญชีในระบบ',
    testSteps: '1. ไปที่หน้า Login\n2. กรอก username และ password\n3. คลิกปุ่ม "เข้าสู่ระบบ"',
    expectedResults: 'เข้าสู่ระบบสำเร็จและ redirect ไปหน้า Dashboard',
    testData: 'Username: admin, Password: admin123',
    status: 'Not Tested'
  },
  {
    module: 'Authentication & Login',
    testCaseId: 'TC-AUTH-002',
    testCaseName: 'เข้าสู่ระบบด้วย email ที่ถูกต้อง',
    priority: 'High',
    preconditions: 'ผู้ใช้มีบัญชีในระบบ',
    testSteps: '1. ไปที่หน้า Login\n2. กรอก email และ password\n3. คลิกปุ่ม "เข้าสู่ระบบ"',
    expectedResults: 'เข้าสู่ระบบสำเร็จและ redirect ไปหน้า Dashboard',
    testData: 'Email: admin@cfo.com, Password: admin123',
    status: 'Not Tested'
  },
  {
    module: 'Authentication & Login',
    testCaseId: 'TC-AUTH-003',
    testCaseName: 'เข้าสู่ระบบด้วย username หรือ password ที่ไม่ถูกต้อง',
    priority: 'High',
    preconditions: 'ผู้ใช้อยู่ที่หน้า Login',
    testSteps: '1. กรอก username หรือ password ที่ไม่ถูกต้อง\n2. คลิกปุ่ม "เข้าสู่ระบบ"',
    expectedResults: 'แสดง error message "ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง" และไม่สามารถเข้าสู่ระบบได้',
    testData: 'Username: wronguser, Password: wrongpass',
    status: 'Not Tested'
  },
  {
    module: 'Authentication & Login',
    testCaseId: 'TC-AUTH-004',
    testCaseName: 'ตรวจสอบ validation เมื่อไม่กรอก username',
    priority: 'High',
    preconditions: 'ผู้ใช้อยู่ที่หน้า Login',
    testSteps: '1. ปล่อยช่อง username ว่าง\n2. กรอก password\n3. คลิกปุ่ม "เข้าสู่ระบบ"',
    expectedResults: 'แสดง validation message "กรุณากรอกชื่อผู้ใช้หรืออีเมล"',
    testData: 'Username: (ว่าง), Password: admin123',
    status: 'Not Tested'
  },
  {
    module: 'Authentication & Login',
    testCaseId: 'TC-AUTH-005',
    testCaseName: 'ตรวจสอบ validation เมื่อไม่กรอก password',
    priority: 'High',
    preconditions: 'ผู้ใช้อยู่ที่หน้า Login',
    testSteps: '1. กรอก username\n2. ปล่อยช่อง password ว่าง\n3. คลิกปุ่ม "เข้าสู่ระบบ"',
    expectedResults: 'แสดง validation message "กรุณากรอกรหัสผ่าน"',
    testData: 'Username: admin, Password: (ว่าง)',
    status: 'Not Tested'
  },
  {
    module: 'Authentication & Login',
    testCaseId: 'TC-AUTH-006',
    testCaseName: 'แสดง/ซ่อน password ด้วยปุ่ม eye icon',
    priority: 'Medium',
    preconditions: 'ผู้ใช้อยู่ที่หน้า Login',
    testSteps: '1. กรอก password\n2. คลิกปุ่ม eye icon',
    expectedResults: 'Password แสดงเป็นข้อความธรรมดาเมื่อคลิก และซ่อนเป็นจุดเมื่อคลิกอีกครั้ง',
    testData: 'Password: admin123',
    status: 'Not Tested'
  }
];

// Function to create Excel workbook with formatting
function createTestCasesWorkbook(testCases, moduleName) {
  const workbook = XLSX.utils.book_new();
  
  // Prepare data for worksheet
  const worksheetData = [
    // Header row
    [
      'Module',
      'Test Case ID',
      'Test Case Name',
      'Priority',
      'Preconditions',
      'Test Steps',
      'Expected Results',
      'Test Data',
      'Status'
    ],
    // Data rows
    ...testCases.map(tc => [
      tc.module,
      tc.testCaseId,
      tc.testCaseName,
      tc.priority,
      tc.preconditions,
      typeof tc.testSteps === 'string' ? tc.testSteps : tc.testSteps.join('\n'),
      typeof tc.expectedResults === 'string' ? tc.expectedResults : tc.expectedResults.join('\n'),
      tc.testData,
      tc.status
    ])
  ];
  
  // Create worksheet
  const worksheet = XLSX.utils.aoa_to_sheet(worksheetData);
  
  // Set column widths for better readability
  worksheet['!cols'] = [
    { wch: 25 }, // Module
    { wch: 15 }, // Test Case ID
    { wch: 45 }, // Test Case Name
    { wch: 10 }, // Priority
    { wch: 35 }, // Preconditions
    { wch: 60 }, // Test Steps
    { wch: 60 }, // Expected Results
    { wch: 35 }, // Test Data
    { wch: 12 }  // Status
  ];
  
  // Add worksheet to workbook
  XLSX.utils.book_append_sheet(workbook, worksheet, moduleName);
  
  return workbook;
}

// Test cases for Annual Emissions Management module - Focused on main functions
const annualEmissionsTestCases = [
  {
    module: 'Annual Emissions Management',
    testCaseId: 'TC-EMISSIONS-001',
    testCaseName: 'สร้างข้อมูลการปล่อยก๊าซเรือนกระจกใหม่',
    priority: 'High',
    preconditions: 'ผู้ใช้เข้าสู่ระบบและมี Report ที่เลือกอยู่',
    testSteps: '1. ไปที่หน้า Annual Emissions\n2. เลือก Scope (1, 2, 3, หรือ 4)\n3. คลิกปุ่ม "เพิ่มข้อมูล"\n4. กรอกข้อมูลพื้นฐาน (Activity, Resource, Unit, EF Value)\n5. กรอกข้อมูลรายเดือน\n6. อัพโหลดหลักฐาน (ถ้ามี)\n7. คลิกปุ่ม "บันทึก"',
    expectedResults: 'บันทึกข้อมูลสำเร็จ แสดง success message และข้อมูลใหม่ปรากฏในตาราง',
    testData: 'Activity: การใช้ไฟฟ้า, Resource: ไฟฟ้า, Unit: kWh, EF Value: 0.5, Monthly Data: 1000 kWh/เดือน',
    status: 'Not Tested'
  },
  {
    module: 'Annual Emissions Management',
    testCaseId: 'TC-EMISSIONS-002',
    testCaseName: 'แก้ไขข้อมูลการปล่อยก๊าซเรือนกระจก',
    priority: 'High',
    preconditions: 'ผู้ใช้เข้าสู่ระบบและมีข้อมูลการปล่อยก๊าซในระบบ',
    testSteps: '1. ไปที่หน้า Annual Emissions\n2. คลิกปุ่ม Edit ของข้อมูลที่ต้องการแก้ไข\n3. แก้ไขข้อมูล (เช่น Activity, Monthly Data)\n4. คลิกปุ่ม "บันทึก"',
    expectedResults: 'แก้ไขข้อมูลสำเร็จ แสดง success message และข้อมูลในตารางถูกอัพเดท',
    testData: 'แก้ไข Monthly Data จาก 1000 เป็น 1500 kWh',
    status: 'Not Tested'
  },
  {
    module: 'Annual Emissions Management',
    testCaseId: 'TC-EMISSIONS-003',
    testCaseName: 'ลบข้อมูลการปล่อยก๊าซเรือนกระจก',
    priority: 'High',
    preconditions: 'ผู้ใช้เข้าสู่ระบบและมีข้อมูลการปล่อยก๊าซในระบบ',
    testSteps: '1. ไปที่หน้า Annual Emissions\n2. คลิกปุ่ม Delete ของข้อมูลที่ต้องการลบ\n3. ยืนยันการลบใน dialog\n4. คลิกปุ่ม "ยืนยัน"',
    expectedResults: 'ลบข้อมูลสำเร็จ แสดง success message และข้อมูลถูกลบออกจากตาราง',
    testData: 'ลบข้อมูล Activity: การใช้ไฟฟ้า',
    status: 'Not Tested'
  },
  {
    module: 'Annual Emissions Management',
    testCaseId: 'TC-EMISSIONS-004',
    testCaseName: 'สลับระหว่าง Scope tabs (Scope 1, 2, 3, 4)',
    priority: 'High',
    preconditions: 'ผู้ใช้อยู่ที่หน้า Annual Emissions',
    testSteps: '1. คลิกแท็บ Scope 1\n2. คลิกแท็บ Scope 2\n3. คลิกแท็บ Scope 3\n4. คลิกแท็บ Scope 4',
    expectedResults: 'ตารางแสดงข้อมูลตาม Scope ที่เลือก และ Summary ถูกอัพเดทตาม Scope',
    testData: 'N/A',
    status: 'Not Tested'
  },
  {
    module: 'Annual Emissions Management',
    testCaseId: 'TC-EMISSIONS-005',
    testCaseName: 'ตรวจสอบ validation เมื่อไม่กรอก Activity',
    priority: 'High',
    preconditions: 'ผู้ใช้เปิด modal สร้างข้อมูลใหม่',
    testSteps: '1. ปล่อยช่อง Activity ว่าง\n2. กรอกข้อมูลอื่นๆ\n3. คลิกปุ่ม "บันทึก"',
    expectedResults: 'แสดง validation message "กรุณากรอกกิจกรรม"',
    testData: 'Activity: (ว่าง), Resource: ไฟฟ้า, Unit: kWh',
    status: 'Not Tested'
  },
  {
    module: 'Annual Emissions Management',
    testCaseId: 'TC-EMISSIONS-006',
    testCaseName: 'ตรวจสอบ validation เมื่อไม่กรอก EF Value',
    priority: 'High',
    preconditions: 'ผู้ใช้เปิด modal สร้างข้อมูลใหม่',
    testSteps: '1. เลือก Resource\n2. ปล่อยช่อง EF Value ว่าง\n3. กรอกข้อมูลอื่นๆ\n4. คลิกปุ่ม "บันทึก"',
    expectedResults: 'แสดง validation message "กรุณากรอกค่า Emission Factor (ต้องมากกว่า 0)"',
    testData: 'Activity: การใช้ไฟฟ้า, Resource: ไฟฟ้า, EF Value: (ว่าง)',
    status: 'Not Tested'
  },
  {
    module: 'Annual Emissions Management',
    testCaseId: 'TC-EMISSIONS-007',
    testCaseName: 'กรอกข้อมูลรายเดือน (Monthly Data)',
    priority: 'High',
    preconditions: 'ผู้ใช้เปิด modal สร้างข้อมูลใหม่และอยู่ที่ขั้นตอน Monthly Data',
    testSteps: '1. กรอกข้อมูลรายเดือนสำหรับแต่ละเดือน\n2. คลิกปุ่ม "ถัดไป"',
    expectedResults: 'บันทึกข้อมูลรายเดือนสำเร็จ และสามารถไปขั้นตอนถัดไปได้',
    testData: 'January: 1000, February: 1200, March: 1100, ...',
    status: 'Not Tested'
  },
  {
    module: 'Annual Emissions Management',
    testCaseId: 'TC-EMISSIONS-008',
    testCaseName: 'อัพโหลดไฟล์หลักฐาน (Evidence File)',
    priority: 'Medium',
    preconditions: 'ผู้ใช้เปิด modal สร้างข้อมูลใหม่และอยู่ที่ขั้นตอน Evidence Upload',
    testSteps: '1. คลิกปุ่มอัพโหลดไฟล์\n2. เลือกไฟล์ (PDF, Image, etc.)\n3. รอให้อัพโหลดเสร็จ\n4. คลิกปุ่ม "บันทึก"',
    expectedResults: 'อัพโหลดไฟล์สำเร็จ แสดงชื่อไฟล์และสามารถบันทึกข้อมูลได้',
    testData: 'ไฟล์: invoice.pdf หรือ receipt.jpg',
    status: 'Not Tested'
  },
  {
    module: 'Annual Emissions Management',
    testCaseId: 'TC-EMISSIONS-009',
    testCaseName: 'ดู Comprehensive Summary',
    priority: 'Medium',
    preconditions: 'ผู้ใช้อยู่ที่หน้า Annual Emissions',
    testSteps: '1. สังเกต Comprehensive Summary ที่ด้านบนของหน้า',
    expectedResults: 'แสดง Summary ข้อมูลรวม: Approved Reports, Submitted Reports, Scope Totals (Scope 1, 2, 3, 4)',
    testData: 'N/A',
    status: 'Not Tested'
  },
  {
    module: 'Annual Emissions Management',
    testCaseId: 'TC-EMISSIONS-010',
    testCaseName: 'ค้นหาและกรองข้อมูล (Search & Filter)',
    priority: 'Medium',
    preconditions: 'ผู้ใช้อยู่ที่หน้า Annual Emissions และมีข้อมูลในตาราง',
    testSteps: '1. ใช้ช่องค้นหาเพื่อค้นหาข้อมูล\n2. ใช้ตัวกรองเพื่อกรองข้อมูล',
    expectedResults: 'ตารางแสดงเฉพาะข้อมูลที่ตรงกับการค้นหาหรือตัวกรอง',
    testData: 'ค้นหา: "ไฟฟ้า" หรือกรองตาม Scope',
    status: 'Not Tested'
  }
];

// Test cases for Dashboard module - Focused on main functions
const dashboardTestCases = [
  {
    module: 'Dashboard',
    testCaseId: 'TC-DASHBOARD-001',
    testCaseName: 'ดู Dashboard และ KPI Cards',
    priority: 'High',
    preconditions: 'ผู้ใช้เข้าสู่ระบบและมี Report ที่เลือกอยู่',
    testSteps: '1. ไปที่หน้า Dashboard\n2. สังเกต KPI Cards ที่แสดง',
    expectedResults: 'แสดง KPI Cards: Total Emissions, Scope 1, Scope 2, Scope 3, Scope 4 พร้อมเปอร์เซ็นต์การเปลี่ยนแปลงเมื่อเทียบกับ Base Year',
    testData: 'N/A',
    status: 'Not Tested'
  },
  {
    module: 'Dashboard',
    testCaseId: 'TC-DASHBOARD-002',
    testCaseName: 'ดู Scope Stacked Bar Chart',
    priority: 'High',
    preconditions: 'ผู้ใช้อยู่ที่หน้า Dashboard',
    testSteps: '1. สังเกต Scope Stacked Bar Chart\n2. ตรวจสอบข้อมูลที่แสดง',
    expectedResults: 'แสดงกราฟแท่งเปรียบเทียบ Scope 1, 2, 3, 4 ระหว่าง Current Year และ Base Year',
    testData: 'N/A',
    status: 'Not Tested'
  },
  {
    module: 'Dashboard',
    testCaseId: 'TC-DASHBOARD-003',
    testCaseName: 'ดู Monthly Trend Chart',
    priority: 'High',
    preconditions: 'ผู้ใช้อยู่ที่หน้า Dashboard',
    testSteps: '1. สังเกต Monthly Trend Chart\n2. Hover ที่จุดข้อมูลบนกราฟ',
    expectedResults: 'แสดงกราฟเส้นแสดงแนวโน้มรายเดือน และแสดง tooltip เมื่อ hover ที่จุดข้อมูล',
    testData: 'N/A',
    status: 'Not Tested'
  },
  {
    module: 'Dashboard',
    testCaseId: 'TC-DASHBOARD-004',
    testCaseName: 'ดู Emission Sources Table',
    priority: 'High',
    preconditions: 'ผู้ใช้อยู่ที่หน้า Dashboard',
    testSteps: '1. Scroll ลงไปดูตาราง Emission Sources\n2. สังเกตข้อมูลในตาราง',
    expectedResults: 'แสดงตารางรายการแหล่งปล่อยก๊าซเรือนกระจกพร้อมข้อมูล Activity, Scope, และ Emissions',
    testData: 'N/A',
    status: 'Not Tested'
  },
  {
    module: 'Dashboard',
    testCaseId: 'TC-DASHBOARD-005',
    testCaseName: 'เปลี่ยน Report ที่เลือก',
    priority: 'High',
    preconditions: 'ผู้ใช้มีหลาย Reports และอยู่ที่หน้า Dashboard',
    testSteps: '1. คลิกที่ Report Selector ใน App Header\n2. เลือก Report อื่น\n3. สังเกตการเปลี่ยนแปลงของข้อมูล',
    expectedResults: 'Dashboard อัพเดทข้อมูลตาม Report ที่เลือก และแสดงข้อมูลของ Report ใหม่',
    testData: 'เลือก Report ปี 2024 แทน 2023',
    status: 'Not Tested'
  },
  {
    module: 'Dashboard',
    testCaseId: 'TC-DASHBOARD-006',
    testCaseName: 'สร้าง Report ใหม่',
    priority: 'High',
    preconditions: 'ผู้ใช้มีสิทธิ์สร้าง Report และอยู่ที่หน้า Dashboard',
    testSteps: '1. คลิกปุ่ม "สร้างรายงาน" หรือเลือกจาก Report Selector\n2. กรอกข้อมูล Report (ชื่อ, ปี, ระยะเวลา)\n3. คลิกปุ่ม "บันทึก"',
    expectedResults: 'สร้าง Report สำเร็จ แสดง success message และ Report ใหม่ปรากฏใน Report Selector',
    testData: 'Report Name: Annual Report 2024, Year: 2024, Period: Jan-Dec 2024',
    status: 'Not Tested'
  },
  {
    module: 'Dashboard',
    testCaseId: 'TC-DASHBOARD-007',
    testCaseName: 'แก้ไข Report',
    priority: 'Medium',
    preconditions: 'ผู้ใช้มีสิทธิ์แก้ไข Report และอยู่ที่หน้า Dashboard',
    testSteps: '1. คลิกปุ่ม Edit ใน Report Info Bar\n2. แก้ไขข้อมูล Report\n3. คลิกปุ่ม "บันทึก"',
    expectedResults: 'แก้ไข Report สำเร็จ แสดง success message และข้อมูล Report ถูกอัพเดท',
    testData: 'แก้ไข Report Name จาก "Report 2023" เป็น "Annual Report 2023"',
    status: 'Not Tested'
  },
  {
    module: 'Dashboard',
    testCaseId: 'TC-DASHBOARD-008',
    testCaseName: 'ลบ Report',
    priority: 'High',
    preconditions: 'ผู้ใช้มีสิทธิ์ลบ Report และอยู่ที่หน้า Dashboard',
    testSteps: '1. คลิกปุ่ม Delete ใน Report Info Bar\n2. ยืนยันการลบใน dialog\n3. คลิกปุ่ม "ยืนยัน"',
    expectedResults: 'ลบ Report สำเร็จ และ Dashboard redirect ไปยัง Report อื่น (ถ้ามี)',
    testData: 'ลบ Report ปี 2023',
    status: 'Not Tested'
  },
  {
    module: 'Dashboard',
    testCaseId: 'TC-DASHBOARD-009',
    testCaseName: 'สลับ Business Unit',
    priority: 'Medium',
    preconditions: 'ผู้ใช้มีหลาย Business Units และอยู่ที่หน้า Dashboard',
    testSteps: '1. คลิกที่ Business Unit Selector ใน App Header\n2. เลือก Business Unit อื่น\n3. สังเกตการเปลี่ยนแปลง',
    expectedResults: 'Dashboard อัพเดทข้อมูลตาม Business Unit ที่เลือก และแสดง Reports ของ Business Unit ใหม่',
    testData: 'เลือก Business Unit: Factory B แทน Factory A',
    status: 'Not Tested'
  },
  {
    module: 'Dashboard',
    testCaseId: 'TC-DASHBOARD-010',
    testCaseName: 'ตรวจสอบการแสดงข้อมูลเมื่อไม่มี Base Year',
    priority: 'Medium',
    preconditions: 'ผู้ใช้อยู่ที่หน้า Dashboard และ Report ไม่มี Base Year',
    testSteps: '1. สังเกต KPI Cards และ Charts',
    expectedResults: 'แสดงข้อมูล Current Year เท่านั้น ไม่แสดงเปอร์เซ็นต์การเปลี่ยนแปลง และ Charts แสดงเฉพาะ Current Year',
    testData: 'Report ที่ไม่มี baseline_report_id',
    status: 'Not Tested'
  }
];

// Test cases for Approval System module - Focused on main functions
const approvalSystemTestCases = [
  {
    module: 'Approval System',
    testCaseId: 'TC-APPROVAL-001',
    testCaseName: 'Consultant: อนุมัติข้อมูลการปล่อยก๊าซเรือนกระจก',
    priority: 'High',
    preconditions: 'ผู้ใช้เป็น Consultant และมีข้อมูลที่ต้องการอนุมัติ (status: submitted)',
    testSteps: '1. ไปที่หน้า Annual Emissions\n2. คลิกปุ่ม "อนุมัติ" ของข้อมูลที่ต้องการอนุมัติ\n3. เลือกสถานะ "อนุมัติ"\n4. กรอก comments (ถ้าต้องการ)\n5. เลือก priority\n6. คลิกปุ่ม "บันทึก"',
    expectedResults: 'อนุมัติสำเร็จ สถานะของข้อมูลเปลี่ยนเป็น "approved" และแสดงในตาราง',
    testData: 'Status: approve, Comments: "ข้อมูลถูกต้องครบถ้วน", Priority: medium',
    status: 'Not Tested'
  },
  {
    module: 'Approval System',
    testCaseId: 'TC-APPROVAL-002',
    testCaseName: 'Consultant: ขอให้แก้ไขข้อมูล (Request Changes)',
    priority: 'High',
    preconditions: 'ผู้ใช้เป็น Consultant และมีข้อมูลที่ต้องการขอให้แก้ไข',
    testSteps: '1. ไปที่หน้า Annual Emissions\n2. คลิกปุ่ม "อนุมัติ" ของข้อมูลที่ต้องการขอให้แก้ไข\n3. เลือกสถานะ "ขอให้แก้ไข"\n4. กรอก comments อธิบายสิ่งที่ต้องแก้ไข\n5. เลือก priority\n6. คลิกปุ่ม "บันทึก"',
    expectedResults: 'บันทึกสำเร็จ สถานะของข้อมูลเปลี่ยนเป็น "changes_requested" และแสดง comments',
    testData: 'Status: request_changes, Comments: "กรุณาตรวจสอบข้อมูลรายเดือน", Priority: high',
    status: 'Not Tested'
  },
  {
    module: 'Approval System',
    testCaseId: 'TC-APPROVAL-003',
    testCaseName: 'Consultant: ปฏิเสธข้อมูล (Reject)',
    priority: 'High',
    preconditions: 'ผู้ใช้เป็น Consultant และมีข้อมูลที่ต้องการปฏิเสธ',
    testSteps: '1. ไปที่หน้า Annual Emissions\n2. คลิกปุ่ม "อนุมัติ" ของข้อมูลที่ต้องการปฏิเสธ\n3. เลือกสถานะ "ปฏิเสธ"\n4. กรอก comments อธิบายเหตุผล\n5. เลือก priority\n6. คลิกปุ่ม "บันทึก"',
    expectedResults: 'ปฏิเสธสำเร็จ สถานะของข้อมูลเปลี่ยนเป็น "rejected" และแสดง comments',
    testData: 'Status: reject, Comments: "ข้อมูลไม่ถูกต้อง", Priority: high',
    status: 'Not Tested'
  },
  {
    module: 'Approval System',
    testCaseId: 'TC-APPROVAL-004',
    testCaseName: 'ดู Approval History',
    priority: 'Medium',
    preconditions: 'ผู้ใช้เป็น Consultant และมีข้อมูลที่มี approval history',
    testSteps: '1. ไปที่หน้า Annual Emissions\n2. คลิกปุ่ม "อนุมัติ" ของข้อมูลที่มี approval history\n3. คลิกดู "Approval History" ใน modal',
    expectedResults: 'แสดงประวัติการอนุมัติทั้งหมด รวมถึงผู้อนุมัติ สถานะ comments และวันที่',
    testData: 'N/A',
    status: 'Not Tested'
  },
  {
    module: 'Approval System',
    testCaseId: 'TC-APPROVAL-005',
    testCaseName: 'ตรวจสอบ validation เมื่อไม่กรอก comments',
    priority: 'High',
    preconditions: 'ผู้ใช้เป็น Consultant และเปิด approval modal',
    testSteps: '1. เลือกสถานะ (approve/request_changes/reject)\n2. ปล่อยช่อง comments ว่าง\n3. คลิกปุ่ม "บันทึก"',
    expectedResults: 'แสดง validation message "กรุณากรอกความคิดเห็น"',
    testData: 'Status: approve, Comments: (ว่าง)',
    status: 'Not Tested'
  },
  {
    module: 'Approval System',
    testCaseId: 'TC-APPROVAL-006',
    testCaseName: 'แก้ไข Approval ที่มีอยู่แล้ว',
    priority: 'Medium',
    preconditions: 'ผู้ใช้เป็น Consultant และมีข้อมูลที่มี approval อยู่แล้ว',
    testSteps: '1. ไปที่หน้า Annual Emissions\n2. คลิกปุ่ม "อนุมัติ" ของข้อมูลที่มี approval อยู่แล้ว\n3. แก้ไขสถานะหรือ comments\n4. คลิกปุ่ม "บันทึก"',
    expectedResults: 'อัพเดท approval สำเร็จ และสถานะของข้อมูลถูกอัพเดทตามการเปลี่ยนแปลง',
    testData: 'เปลี่ยนจาก approve เป็น request_changes',
    status: 'Not Tested'
  },
  {
    module: 'Approval System',
    testCaseId: 'TC-APPROVAL-007',
    testCaseName: 'ตรวจสอบสิทธิ์การอนุมัติ (เฉพาะ Consultant)',
    priority: 'High',
    preconditions: 'ผู้ใช้ไม่ใช่ Consultant (เช่น User, Factory Admin)',
    testSteps: '1. ไปที่หน้า Annual Emissions\n2. สังเกตปุ่ม "อนุมัติ"',
    expectedResults: 'ไม่แสดงปุ่ม "อนุมัติ" หรือปุ่มถูก disable สำหรับผู้ใช้ที่ไม่ใช่ Consultant',
    testData: 'User role: User หรือ Factory Admin',
    status: 'Not Tested'
  },
  {
    module: 'Approval System',
    testCaseId: 'TC-APPROVAL-008',
    testCaseName: 'เลือก Priority Level (Low, Medium, High)',
    priority: 'Medium',
    preconditions: 'ผู้ใช้เป็น Consultant และเปิด approval modal',
    testSteps: '1. เลือกสถานะและกรอก comments\n2. เลือก Priority จาก dropdown\n3. คลิกปุ่ม "บันทึก"',
    expectedResults: 'บันทึก approval พร้อม priority ที่เลือก และแสดงใน approval history',
    testData: 'Priority: high',
    status: 'Not Tested'
  },
  {
    module: 'Approval System',
    testCaseId: 'TC-APPROVAL-009',
    testCaseName: 'ตรวจสอบการแสดงสถานะในตารางหลังจากอนุมัติ',
    priority: 'High',
    preconditions: 'ผู้ใช้เป็น Consultant และได้อนุมัติข้อมูลแล้ว',
    testSteps: '1. อนุมัติข้อมูล\n2. กลับไปดูตาราง Annual Emissions\n3. สังเกตสถานะของข้อมูล',
    expectedResults: 'ตารางแสดงสถานะ "approved", "changes_requested", หรือ "rejected" ตามการอนุมัติ',
    testData: 'N/A',
    status: 'Not Tested'
  },
  {
    module: 'Approval System',
    testCaseId: 'TC-APPROVAL-010',
    testCaseName: 'Workflow: แก้ไขข้อมูลหลังจาก Request Changes',
    priority: 'Medium',
    preconditions: 'มีข้อมูลที่ถูกขอให้แก้ไข (status: changes_requested)',
    testSteps: '1. ไปที่หน้า Annual Emissions\n2. แก้ไขข้อมูลที่ถูกขอให้แก้ไข\n3. Submit ข้อมูลอีกครั้ง\n4. Consultant อนุมัติข้อมูล',
    expectedResults: 'ข้อมูลสามารถถูกแก้ไขและ submit ใหม่ได้ และสามารถอนุมัติได้หลังจากแก้ไข',
    testData: 'แก้ไข Monthly Data และ submit ใหม่',
    status: 'Not Tested'
  }
];

// Test cases for Chat System module - Focused on main functions
const chatSystemTestCases = [
  {
    module: 'Chat System',
    testCaseId: 'TC-CHAT-001',
    testCaseName: 'เปิด Overall Chat และส่งข้อความ',
    priority: 'High',
    preconditions: 'ผู้ใช้เข้าสู่ระบบและมี Report ที่เลือกอยู่',
    testSteps: '1. คลิกปุ่ม Overall Chat (FAB ที่มุมล่างขวา)\n2. กรอกข้อความในช่องส่งข้อความ\n3. คลิกปุ่มส่งหรือกด Enter',
    expectedResults: 'ส่งข้อความสำเร็จ ข้อความแสดงใน chat panel และผู้ใช้รายอื่นเห็นข้อความ',
    testData: 'Message: "สวัสดีครับ ทุกคน"',
    status: 'Not Tested'
  },
  {
    module: 'Chat System',
    testCaseId: 'TC-CHAT-002',
    testCaseName: 'เปิด Record-Level Chat และส่งข้อความ',
    priority: 'High',
    preconditions: 'ผู้ใช้อยู่ที่หน้า Annual Emissions และมีข้อมูลการปล่อยก๊าซ',
    testSteps: '1. คลิกปุ่ม Chat icon ที่แถวของข้อมูลการปล่อยก๊าซ\n2. กรอกข้อความในช่องส่งข้อความ\n3. คลิกปุ่มส่ง',
    expectedResults: 'ส่งข้อความสำเร็จ ข้อความแสดงใน chat panel และเชื่อมโยงกับข้อมูลการปล่อยก๊าซนั้น',
    testData: 'Message: "กรุณาตรวจสอบข้อมูลนี้"',
    status: 'Not Tested'
  },
  {
    module: 'Chat System',
    testCaseId: 'TC-CHAT-003',
    testCaseName: 'อัพโหลดไฟล์แนบใน Chat',
    priority: 'High',
    preconditions: 'ผู้ใช้เปิด chat panel',
    testSteps: '1. คลิกปุ่มอัพโหลดไฟล์ใน chat panel\n2. เลือกไฟล์ (PDF, Image, etc.)\n3. รอให้อัพโหลดเสร็จ\n4. คลิกปุ่มส่ง',
    expectedResults: 'อัพโหลดไฟล์สำเร็จ แสดงไฟล์แนบในข้อความและสามารถดาวน์โหลดได้',
    testData: 'ไฟล์: document.pdf หรือ image.jpg',
    status: 'Not Tested'
  },
  {
    module: 'Chat System',
    testCaseId: 'TC-CHAT-004',
    testCaseName: 'สร้าง Task จาก Chat',
    priority: 'Medium',
    preconditions: 'ผู้ใช้เปิด chat panel',
    testSteps: '1. คลิกปุ่ม Task Manager ใน chat panel\n2. คลิก "สร้าง Task"\n3. กรอกข้อมูล Task (title, description, assign to, due date)\n4. คลิกปุ่ม "บันทึก"',
    expectedResults: 'สร้าง Task สำเร็จ Task แสดงใน Task Manager และผู้ที่ถูก assign จะเห็น Task',
    testData: 'Title: "ตรวจสอบข้อมูล", Assign to: User A, Due date: 2024-12-31',
    status: 'Not Tested'
  },
  {
    module: 'Chat System',
    testCaseId: 'TC-CHAT-005',
    testCaseName: 'ดู Participants ใน Chat',
    priority: 'Medium',
    preconditions: 'ผู้ใช้เปิด chat panel',
    testSteps: '1. คลิกปุ่ม Participants icon ใน chat panel\n2. สังเกตรายชื่อผู้เข้าร่วม',
    expectedResults: 'แสดงรายชื่อผู้เข้าร่วมทั้งหมดใน conversation พร้อม avatar และชื่อ',
    testData: 'N/A',
    status: 'Not Tested'
  },
  {
    module: 'Chat System',
    testCaseId: 'TC-CHAT-006',
    testCaseName: 'ใช้ Emoji Picker',
    priority: 'Low',
    preconditions: 'ผู้ใช้เปิด chat panel',
    testSteps: '1. คลิกปุ่ม Emoji icon\n2. เลือก emoji จาก picker\n3. ส่งข้อความ',
    expectedResults: 'Emoji ถูกเพิ่มในข้อความและแสดงใน chat เมื่อส่ง',
    testData: 'Emoji: 😊 หรือ 👍',
    status: 'Not Tested'
  },
  {
    module: 'Chat System',
    testCaseId: 'TC-CHAT-007',
    testCaseName: 'ดู Unread Message Count',
    priority: 'Medium',
    preconditions: 'ผู้ใช้มีข้อความที่ยังไม่ได้อ่าน',
    testSteps: '1. สังเกต badge บนปุ่ม Overall Chat หรือ Record Chat\n2. เปิด chat panel',
    expectedResults: 'แสดงจำนวนข้อความที่ยังไม่ได้อ่านบน badge และ badge หายไปเมื่ออ่านข้อความแล้ว',
    testData: 'N/A',
    status: 'Not Tested'
  },
  {
    module: 'Chat System',
    testCaseId: 'TC-CHAT-008',
    testCaseName: 'สลับระหว่าง Conversations',
    priority: 'Medium',
    preconditions: 'ผู้ใช้มีหลาย conversations',
    testSteps: '1. เปิด chat panel\n2. เลือก conversation อื่นจากรายการ\n3. สังเกตการเปลี่ยนแปลง',
    expectedResults: 'Chat panel แสดงข้อความของ conversation ที่เลือกและสามารถสลับได้',
    testData: 'สลับจาก Overall Chat ไป Record Chat',
    status: 'Not Tested'
  },
  {
    module: 'Chat System',
    testCaseId: 'TC-CHAT-009',
    testCaseName: 'ตรวจสอบการแสดงข้อความตามลำดับเวลา',
    priority: 'High',
    preconditions: 'ผู้ใช้เปิด chat panel',
    testSteps: '1. ส่งข้อความหลายข้อความ\n2. สังเกตลำดับการแสดงผล',
    expectedResults: 'ข้อความแสดงตามลำดับเวลา (เก่าที่สุดอยู่ด้านบน ใหม่ที่สุดอยู่ด้านล่าง)',
    testData: 'N/A',
    status: 'Not Tested'
  },
  {
    module: 'Chat System',
    testCaseId: 'TC-CHAT-010',
    testCaseName: 'ปิด Chat Panel',
    priority: 'Low',
    preconditions: 'ผู้ใช้เปิด chat panel',
    testSteps: '1. คลิกปุ่ม X หรือคลิกนอก chat panel',
    expectedResults: 'Chat panel ปิดและกลับไปหน้าเดิม',
    testData: 'N/A',
    status: 'Not Tested'
  }
];

// Test cases for Organization Management module - Focused on main functions
const organizationManagementTestCases = [
  {
    module: 'Organization Management',
    testCaseId: 'TC-ORG-001',
    testCaseName: 'System Admin: สร้างองค์กรใหม่',
    priority: 'High',
    preconditions: 'ผู้ใช้เป็น System Admin และเข้าสู่ระบบแล้ว',
    testSteps: '1. ไปที่หน้า Organization Management (/admin-console/organizations)\n2. คลิกปุ่ม "สร้างองค์กรใหม่"\n3. กรอกชื่อองค์กร (required)\n4. กรอกรหัสและคำอธิบาย (optional)\n5. คลิกปุ่ม "บันทึก"',
    expectedResults: 'สร้างองค์กรสำเร็จ แสดง success message องค์กรใหม่ปรากฏในตาราง และสร้าง Default Business Unit อัตโนมัติ',
    testData: 'Name: "บริษัท ABC จำกัด", Code: "ABC", Description: "บริษัทผลิตภัณฑ์"',
    status: 'Not Tested'
  },
  {
    module: 'Organization Management',
    testCaseId: 'TC-ORG-002',
    testCaseName: 'แก้ไขข้อมูลองค์กร',
    priority: 'High',
    preconditions: 'ผู้ใช้เป็น System Admin และมีองค์กรในระบบ',
    testSteps: '1. ไปที่หน้า Organization Management\n2. คลิกปุ่ม Edit ขององค์กรที่ต้องการแก้ไข\n3. แก้ไขข้อมูล (name, code, description)\n4. คลิกปุ่ม "บันทึก"',
    expectedResults: 'แก้ไขข้อมูลสำเร็จ แสดง success message และข้อมูลในตารางถูกอัพเดท',
    testData: 'แก้ไข Name จาก "บริษัท ABC" เป็น "บริษัท ABC จำกัด (มหาชน)"',
    status: 'Not Tested'
  },
  {
    module: 'Organization Management',
    testCaseId: 'TC-ORG-003',
    testCaseName: 'ลบองค์กร',
    priority: 'High',
    preconditions: 'ผู้ใช้เป็น System Admin และมีองค์กรในระบบ',
    testSteps: '1. ไปที่หน้า Organization Management\n2. คลิกปุ่ม Delete ขององค์กรที่ต้องการลบ\n3. ยืนยันการลบใน dialog\n4. คลิกปุ่ม "ยืนยัน"',
    expectedResults: 'ลบองค์กรสำเร็จ แสดง success message และองค์กรถูกลบออกจากตาราง',
    testData: 'ลบองค์กร "บริษัท ABC จำกัด"',
    status: 'Not Tested'
  },
  {
    module: 'Organization Management',
    testCaseId: 'TC-ORG-004',
    testCaseName: 'ดูรายการองค์กรพร้อม Statistics',
    priority: 'High',
    preconditions: 'ผู้ใช้เป็น System Admin และเข้าสู่ระบบแล้ว',
    testSteps: '1. ไปที่หน้า Organization Management\n2. สังเกตตารางองค์กร',
    expectedResults: 'แสดงตารางองค์กรพร้อมข้อมูล: ชื่อ, รหัส, คำอธิบาย, จำนวน Business Units, จำนวน Users, จำนวน Reports, วันที่สร้าง',
    testData: 'N/A',
    status: 'Not Tested'
  },
  {
    module: 'Organization Management',
    testCaseId: 'TC-ORG-005',
    testCaseName: 'ตรวจสอบ validation เมื่อไม่กรอกชื่อองค์กร',
    priority: 'High',
    preconditions: 'ผู้ใช้เป็น System Admin และเปิด modal สร้างองค์กร',
    testSteps: '1. ปล่อยช่องชื่อองค์กรว่าง\n2. กรอกข้อมูลอื่นๆ (ถ้ามี)\n3. คลิกปุ่ม "บันทึก"',
    expectedResults: 'แสดง validation message "กรุณากรอกชื่อองค์กร"',
    testData: 'Name: (ว่าง), Code: "ABC"',
    status: 'Not Tested'
  },
  {
    module: 'Organization Management',
    testCaseId: 'TC-ORG-006',
    testCaseName: 'ตรวจสอบสิทธิ์การเข้าถึง (เฉพาะ System Admin)',
    priority: 'High',
    preconditions: 'ผู้ใช้ไม่ใช่ System Admin (เช่น Factory Admin, User)',
    testSteps: '1. พยายามเข้าไปที่หน้า Organization Management (/admin-console/organizations)',
    expectedResults: 'ถูก redirect ไปหน้าอื่นหรือแสดงข้อความว่าไม่มีสิทธิ์เข้าถึง',
    testData: 'User role: Factory Admin หรือ User',
    status: 'Not Tested'
  },
  {
    module: 'Organization Management',
    testCaseId: 'TC-ORG-007',
    testCaseName: 'สร้างองค์กรโดยไม่กรอก Code และ Description',
    priority: 'Medium',
    preconditions: 'ผู้ใช้เป็น System Admin และเปิด modal สร้างองค์กร',
    testSteps: '1. กรอกเฉพาะชื่อองค์กร\n2. ปล่อย Code และ Description ว่าง\n3. คลิกปุ่ม "บันทึก"',
    expectedResults: 'สร้างองค์กรสำเร็จได้โดยไม่ต้องกรอก Code และ Description',
    testData: 'Name: "บริษัท XYZ จำกัด", Code: (ว่าง), Description: (ว่าง)',
    status: 'Not Tested'
  },
  {
    module: 'Organization Management',
    testCaseId: 'TC-ORG-008',
    testCaseName: 'ตรวจสอบการสร้าง Default Business Unit อัตโนมัติ',
    priority: 'Medium',
    preconditions: 'ผู้ใช้เป็น System Admin และสร้างองค์กรใหม่',
    testSteps: '1. สร้างองค์กรใหม่\n2. ไปที่หน้า Business Unit Management\n3. ตรวจสอบ Business Units',
    expectedResults: 'มี Default Business Unit ที่ถูกสร้างอัตโนมัติพร้อมชื่อ "[ชื่อองค์กร] - Main" และ is_main_factory = true',
    testData: 'Organization: "บริษัท ABC จำกัด" → BU: "บริษัท ABC จำกัด - Main"',
    status: 'Not Tested'
  }
];

// Test cases for Business Unit Management module - Focused on main functions
const businessUnitManagementTestCases = [
  {
    module: 'Business Unit Management',
    testCaseId: 'TC-BU-001',
    testCaseName: 'สร้าง Business Unit ใหม่',
    priority: 'High',
    preconditions: 'ผู้ใช้มีสิทธิ์สร้าง Business Unit และมีองค์กรในระบบ',
    testSteps: '1. ไปที่หน้า Business Unit Management (/[organizationId]/admin/business-units)\n2. คลิกปุ่ม "สร้าง Business Unit ใหม่"\n3. เลือกองค์กร\n4. กรอกชื่อ Business Unit (required)\n5. กรอกรหัสและคำอธิบาย (optional)\n6. ตั้งค่า is_active (default: true)\n7. คลิกปุ่ม "บันทึก"',
    expectedResults: 'สร้าง Business Unit สำเร็จ แสดง success message และ Business Unit ใหม่ปรากฏในตาราง',
    testData: 'Organization: "บริษัท ABC", Name: "Factory A", Code: "FA", Description: "โรงงาน A", is_active: true',
    status: 'Not Tested'
  },
  {
    module: 'Business Unit Management',
    testCaseId: 'TC-BU-002',
    testCaseName: 'แก้ไขข้อมูล Business Unit',
    priority: 'High',
    preconditions: 'ผู้ใช้มีสิทธิ์แก้ไข Business Unit และมี Business Unit ในระบบ',
    testSteps: '1. ไปที่หน้า Business Unit Management\n2. คลิกปุ่ม Edit ของ Business Unit ที่ต้องการแก้ไข\n3. แก้ไขข้อมูล (name, code, description, is_active)\n4. คลิกปุ่ม "บันทึก"',
    expectedResults: 'แก้ไขข้อมูลสำเร็จ แสดง success message และข้อมูลในตารางถูกอัพเดท',
    testData: 'แก้ไข Name จาก "Factory A" เป็น "Factory A - Updated"',
    status: 'Not Tested'
  },
  {
    module: 'Business Unit Management',
    testCaseId: 'TC-BU-003',
    testCaseName: 'ลบ Business Unit',
    priority: 'High',
    preconditions: 'ผู้ใช้มีสิทธิ์ลบ Business Unit และมี Business Unit ในระบบ',
    testSteps: '1. ไปที่หน้า Business Unit Management\n2. คลิกปุ่ม Delete ของ Business Unit ที่ต้องการลบ\n3. ยืนยันการลบใน dialog\n4. คลิกปุ่ม "ยืนยัน"',
    expectedResults: 'ลบ Business Unit สำเร็จ แสดง success message และ Business Unit ถูกลบออกจากตาราง',
    testData: 'ลบ Business Unit "Factory A"',
    status: 'Not Tested'
  },
  {
    module: 'Business Unit Management',
    testCaseId: 'TC-BU-004',
    testCaseName: 'จัดการ Staff ใน Business Unit',
    priority: 'High',
    preconditions: 'ผู้ใช้มีสิทธิ์จัดการ Business Unit และมี Business Unit ในระบบ',
    testSteps: '1. ไปที่หน้า Business Unit Management\n2. คลิกปุ่ม "จัดการทีมงาน" (People icon) ของ Business Unit\n3. เพิ่มหรือลบผู้ใช้จาก Business Unit\n4. บันทึกการเปลี่ยนแปลง',
    expectedResults: 'จัดการ Staff สำเร็จ และจำนวน Staff ในตารางถูกอัพเดท',
    testData: 'เพิ่ม User A และ User B เข้า Business Unit',
    status: 'Not Tested'
  },
  {
    module: 'Business Unit Management',
    testCaseId: 'TC-BU-005',
    testCaseName: 'ตรวจสอบ validation เมื่อไม่กรอกชื่อ Business Unit',
    priority: 'High',
    preconditions: 'ผู้ใช้เปิด modal สร้าง Business Unit',
    testSteps: '1. เลือกองค์กร\n2. ปล่อยช่องชื่อ Business Unit ว่าง\n3. คลิกปุ่ม "บันทึก"',
    expectedResults: 'แสดง validation message "กรุณากรอกชื่อ Business Unit"',
    testData: 'Organization: "บริษัท ABC", Name: (ว่าง)',
    status: 'Not Tested'
  },
  {
    module: 'Business Unit Management',
    testCaseId: 'TC-BU-006',
    testCaseName: 'ตรวจสอบ validation เมื่อไม่เลือกองค์กร',
    priority: 'High',
    preconditions: 'ผู้ใช้เปิด modal สร้าง Business Unit',
    testSteps: '1. ปล่อยช่ององค์กรว่าง\n2. กรอกชื่อ Business Unit\n3. คลิกปุ่ม "บันทึก"',
    expectedResults: 'แสดง validation message "กรุณาเลือกองค์กร"',
    testData: 'Organization: (ว่าง), Name: "Factory A"',
    status: 'Not Tested'
  },
  {
    module: 'Business Unit Management',
    testCaseId: 'TC-BU-007',
    testCaseName: 'ตั้งค่า is_active เป็น false',
    priority: 'Medium',
    preconditions: 'ผู้ใช้เปิด modal แก้ไข Business Unit',
    testSteps: '1. เปิด modal แก้ไข Business Unit\n2. เปลี่ยน is_active จาก true เป็น false\n3. คลิกปุ่ม "บันทึก"',
    expectedResults: 'บันทึกสำเร็จ และ Business Unit แสดงสถานะ inactive ในตาราง',
    testData: 'is_active: false',
    status: 'Not Tested'
  },
  {
    module: 'Business Unit Management',
    testCaseId: 'TC-BU-008',
    testCaseName: 'ดูรายการ Business Units พร้อมข้อมูล',
    priority: 'High',
    preconditions: 'ผู้ใช้เข้าสู่ระบบและมี Business Units ในระบบ',
    testSteps: '1. ไปที่หน้า Business Unit Management\n2. สังเกตตาราง Business Units',
    expectedResults: 'แสดงตาราง Business Units พร้อมข้อมูล: ชื่อ, รหัส, องค์กร, จำนวนทีมงาน, สถานะ (active/inactive)',
    testData: 'N/A',
    status: 'Not Tested'
  },
  {
    module: 'Business Unit Management',
    testCaseId: 'TC-BU-009',
    testCaseName: 'ตรวจสอบสิทธิ์การเข้าถึง (CRUD permissions)',
    priority: 'High',
    preconditions: 'ผู้ใช้ไม่มีสิทธิ์ CRUD (เช่น User role)',
    testSteps: '1. ไปที่หน้า Business Unit Management\n2. สังเกตปุ่ม "สร้าง Business Unit ใหม่"',
    expectedResults: 'ไม่แสดงปุ่ม "สร้าง Business Unit ใหม่" หรือปุ่มถูก disable',
    testData: 'User role: User (ไม่มีสิทธิ์ CRUD)',
    status: 'Not Tested'
  },
  {
    module: 'Business Unit Management',
    testCaseId: 'TC-BU-010',
    testCaseName: 'สร้าง Business Unit โดยไม่กรอก Code และ Description',
    priority: 'Medium',
    preconditions: 'ผู้ใช้เปิด modal สร้าง Business Unit',
    testSteps: '1. เลือกองค์กร\n2. กรอกเฉพาะชื่อ Business Unit\n3. ปล่อย Code และ Description ว่าง\n4. คลิกปุ่ม "บันทึก"',
    expectedResults: 'สร้าง Business Unit สำเร็จได้โดยไม่ต้องกรอก Code และ Description',
    testData: 'Organization: "บริษัท ABC", Name: "Factory B", Code: (ว่าง), Description: (ว่าง)',
    status: 'Not Tested'
  }
];

// Main function - Generate single Excel file with multiple sheets
function generateTestCases() {
  // Create test-cases directory if it doesn't exist
  const testCasesDir = path.join(__dirname, '..', 'test-cases');
  if (!fs.existsSync(testCasesDir)) {
    fs.mkdirSync(testCasesDir, { recursive: true });
  }
  
  // Create a new workbook
  const workbook = XLSX.utils.book_new();
  
  // Add sheets for each module
  const authWorksheet = createWorksheet(authTestCases);
  XLSX.utils.book_append_sheet(workbook, authWorksheet, 'Authentication & Login');
  
  const userWorksheet = createWorksheet(userManagementTestCases);
  XLSX.utils.book_append_sheet(workbook, userWorksheet, 'User Management');
  
  const emissionsWorksheet = createWorksheet(annualEmissionsTestCases);
  XLSX.utils.book_append_sheet(workbook, emissionsWorksheet, 'Annual Emissions');
  
  const dashboardWorksheet = createWorksheet(dashboardTestCases);
  XLSX.utils.book_append_sheet(workbook, dashboardWorksheet, 'Dashboard');
  
  const approvalWorksheet = createWorksheet(approvalSystemTestCases);
  XLSX.utils.book_append_sheet(workbook, approvalWorksheet, 'Approval System');
  
  const chatWorksheet = createWorksheet(chatSystemTestCases);
  XLSX.utils.book_append_sheet(workbook, chatWorksheet, 'Chat System');
  
  const orgWorksheet = createWorksheet(organizationManagementTestCases);
  XLSX.utils.book_append_sheet(workbook, orgWorksheet, 'Organization Management');
  
  const buWorksheet = createWorksheet(businessUnitManagementTestCases);
  XLSX.utils.book_append_sheet(workbook, buWorksheet, 'Business Unit Management');
  
  // Write to single file
  const filePath = path.join(testCasesDir, 'QA_Test_Cases_All_Modules.xlsx');
  XLSX.writeFile(workbook, filePath);
  
  console.log(`✅ All test cases generated successfully!`);
  console.log(`📄 File: ${filePath}`);
  console.log(`\n📊 Test Cases Summary:`);
  console.log(`   - Authentication & Login: ${authTestCases.length} test cases`);
  console.log(`   - User Management: ${userManagementTestCases.length} test cases`);
  console.log(`   - Annual Emissions: ${annualEmissionsTestCases.length} test cases`);
  console.log(`   - Dashboard: ${dashboardTestCases.length} test cases`);
  console.log(`   - Approval System: ${approvalSystemTestCases.length} test cases`);
  console.log(`   - Chat System: ${chatSystemTestCases.length} test cases`);
  console.log(`   - Organization Management: ${organizationManagementTestCases.length} test cases`);
  console.log(`   - Business Unit Management: ${businessUnitManagementTestCases.length} test cases`);
  const total = authTestCases.length + userManagementTestCases.length + annualEmissionsTestCases.length + dashboardTestCases.length + approvalSystemTestCases.length + chatSystemTestCases.length + organizationManagementTestCases.length + businessUnitManagementTestCases.length;
  console.log(`   - Total: ${total} test cases`);
}

// Helper function to create worksheet from test cases
function createWorksheet(testCases) {
  const worksheetData = [
    // Header row
    [
      'Module',
      'Test Case ID',
      'Test Case Name',
      'Priority',
      'Preconditions',
      'Test Steps',
      'Expected Results',
      'Test Data',
      'Status'
    ],
    // Data rows
    ...testCases.map(tc => [
      tc.module,
      tc.testCaseId,
      tc.testCaseName,
      tc.priority,
      tc.preconditions,
      typeof tc.testSteps === 'string' ? tc.testSteps : tc.testSteps.join('\n'),
      typeof tc.expectedResults === 'string' ? tc.expectedResults : tc.expectedResults.join('\n'),
      tc.testData,
      tc.status
    ])
  ];
  
  const worksheet = XLSX.utils.aoa_to_sheet(worksheetData);
  
  // Set column widths
  worksheet['!cols'] = [
    { wch: 25 }, // Module
    { wch: 15 }, // Test Case ID
    { wch: 45 }, // Test Case Name
    { wch: 10 }, // Priority
    { wch: 35 }, // Preconditions
    { wch: 60 }, // Test Steps
    { wch: 60 }, // Expected Results
    { wch: 35 }, // Test Data
    { wch: 12 }  // Status
  ];
  
  return worksheet;
}

// Run the script
generateTestCases();

