*** Settings ***
Library          SeleniumLibrary
Library           Collections
Variables         ../Locators/locator.py


*** Keywords ***
Open Swag Labs
    [Arguments]  ${url}  ${browser}  ${driver}
    Open Browser    ${url}    ${browser}    executable_path=${driver}
    Maximize Browser Window

Login With Valid Credentials
    Input Text    ${username_input}    ${USERNAME}
    Input Text    ${password_input}    ${PASSWORD}
    Click Button  ${login_button}

Select Sort Option By Value
        Click Element        xpath://*[@class="product_sort_container"]
        Click Element       xpath://option[@value='az']

Get Product Names List
   ${elements}=    Get WebElements    xpath://div[@class='inventory_list']/div
    @{product_names}=    Create List

     FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
        Append To List    ${product_names}    ${text}
    END

    ${sorted_names}=    Copy List    ${product_names}
    Sort List    ${sorted_names}
    Lists Should Be Equal    ${product_names}    ${sorted_names}
