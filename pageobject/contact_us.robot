*** Settings ***
Documentation       Contact Us page related keyword
Variables           ../resources/contact_us_locators.yaml

*** Variables ***
${homepage_url}     http://automationpractice.com/
${email}            aaa@gmail.com
${order}            11
${message}          Bajunya bagus dan pegawainya ramah, cocok sama kantong mahasiswa.
${direktori}        D:/Cohort 5/Final task/Final-Task-Web-Automation-Testing-main/aset/sampleFile.jpeg
${success_messgae}  Your message has been successfully sent to our team.

*** Keywords ***
Open Browser Chrome
    Open Browser                            browser=chrome                  url=${homepage_url}
    Maximize Browser Window

User can Click Contact Us Button
    Click Element                           ${contact_us_button}

Verify Current Url Is Contat Us Url
    Element Should Be Visible               ${current_url}

Verify Contact Us Title Appears
    Element Should Be Visible               ${contact_us_title}

Verify Contact Us Subtitle Appears
    Element Should Be Visible               ${contact_us_subtitle}

User can Click Subject Heading Dropdown
    Select From List By Index              ${subject_dropdown}             2

User can input Email Field
    input Text                              ${email_field}                  ${email} 

User can inpt Order field
    input Text                              ${order_field}                  ${order} 

User can upload file
    Choose File                             ${upload_file}                  ${direktori}

User can input Message Field
    input Text                              ${message_field}                ${message}

User can click send button
    Click Element                           ${send_button}

Verify Success Status
    Element Should Contain                  ${success_status}               ${success_messgae}