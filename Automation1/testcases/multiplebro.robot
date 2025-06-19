*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
MultipleBrowserTest
    Open Browser    https://www.google.com/     chrome
    Maximize Browser Window

    Sleep    2s

    # Open second browser
    Open Browser    https://www.youtube.com/    chrome
    Maximize Browser Window

    Sleep    2s

    # Switch to the first browser (index 1, as index starts from 1 in Robot Framework)
    Switch Browser    1
    ${title1}=    Get Title
    Log To Console    First Window Title: ${title1}

    # Switch to the second browser (index 2)
    Switch Browser    2
    ${title2}=    Get Title
    Log To Console    Second Window Title: ${title2}

    Close All Browsers
