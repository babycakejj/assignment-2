*** Keywords ***
Verify product is displayed as expected
    [Arguments]    ${product_name}
    [Documentation]    ตรวจสอบว่า ผลลัพธ์การค้นหาสินค้าแสดงผลตามที่คาดหวัง โดยรอให้ product item แสดงบนหน้าจอ
    ${locator}    String.Replace string    string=css=li div a:text-is("***product***")    search_for=***product***    replace_with=${product_name}
    Browser.Wait for elements state    selector=${locator}    state=visible    timeout=15s
