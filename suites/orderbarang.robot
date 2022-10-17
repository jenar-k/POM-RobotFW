*** Settings ***
Documentation       order item test cases
Library             SeleniumLibrary
Resource            ../pageobject/orderbarang.robot

*** Test Cases ***
User Should Be Able To See order item
    [Documentation]       Test to verify that user should be able to order item
    [Setup]               Open Browser Chrome

    user has successfully logged in
    user can input in search field
    user can click search icon
    user can select the item
    user can add item to cart
    user can click proceed to checkout button in cart page
    user can click proceed to checkout button in summary page
    user can click proceed to checkout button in address page
    user can click agreement checkbox
    user can click proceed to checkout button in shipping page
    user can choose type of payment
    user can click confirm button

    [Teardown]            Close Browser