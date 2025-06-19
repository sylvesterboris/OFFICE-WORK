*** Settings ***
Library    SeleniumLibrary
Suite Setup     Set Selenium Speed  0.7s
Library           SeleniumLibrary
#Test Setup        Maximize Browser Window
Resource        ../Resources/Keywords/Login.resource

*** Test Cases ***
tc1_Verify User Is Able To Login With Correct Credentials
    Open Browser    ${URL}    ${BROWSER}    executable_path=${CHROMEDRIVER}
    Maximize Browser Window
    Input Username
    Input Password
    Click Button    ${login_button}
    #Validatin that user has logged in
    Close Browser

tc2_Verify Error Message For Incorrect Credentials
    Open Browser    ${URL}    ${BROWSER}    executable_path=${CHROMEDRIVER}
    Maximize Browser Window
    Input Incorrect Username
    Input Incorrect Password
    Click Button    ${login_button}
    Verify The Error Message
    Close Browser

tc3_Verify login with empty username
    Open Browser    ${URL}    ${BROWSER}    executable_path=${CHROMEDRIVER}
    Input Password
    Click Button    ${login_button}
    Verify The UserName Message
    Close Browser

tc4_Verify login with empty password
    Open Browser    ${URL}    ${BROWSER}    executable_path=${CHROMEDRIVER}
    Input Username
    Click Button    ${login_button}
    Verify The Password Message
    Close Browser



