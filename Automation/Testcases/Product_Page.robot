*** Settings ***
Library    SeleniumLibrary
Suite Setup     Set Selenium Speed  0.7s
Library           SeleniumLibrary
#Test Setup        Maximize Browser Window
Resource        ../Resources/Keywords/Login.resource
Resource        ../Resources/Keywords/Checkout.resource
Resource        ../Resources/Keywords/CartAndCheckout.resource
Library         Collections

*** Test Cases ***

Tc_5 Verify All Products Are Listed On Inventory Page
    [tags]      Smoke
    Loginn
    Wait Until Element Is Visible    ${product_label}
    ${products}=    Get WebElements    xpath://div[@class='inventory_list']/div
    Length Should Be    ${products}    6
    Close Browser


Tc_6 Verify Sorting Products By Name (A to Z)
    [Tags]      Smokee
    Loginn
    Wait Until Element Is Visible    xpath://*[@class="product_sort_container"]

    # Select sort option "Name (A to Z)"
    Click Element    xpath://*[@class="product_sort_container"]
    Click Element       xpath://option[@value='az']

    # Get all product names after sorting
    ${elements}=    Get WebElements    xpath://div[@class='inventory_list']/div
    @{product_names}=    Create List

     FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
        Append To List    ${product_names}    ${text}
    END

    ${sorted_names}=    Copy List    ${product_names}
    Sort List    ${sorted_names}
    Lists Should Be Equal    ${product_names}    ${sorted_names}

    Close Browser
Tc_7 Verify Add To Cart Button Functionality

    Open Browser    ${URL}    ${BROWSER}    executable_path=${CHROMEDRIVER}
    Maximize Browser Window
    Input Username
    Input Password
    Click Button    ${login_button}

    Wait Until Page Contains Element    ${backpack_add_btn}

    # Click Add to Cart for backpack
    Click Button    ${backpack_add_btn}

    # Open Cart
    Click Element    ${cart_icon}
    Wait Until Page Contains Element    ${cart_item}

    # Verify the item was added to the cart
    ${item_name}=    Get Text    xpath://div[@class='inventory_item_name']
    Should Be Equal    ${item_name}    Sauce Labs Backpack

    Close Browser

