# QA Test Cases Documentation

## Overview
This directory contains comprehensive test cases for the CFO Beta application, organized by modules. Each test case is written in Thai language and includes detailed test steps and expected results.

## File Structure

- `QA_Test_Cases_All_Modules.xlsx` - **Main file** containing all test cases organized by sheets:
  - **Authentication & Login** sheet - 6 test cases
  - **User Management** sheet - 10 test cases  
  - **Annual Emissions** sheet - 10 test cases
  - **Dashboard** sheet - 9 test cases
  - **Approval System** sheet - 10 test cases
  - **Chat System** sheet - 10 test cases
  - **Organization Management** sheet - 7 test cases
  - **CFO Dashboard** sheet - 12 test cases
  - Total: 74 test cases

Note: Individual module files are also available for reference but the main file is `QA_Test_Cases_All_Modules.xlsx`

## Test Case Format

Each test case includes the following columns:

1. **Module** - ชื่อโมดูลที่ทดสอบ
2. **Test Case ID** - รหัส test case (รูปแบบ: TC-XXX-XXX)
3. **Test Case Name** - ชื่อ test case เป็นภาษาไทย
4. **Priority** - ระดับความสำคัญ (High/Medium/Low)
5. **Preconditions** - เงื่อนไขเบื้องต้นที่ต้องมีก่อนเริ่มทดสอบ
6. **Test Steps** - ขั้นตอนการทดสอบแบบละเอียด (แต่ละขั้นตอนแยกด้วยบรรทัดใหม่)
7. **Expected Results** - ผลลัพธ์ที่คาดหวัง (แต่ละผลลัพธ์แยกด้วยบรรทัดใหม่)
8. **Test Data** - ข้อมูลที่ใช้ในการทดสอบ
9. **Status** - สถานะการทดสอบ (Pass/Fail/Not Tested)

## How to Use

1. เปิดไฟล์ Excel ที่ต้องการทดสอบ
2. อ่าน test case แต่ละรายการตามลำดับ
3. ทำตามขั้นตอนในคอลัมน์ "Test Steps"
4. ตรวจสอบผลลัพธ์กับ "Expected Results"
5. อัพเดทสถานะในคอลัมน์ "Status" ตามผลการทดสอบ

## Test Case Priority

- **High**: Test cases ที่สำคัญมาก ควรทดสอบก่อนเสมอ
- **Medium**: Test cases ที่สำคัญปานกลาง
- **Low**: Test cases ที่สำคัญน้อย หรือเป็น edge cases

## Notes

- Test cases ทั้งหมดเขียนเป็นภาษาไทยเพื่อความสะดวกในการใช้งาน
- แต่ละ test case ออกแบบมาให้สามารถทดสอบได้อย่างอิสระ
- หากพบ bug หรือปัญหา กรุณาบันทึกไว้ในคอลัมน์ Status หรือสร้าง issue แยก

## Generating New Test Cases

หากต้องการสร้าง test cases สำหรับ module อื่นๆ สามารถรันคำสั่ง:

```bash
node scripts/generate-test-cases.js
```

หรือแก้ไขไฟล์ `scripts/generate-test-cases.js` เพื่อเพิ่ม test cases สำหรับ module อื่นๆ

