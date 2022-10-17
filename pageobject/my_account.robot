*** Settings ***
Documentation       My Account page raleted keyworad
Variables           ../resources/my_account.yaml

*** Variables ***
${homepage_url}     http://automationpractice.com/
${email}            acicah@gmail.com
${password}         123456
${address_1}        Jalan kemana mana
${address_2}        RT 000 RW 000
${city}             Jakarta Utara
${postal_code}      11111
${homephone}        021345678
${mobilephone}      089898989898
${information}      Data baru nih di rumah baru
${addresstitle}     New Penthouse

*** Keywords ***    
Open Browser Chrome
    Open Browser                    browser=chrome          url=${homepage_url}
    Maximize Browser Window 
    
user has successfully logged in
    Click Element                   ${sign_in_button}
    Input Text                      ${email_field}          ${email}
    Input Text                      ${password_field}       ${password}
    Click Element                   ${login_button}

user able to click My Address button
    Click Element                   ${myaddress}

user able to click Add a new address
    Click Element                   ${addadrress}

user able to input address line 1 field
    Input Text                      ${address_1_field}      ${address_1}

user able to input address line 2 field
    Input Text                      ${address_2_field}      ${address_2}

user able to input City field
    Input Text                      ${city_field}           ${city}

user able to input state field
    Click Element                     ${state_field}

user able to input postal code field 
    Input Text                      ${postalcode_field}     ${postal_code}

user able to input homephone field
    Input Text                      ${homephone_field}      ${homephone}

user able to input mobilephone field
    Input Text                      ${mobilephone_field}    ${mobilephone}

user able to input additional information field
    Input Text                      ${information_field}     ${information}

user able to input input address title field
    Clear Element Text              ${addresstitle_field}
    Input Text                      ${addresstitle_field}    ${addresstitle}
    sleep                           3s

user able to click save button
    Click Element                   ${save}