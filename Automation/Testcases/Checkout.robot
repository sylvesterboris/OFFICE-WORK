*** Settings ***
Library    SeleniumLibrary
Suite Setup     Set Selenium Speed  0.7s
Library           SeleniumLibrary
#Test Setup        Maximize Browser Window
Resource        ../Resources/Keywords/Login.resource
Resource        ../Resources/Keywords/CartAndCheckout.resource 


*** Test Cases ***
Tc_8 Verify Cart Icon Shows Added Items Count
    [Tags]      Smoke
    Loginn
    Wait Until Page Contains Element    ${backpack_add_btn}
    # Add two items to cart
    Add Items To Cart
    # Verify cart icon shows the correct count
    Verify Cart Count
    Close Browser


Tc_8 Verify Checkout Page Opens Correctly

    Loginn
    Wait Until Page Contains Element    ${backpack_add_btn}
    Click Button    ${backpack_add_btn}

    Click Element    ${cart_icon}
    Wait Until Page Contains Element    ${checkout_button}
    Click Button    ${checkout_button}

    #Verify the checkout form is loaded by checking first name field
    Wait Until Element Is Visible    ${first_name_input}
    Element Should Be Visible        ${first_name_input}
    Element Should Be Visible        ${last_name_input}
    Element Should Be Visible        ${postal_code_input}

    Close Browser

Tc_9 Verify Successful Checkout Flow

    [Tags]      Smokee
    Loginn
    # Add items to cart
    Wait Until Element Is Visible    ${backpack_add_btn}
    Click Button    ${backpack_add_btn}
    Click Button    ${bike_light_add_btn}

    # Go to cart
    Click Element    ${cart_icon}
    Wait Until Element Is Visible    ${checkout_button}
    Click Button    ${checkout_button}

    # Fill checkout form
    Fill Checkout Form

    # Verify Checkout Overview page is displayed
    Verify Checkout Fields Are Visible

    # Finish checkout
    Click Button    ${finish_button}

    # Verify final confirmation
    Wait Until Page Contains Element    ${confirmation_header}
    Element Should Contain    ${confirmation_header}    Thank you for your order!

    Close Browser

