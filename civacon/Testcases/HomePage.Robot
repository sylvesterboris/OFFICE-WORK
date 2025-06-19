*** Settings ***
Library         SeleniumLibrary
Suite Setup     Set Selenium Speed  0.3s
Resource        ../Resources/Keywords/HomePage.resource
Resource    ../Resources/Keywords/HomePage.Resource
Variables   ../Resources/Locators/Locator.py



*** Test Cases ***
TC1_Home page loads     #Home page loads	Open website, validate it loads
    Open Website
    Close Browser

TC2_Check Navbar        #Check Navbar	Top navbar links clickability
    Open Website
    Navbar Check
    Close Browser

TC3_Search Bar         # Search Bar	Validate search with sample text
    Open Website
    Home Search Bar
    Close Browser

TC4_Scrolling Page      #Scrolling Page	Scroll to bottom
#i have a doubt in this that i want to modify the speed according to my want
    Open Website
    Scroll Element Into View    ${Last_element}
    Close Browser

TC5_Product Categories Links_Hamburger  #Product Categories Links (Hamburger)	Hamburger menu validation
    Open Website
     Set Window Size    320    480
#    Minimize Browser Window
    Hamburger Menu
    Close Browser

TC6_Product Categories Links        #Product Categories Links	Navigation bar
    Open Website
    Navigation2_bar
    Close Browser

TC7_Content Pannel Home         #Content Panel Home	Middle section cards visible
    Open Website
    Scroll Element Into View    ${Chemicalcart}
    Content_panel_home
    Close Browser

TC8_Homepage Learn More Section     #Learn More Section	Click Learn More
    Open Website
    Scroll Element Into View        ${SloganDefiningwhatnext}
    Learnmore
    Close Browser

TC9_Verify Learn More Page Loads Correctly      	#Learn More Page Loads	Navigate and validate redirection
    Open Website
    Scroll Element Into View    ${SloganDefiningwhatnext}
    Click And Validate Learn More
    Close Browser

TC10_Verify Top Navbar Links Functionality  #Top Navbar Links Functionality	Visibility check
    Open Website
    Verify Top Navbar Links
    Close Browser

TC11_Footer Content Should Be Visible   #Footer Content Visible	Scroll and check footer
    Open Website
    Scroll Element Into View    ${Last_element}
    Verify Footer Content Exists
    Close Browser

TC12_Invalid Search Test    #	Invalid Search Test	Type junk and validate no options
    Open Website
    Perform Invalid Search    qwerty123!@#
    Page Should Not Contain Element    ${Search_drop_menu_option1}
    Close Browser

TC13_Responsive Design Check - Mobile View  #Responsive Design (Mobile)	Set mobile size and validate layout
    Open Website
    Set Window Size    375    667
    Hamburger Menu
    Element Should Be Visible    ${HamBurger_Product}
    Close Browser

TC15_Distributor Portal Navigation Check

    Open Website
    Click Element    ${Distributor_portal}
    Wait Until Page Contains Element    xpath://h1
    Element Should Be Visible     ${Distributor_portal1}
    Close Browser

TC16_Supplier Portal Loads Successfully

    Open Website
    Click Element    ${Supplier_portal}
    Wait Until Page Contains Element    xpath://h1
    Location Should Contain    supplier
    Close Browser

TC17_Login Window Redirection

    Open Website
    Click Element    ${Login_Window}
    Wait Until Location Contains    login
    Close Browser

TC19_Contact Page Opens From Top Navbar
    Open Website
    Click Element    ${ContactButoon}
    Location Should Contain    contact
    Page Should Contain Element   ${COntact}
    Close Browser




