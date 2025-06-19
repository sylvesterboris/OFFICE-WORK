*** Settings ***
Library           SeleniumLibrary
Variables         ../Locators/locator.py


*** Variables ***
${BROWSER}           chrome
${URL}               https://www.saucedemo.com
${CHROMEDRIVER}      C:/Users/ASUS/OneDrive/Desktop/web driver py/chromedriver-win64/chromedriver.exe
${USERNAME}          standard_user
${PASSWORD}          secret_sauce
${INVALID_USERNAME}       invalid_user
${INVALID_PASSWORD}       wrong_password
${EXPECTED_ERROR_MESSAGE}   Epic sadface: Username and password do not match any user in this service
${EXPECTED_ERROR_MESSAGE2}   Epic sadface: Username is required
${EXPECTED_ERROR_MESSAGE3}    Epic sadface: Password is required

*** Keywords ***
Input Username
    Input Text      ${username_input}       ${USERNAME}

Input Password
    Input Text      ${password_input}       ${PASSWORD}

Input Incorrect Username
    Input Text      ${username_input}       ${INVALID_USERNAME}

Input Incorrect Password
    Input Text      ${password_input}       ${INVALID_PASSWORD}

Verify The Error Message
    Page Should Contain     ${EXPECTED_ERROR_MESSAGE}

Verify The UserName Message
    Page Should Contain     ${EXPECTED_ERROR_MESSAGE2}
Verify The Password Message
    Page Should Contain     ${EXPECTED_ERROR_MESSAGE3}
















