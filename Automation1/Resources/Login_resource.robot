*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}       chrome
${LOGIN URL}     https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F

*** Keywords ***
Open My Browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.3s     # Optional for slower actions if needed

Close Browser
    Close All Browsers

Open Login Page
    Go To    ${LOGIN URL}

Input Username
    [Arguments]    ${username}
    Input Text    id:Email    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id:Password    ${password}

Click Login Button
    Click Button    xpath=//button[@class="button-1 login-button"]

Click Logout Link
    Click Link    Logout

Error message should be visible
    Wait Until Page Contains    Login was unsuccessful.    timeout=5s

Dashboard page should visible
    Wait Until Page Contains    Dashboard    timeout=5s
