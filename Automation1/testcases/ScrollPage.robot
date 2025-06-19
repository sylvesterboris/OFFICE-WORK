*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
ScrollingTest
    Open Browser    https://flagpedia.net/index    chrome
    Maximize Browser Window
    #Execute Javascript    window.scrollTo(0, 25000)
    scroll element into view    xpath://*[@id="content"]/div[2]/ul[2]/li[29]/a/span
    Sleep    2
