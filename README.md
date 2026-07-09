# Training: Log Investigation with Robot Framework

โปรเจกต์นี้ใช้สำหรับฝึก **การอ่าน Log และการ Debug (Investigation)** ของ Robot Framework
โดยใช้ Browser Library (Playwright) ทดสอบการ Login และค้นหาสินค้าบน Doppee Shop

---

## โครงสร้างโปรเจกต์

```
testcases/                                       # Test Case files
├── TC001_login_and_search_running_shoes.robot
├── TC002_login_and_search_sunglasses.robot
└── TC003_login_and_search_wireless_mouse.robot

keywords/
└── pages/                                       # Page-level Keywords แยกตาม Page
    ├── login_page.robot
    ├── home_page.robot
    └── product_page.robot

resources/
├── import.robot                                 # Central import file (test cases import แค่ไฟล์นี้)
├── settings.robot                               # Global variables เช่น BASE_URL
└── locators/                                    # UI Locator / Element definitions แยกตาม Page
    ├── login_locator.robot
    ├── home_locator.robot
    └── product_locator.robot
```

### หลักการ Import

```
Test Case
  └── imports → resources/import.robot
                  ├── Library: Browser
                  ├── settings.robot             (Global variables)
                  ├── locators/*.robot           (Variables ของ Locators)
                  └── keywords/pages/*.robot     (Page-level Keywords)
```

---

## ก่อนเริ่มใช้งาน

### 1. ติดตั้ง Python dependencies

```bash
pip install -r requirements.txt
```

### 2. ติดตั้ง Playwright Browsers (ต้องทำครั้งแรกเท่านั้น)

```bash
rfbrowser init
```

---

## วิธีรัน Test

รัน test ทั้งหมด:
```bash
robot testcases/
```

รัน test เฉพาะไฟล์:
```bash
robot -i test_id:TC001 testcases/
```

---

## การดู Log และ Investigation

หลังจากรัน Robot Framework จะสร้างไฟล์ output ใน root folder:

| ไฟล์ | คำอธิบาย |
|---|---|
| `log.html` | Log รายละเอียดทุก Step พร้อม timestamp และ error message |
| `report.html` | สรุปผลการทดสอบ (Pass/Fail) |
| `output.xml` | ข้อมูล XML สำหรับ processing ต่อ |

### วิธีอ่าน Log เมื่อ Test ล้มเหลว

1. เปิดไฟล์ `log.html` ในเบราว์เซอร์
2. คลิก Test Case ที่มีสถานะ **FAIL**
3. ดู Keyword ที่ล้มเหลว (มีสัญลักษณ์ ✗ สีแดง)
4. ขยาย Keyword นั้นเพื่อดู error message และ stack trace
5. ตรวจสอบ screenshot (ถ้ามี) เพื่อดูสถานะหน้าจอ ณ เวลาที่ test ล้มเหลว

---

## Library ที่ใช้

| Library | เวอร์ชัน | ใช้สำหรับ |
|---|---|---|
| robotframework | 7.4.2 | Robot Framework core |
| robotframework-browser | 19.14.2 | Browser automation (Playwright) |
| robotframework-debuglibrary | latest | Debug ระหว่าง test (`Pause Execution`) |
| robotframework-robocop | 8.2.3 | Linting / Code quality |
| robotframework-requests | 0.9.7 | API testing (สำรองไว้) |
| robotframework-jsonlibrary | 0.5 | JSON handling (สำรองไว้) |
| pyyaml | 6.0.3 | YAML support |
| pre-commit | 4.5.1 | Git hooks / Code quality |
# assignment-2
