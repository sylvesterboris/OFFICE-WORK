*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}      chrome
${siteUrl}      https://demo.guru99.com/test/newtours/
${user}         tutorial
${pwd}          tutorial

*** Test Cases ***
LoginTest
    Open my Browser     ${siteUrl}      ${Browser}
    Enter UserName      ${user}
    Enter Password       ${pwd}
    Click Sign
    sleep   3 seconds
    Verify Successfull Login
    Close My Browser