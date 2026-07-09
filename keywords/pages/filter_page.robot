*** Keywords ***
Search product by name
    [Documentation]    พิมพ์ชื่อสินค้าในช่อง Search filter
    [Arguments]    ${product_name}
    Browser.Fill text    selector=css=input[data-testid="products-search-input"]    txt=${product_name}

Click apply button
    [Documentation]    คลิกปุ่ม Apply เพื่อดูผลลัพธ์การค้นหาตามชื่อสินค้าที่กรอกในช่อง Search filter
    Browser.Click    selector=id=btn-apply-filters  