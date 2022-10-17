*** Settings ***
Documentation       Login test cases
Library             SeleniumLibrary
Resource            ../pageobject/register.robot

*** Test Cases ***
User Should Be Able To See Register Page
    [Documentation]       Test to verify that user should be able to register
    [Setup]               Open Browser Chrome

    user can click sign in button           
    user can input email address field     
    user can click create button            
    user can clik gender radio button
    user can input first name field in personal information
    user can input last name field in personal information
    user can input password field
    user can input DOB
    user can click newsletter checkbox
    user can click offers checkbox
    user can input first name field in address 
    user can input last name field in address 
    user can input company field
    user can input address_1 field
    user can input address_2 field
    User can input city field
    user can input state Dropdown
    user can input postal code field
    user can input country field
    user can input information field
    user can input homephone field
    user can input mobilephone field
    user can clear address alias field
    user can input address alias field
    user can click register button

    [Teardown]            Close Browser