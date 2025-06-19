*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
LoginTC
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window
    Input Text      id:user-name    standard_user
    Input Text      id:password     secret_sauce

    Capture Element Screenshot    xpath=//*[@class="login_wrapper-inner"]    Half.png
    Capture Page Screenshot     Half2.png
