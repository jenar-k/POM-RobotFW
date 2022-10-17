*** Settings ***
Documentation       login test cases
Library             SeleniumLibrary
Resource            ../pageobject/login.robot

*** Test Cases ***
User Should Be Able To See login
    [Documentation]       Test to verify that user should be able to login
    [Setup]               Open Browser Chrome

    user can click sign in
    user can input email address field
    user can input password
    user can click sign in button

    [Teardown]            Close Browser