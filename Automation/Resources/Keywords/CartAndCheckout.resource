*** Settings ***
Library    SeleniumLibrary
Variables  ../../Locators/locator.py

*** Keywords ***

Loginn
    Open Browser    ${URL}    ${BROWSER}    executable_path=${CHROMEDRIVER}
    Maximize Browser Window
    Input Text      ${username_input}       ${USERNAME}
    Input Text      ${password_input}       ${PASSWORD}
    Click Button    ${login_button}

Add Items To Cart
    Click Button    ${backpack_add_btn}
    Click Button    ${bike_light_add_btn}

Verify Cart Count
    ${cart_count}=    Get Text    xpath://span[@class='shopping_cart_badge']
    Should Be Equal    ${cart_count}    2

Go To Cart Page
    Click Element    ${cart_icon}
    Wait Until Page Contains Element    ${checkout_button}

Start Checkout
    Click Button    ${checkout_button}
    Wait Until Element Is Visible    ${first_name_input}

Fill Checkout Form
     Input Text    ${first_name_input}    Michle
    Input Text    ${last_name_input}     joe
    Input Text    ${postal_code_input}   110058
    Click Button    ${continue_button}

Finish Checkout And Verify
    Wait Until Page Contains Element    ${summary_total_label}
    Page Should Contain Element         ${finish_button}
    Click Button                        ${finish_button}
    Wait Until Page Contains Element    ${confirmation_header}
    Element Should Contain              ${confirmation_header}    Thank you for your order!

Verify Checkout Fields Are Visible
    Wait Until Page Contains Element    ${summary_total_label}
    Page Should Contain Element         ${finish_button}
