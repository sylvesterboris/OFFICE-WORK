*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Test Cases ***
GetLink
    Open Browser    https://demo.guru99.com/selenium/newtours/    chrome
    Maximize Browser Window

    ${AllLinksCount}=    Get Element Count    xpath=//a
    Log To Console    Total Links Found: ${AllLinksCount}

    ${end}=    Evaluate    ${AllLinksCount} + 1

    FOR    ${i}    IN RANGE    1    ${end}
        ${linktext}=    Get Text    xpath=(//a)[${i}]
        Log To Console    ${linktext}
    END

    Sleep    2
    Close Browser
