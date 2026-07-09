*** Keywords ***
Open web and navigate to login page
    [Documentation]    เปิด Chromium Browser แบบ headless=False แล้วนำทางไปยัง URL ของ Doppee Shop
    Browser.New browser    browser=chromium    headless=False
    Browser.New context  tracing=true
    Browser.New page
    Browser.Go to    url=${BASE_URL}
    Browser.Wait for elements state    selector=css=input[data-testid="signin-email"]    state=visible    timeout=30s

Fill email
    [Documentation]    กรอก email ในช่อง input ของหน้า Login
    [Arguments]    ${email}
    Browser.Fill text    selector=css=input[data-testid="signin-email"]    txt=${email}

Fill password
    [Documentation]    กรอก password ในช่อง input ของหน้า Login
    [Arguments]    ${password}
    Browser.Fill text    selector=css=input[data-testid="signin-password"]    txt=${password}

Click sign in
    [Documentation]    กดปุ่ม Sign In เพื่อ Submit ฟอร์ม Login
    Browser.Click    selector=css=button[type="submit"]:text-is("Sign in")
