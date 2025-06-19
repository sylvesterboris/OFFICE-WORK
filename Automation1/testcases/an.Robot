*** Settings ***
Library     SeleniumLibrary
Resource    keywords.robot
Suite Setup     Set Selenium Speed  1s


#*** Variables ***
#${BROWSER}  chrome
#${URL}  https://demowebshop.tricentis.com/login

*** Test Cases ***
 RegTest
  open browser  https://demowebshop.tricentis.com/register  chrome
  maximize browser window
  set selenium speed 2 seconds
  select radio button   Gender  M
  input text    name:FirstName  Aman
  input text    name:LastName   asdsa
  input text    name:Email  Amanasdsa@gmail.com
  input text    name:Password   Amanasdsa
  input text    name:ConfirmPassword   Amanasdsa
  click element     //*[@id="register-button"]
