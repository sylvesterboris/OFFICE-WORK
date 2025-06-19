*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
MouseActions

    # Right click / open context menu
    Open Browser    https://cpstest.org/right-click-test.php    chrome
    Maximize Browser Window
    Open Context Menu   xpath=//*[@id="myLink2"]
    Sleep    2

    # Double click action
    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath=//button[text()='Copy Text']
    Sleep    2

    # Drag and drop
    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    id=box6    id=box106
    Sleep    2
