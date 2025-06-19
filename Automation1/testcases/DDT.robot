*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Login_resource.robot


Suite Setup     Set Selenium Speed  1s
Suite Setup     Open My Browser
Suite Teardown  Close Browsers
Test Template   Invalid login

*** Test Cases ***
Right user empty pass       admin@yourstore.com        ${EMPTY}
Right user wrong pass       admin@yourstore.com        xyz
Wrong user right pass       adm@yourstore.com          admin
Wrong user empty pass       adm@yourstore.com          ${EMPTY}
Wrong user wrong pass       adm@yourstore.com          xyz

*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Error Message Should Be Visible
