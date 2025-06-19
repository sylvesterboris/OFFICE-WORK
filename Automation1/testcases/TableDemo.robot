*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TableValidations
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window

    ${rows}=    Get Element Count    xpath=//table[@name='BookTable']/tbody/tr
    ${cols}=    Get Element Count    xpath=//table[@name='BookTable']/tbody/tr[1]/th

    Log To Console    ${rows}
    Log To Console    ${cols}

    ${data}=    Get Text    xpath=//table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console    ${data}
    log
