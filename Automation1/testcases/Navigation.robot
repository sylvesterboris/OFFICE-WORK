*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
NavigationTest
    Open Browser    https://google.com/    chrome
    ${loc}=    Get Location
    Log To Console    Google: ${loc}

    Go To    https://www.bing.com/
    ${loc}=    Get Location
    Log To Console    Bing: ${loc}

    Go Back
    ${loc}=    Get Location
    Log To Console    After Going Back: ${loc}
