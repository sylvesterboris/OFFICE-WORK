*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    ../TestData/LoginData.csv
Resource   ../Resources/Login_resource.robot

Suite Setup     Open My Browser
Suite Teardown  Close Browser
Test Template   Invalid Login

*** Test Cases ***
LoginTestwithcsv using ${username} and ${password}
