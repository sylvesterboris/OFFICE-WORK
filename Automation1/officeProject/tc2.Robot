*** Settings ***
Library    SeleniumLibrary
Resource  keywords.robot
Suite Setup     Set Selenium Speed  0.7s
Library           SeleniumLibrary
#Test Setup        Maximize Browser Window



*** Test Cases ***
End To End Flow Of Application
   Login Test
   Verify Landing Page Is Displayed
   Add A Product To The Cart
   Go To The Cart
   Verify Product Is Added To The Cart
   Remove The Product From The Cart
   Go Back To homepage
   Add Two or more products To The Cart
   Checkout From Cart Page
   Add your Information
   Verify Checkout Overview
   Verify Shipping Information
   Verify Total Amount Of Cart
   Finish Checkout And Validate Completion
