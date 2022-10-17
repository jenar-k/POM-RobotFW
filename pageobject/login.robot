*** Settings ***
Documentation       login related keyword
Variables           ../resources/login_locators.yaml

*** Variables ***
${homepage_url}     http://automationpractice.com/
${email}            acicah@gmail.com
${password}         123456

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome      url=${homepage_url}
    Maximize Browser Window 

user can click sign in 
    Click Element                   ${sign_in_button}   

user can input email address field
    Input Text                      ${email_field}      ${email}

user can input password
    Input Text                      ${password_field}   ${password} 

user can click sign in button
    Click Element                   ${login_button}