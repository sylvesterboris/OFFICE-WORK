*** Settings ***
Library           SeleniumLibrary
Variables         ../Locators/Locator.py

*** Variables ***
${BROWSER}      chrome
${URL}          https://www.opwglobal.com/
${CHROMEDRIVER}      C:/Users/ASUS/OneDrive/Desktop/web driver py/chromedriver-win64/chromedriver.exe


*** Keywords ***
Open Website
    Open Browser    ${URL}    ${BROWSER}    executable_path=${CHROMEDRIVER}

Navbar Check
     Click Element  ${OPW_Home}
     Click Element  ${products_nav}
     Click Element    ${SmartLink}
     Click Element    ${Distributor_portal}
     Click Element    ${Supplier_portal}
     Click Element    ${Login_Window}
     Click Element    ${OPW_Home}

Home Search Bar
    Click Element    ${Search_home}
    Input Text       ${Search_home}      Room
    Element Should Be Visible    ${Search_drop_menu}
    Click Element    ${Search_drop_menu}
    Click Element    ${Search_drop_menu}
    Element Should Be Visible    ${Search_drop_menu_option1}
    Element Should Be Visible    ${Search_drop_menu_option2}
    Element Should Be Visible    ${Search_drop_menu_option3}

Hamburger Menu
    Click Element    ${Home_page_hamBurger}
    Element Should Be Visible    ${HamBurger_Home}
    Element Should Be Visible    ${HamBurger_Product}
    Element Should Be Visible    ${HamBurger_Brand}
    Element Should Be Visible    ${HamBurger_Company}

Navigation2_bar
    Element Should Be Visible    ${HomeButton}
    Click Element    ${ProductButton}
    Click Element    ${BrandButton}
    Click Element    ${CompanyButton}
    Click Element    ${NewsButton}
    Click Element    ${CarrerButton}
    Click Element    ${ContactButoon}
    Click Element    ${HomeButton}

Content_panel_home
    Element Should Be Visible    ${Chemicalcart}
    Element Should Be Visible   ${TransporationCart}

Learnmore
    Click Element    ${Learnmore}

Verify Top Navbar Links
    Element Should Be Visible    ${products_nav}
    Element Should Be Visible    ${SmartLink}
    Element Should Be Visible    ${Distributor_portal}
    Element Should Be Visible    ${Supplier_portal}
    Element Should Be Visible    ${Login_Window}

Click And Validate Learn More
    Click Element    ${Learnmore}
    Location Should Contain    /chemical-and-industrial

Verify Footer Content Exists
    Element Should Be Visible    ${Last_element}

Perform Invalid Search
    [Arguments]    ${InvalidText}
    Click Element    ${Search_home}
    Input Text       ${Search_home}      ${InvalidText}
    Press Keys       ${Search_home}      RETURN
    Sleep    2s

Click Top Navigation Link
    [Arguments]    ${ElementLocator}    ${ExpectedURLFragment}
    Click Element    ${ElementLocator}
    Location Should Contain    ${ExpectedURLFragment}

Responsive Layout Check
    [Arguments]    ${width}    ${height}
    Set Window Size    ${width}    ${height}
    Sleep    1s
    Element Should Be Visible    ${products_nav}
    Element Should Be Visible    ${Search_home}





     


