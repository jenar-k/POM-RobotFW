*** Settings ***
Documentation       order item related keyword
Variables           ../resources/orderbarang_locators.yaml

*** Variables ***
${homepage_url}     http://automationpractice.com/
${email}            acicah@gmail.com
${password}         123456
${item}             blouse

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome      url=${homepage_url}
    Maximize Browser Window 
    
user has successfully logged in
    Click Element                   ${sign_in_button}
    Input Text                      ${email_field}      ${email}
    Input Text                      ${password_field}   ${password}
    Click Element                   ${login_button}

user can input in search field
    Input Text                      ${search_field}     ${item}

user can click search icon
    Click Element                   ${search_button}    

user can select the item
    Click Element                   ${produk}

user can add item to cart
    Click Element                   ${add_item}
    
user can click proceed to checkout button in cart page 
    Wait Until Element Is Visible   ${checkout_cart}
    Click Element                   ${checkout_cart}

user can click proceed to checkout button in summary page
    Click Element                   ${checkout_summary}

user can click proceed to checkout button in address page
    Click Element                   ${checkout_address}    

user can click agreement checkbox
    Click Element                   ${agreement}

user can click proceed to checkout button in shipping page
    Click Element                   ${checkout_shipping}

user can choose type of payment
    Click Element                   ${payment}

user can click confirm button
    Click Element                   ${confirm_button}    