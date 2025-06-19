*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TabbedWindowTest
    Open Browser    https://demo.automationtesting.in/Windows.html    chrome
    Click Element    //*[@id="Tabbed"]/a/button
    Sleep    2s    # Give time for the new tab to open
    Select Window    index=1
    Click Element    xpath://*[@id="main_navbar"]/ul/li[5]/a/span
    Sleep    3s
    Close All Browsers
