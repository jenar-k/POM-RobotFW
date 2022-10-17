*** Settings ***
Documentation       Homepage related keyword
Variables           ../resources/homepage_locators.yaml

*** Variables ***
${homepage_url}     http://automationpractice.com/


*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome    url=${homepage_url}
    Maximize Browser Window 

Verify Current Url Is Homepage Url
    Location Should Contain         ${homepage_url}

Verify Header Appears
    Element Should Be Visible       ${header}

Verify Homepage Logo Appears
    Element Should Be Visible       ${homepage_logo}

Verify Contact us Button Appears
    Element Should Be Visible       ${contact_us}

Verify Sign in Button Appears
    Element Should Be Visible       ${sign_in}

Verify Woman Tab Appears
    Element Should Be Visible       ${women_tab}   

Verify Dressed Tab Appears
    Element Should Be Visible       ${dressed_tab}

Verify T-shirt Tab Appears
    Element Should Be Visible       ${shirt_tab}

Verify Cart Dropdown Appears
    Element Should Be Visible       ${cart_dropdown}

Verify Homepage Homeslider Appears
    Element Should Be Visible       ${homepage_homeslider}
    
Verify Footer Appears          
    Element Should Be Visible       ${footer}
