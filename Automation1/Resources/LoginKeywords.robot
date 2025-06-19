*** Settings ***
Library     SeleniumLibrary
Variables   ../Resources/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]  ${SiteUrl}     ${Browser}
    Open Browser    ${SiteUrl}  ${Browser}
    Maximize Browser Window

Enter UserName
    [Arguments]  ${username}
    Input Text    ${txt_loginUserName}      ${username}

Enter Password
    [Arguments]  ${password}
    Input Text    ${txt_loginPassword}      ${password}

Click Sign
    Click Button    ${btn_signIn}

Verify Successfull Login
    Title Should Be    Login: Mercury Tours

Close My Browser
    Close All Browsers
