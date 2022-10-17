*** Settings ***
Documentation       Register page related keyword
Variables           ../resources/register_locators.yaml

*** Variables ***
${homepage_url}     http://automationpractice.com/
${email}            abcde000001@gmail.com
${first_name}       Jen
${last_name}        Key
${password}         123456
${company_name}     PT. Maju Jaya
${address_1}        Jalan Bersama
${address_2}        RT. 009 RW. 010, Kec. Suka, Kel. Setia
${city}             Jakarta Selatan
${postal_code}      19901
${other_message}    hai semua, ini adalah text additional information
${homephone}        0811081109111
${mobile_phone}     0215321234  
${address alias}    Jalan selamanya

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome              url=${homepage_url}
    Maximize Browser Window

user can click sign in button
    Wait Until Element Is Visible   ${sign_in_button}        
    Click Element                   ${sign_in_button}

user can input email address field      
    Input Text                      ${email_field}              ${email}

user can click create button            
    Click Element                   ${create_button}

user can clik gender radio button
    Wait Until Element Is Visible   ${gender}
    Click Element                   ${gender}

user can input first name field in personal information
    Input Text                      ${first_name_field1}        ${first_name}

user can input last name field in personal information
    Input Text                      ${last_name_field1}         ${last_name}

user can input password field
    Input Text                      ${password_field}           ${password}

user can input DOB
    [Arguments]                     ${year}=1997
    Select From List By Index       ${date}                     20
    Select From List By Index       ${month}                    6
    Click Element                   ${years.format("${year}")}  

user can click newsletter checkbox
    Click Element                   ${newsletter}

user can click offers checkbox
    Click Element                   ${offers}

user can input first name field in address 
    Input Text                      ${first_name_field2}        ${first_name} 

user can input last name field in address 
    Input Text                      ${last_name_field2}         ${last_name} 

user can input company field
    Input Text                      ${company_field}            ${company_name}

user can input address_1 field
    Input Text                      ${address_1_field}          ${address_1}

user can input address_2 field
    Input Text                      ${address_2_field}          ${address_2}

User can input city field
    Input Text                      ${city_field}               ${city}

user can input state Dropdown
    Select From List By Index       ${state_field}              11

user can input postal code field
    Input Text                      ${postal_code_field}        ${postal_code}

user can input country field
    Select From List By Index       ${country_field}            1

user can input information field
    Input Text                      ${information_field}        ${other_message}

user can input homephone field
    Input Text                      ${homephone_field}          ${homephone}

user can input mobilephone field
    Input Text                      ${mobilephone_field}        ${mobile_phone}

user can clear address alias field
    Clear Element Text              ${address_alias_field}

user can input address alias field        
    Input Text                      ${address_alias_field}      ${address alias}

user can click register button
    Click Element                   ${register_button}  
