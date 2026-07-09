*** Keywords ***
Verify signin success popup is displayed
    [Documentation]    ตรวจสอบว่า Login สำเร็จโดยรอให้ signin success popup แสดงบนหน้าจอ
    Browser.Wait for elements state    selector=css=div:text-is("Signed in successfully"):visible    state=visible    timeout=15s

Click view all button
    [Documentation]    คลิกปุ่ม View All เพื่อดูสินค้าทั้งหมดในหน้าผลลัพธ์การค้นหา
    Browser.Click    selector=id=home-featured-viewall
