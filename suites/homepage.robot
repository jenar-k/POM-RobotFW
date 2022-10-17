*** Settings ***
Documentation       Homepage test cases
Library             SeleniumLibrary
Resource            ../pageobject/homepage.robot

*** Test Cases ***
User Should Be Able To See Homepage
    [Documentation]       Test to verify that user should be able to see homepage
    [Setup]               Open Browser Chrome

    Verify Current Url Is Homepage Url
    Verify Header Appears
    Verify Homepage Logo Appears
    Verify Contact us Button Appears
    Verify Sign in Button Appears
    Verify Woman Tab Appears
    Verify Cart Dropdown Appears
    Verify Homepage Homeslider Appears
    Verify Footer Appears

    [Teardown]            Close Browser