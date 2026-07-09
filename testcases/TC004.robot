*** Settings ***
Resource         ../resources/import.robot

Suite Setup      login_page.Open web and navigate to login page
Suite Teardown   Browser.Close browser

*** Test Cases ***
TC004
    [Tags]    test_id:TC001
    login_page.Fill email    user@doppio.com
    login_page.Fill password    Password123
    login_page.Click sign in
    home_page.Verify signin success popup is displayed
    home_page.Click view all button
    filter_page.Search product by name    Sunglasses
    filter_page.Click apply button
    product_page.Verify product is displayed as expected    Sunglasses
    BuiltIn.sleep    1s
