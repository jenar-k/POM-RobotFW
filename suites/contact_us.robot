*** Settings ***
Documentation       Contact Us test cases
Library             SeleniumLibrary
Resource            ../pageobject/contact_us.robot
#tes
*** Test Cases ***
User Should Be Able To See Cobtact Us
    [Documentation]       Test to verify that user should be able to see Contact Us page
    [Setup]               Open Browser Chrome

    User can Click Contact Us Button
    Verify Current Url Is Contat Us Url
    Verify Contact Us Title Appears
    Verify Contact Us Subtitle Appears
    User can Click Subject Heading Dropdown
    User can input Email Field
    User can inpt Order field
    User can upload file
    User can input Message Field
    User can click send button
    Verify Success Status

    [Teardown]            Close Browser