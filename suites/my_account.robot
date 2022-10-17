*** Settings ***
Documentation       my account test cases
Library             SeleniumLibrary
Resource            ../pageobject/my_account.robot

*** Test Cases ***
User Should Be Able To See login
    [Documentation]       Test to verify that user should be able to added new address
    [Setup]               Open Browser Chrome

    user has successfully logged in
    user able to click My Address button
    user able to click Add a new address
    user able to input address line 1 field
    user able to input address line 2 field
    user able to input City field
    user able to input state field
    user able to input postal code field 
    user able to input homephone field
    user able to input mobilephone field
    user able to input additional information field
    user able to input input address title field
    user able to click save button
    
    [Teardown]            Close Browser