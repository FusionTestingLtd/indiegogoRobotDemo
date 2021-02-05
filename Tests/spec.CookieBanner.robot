#-----------------------------
#||     TEST SUITE          ||
#-----------------------------


*** Settings ***
Documentation    This is the cookie banner Test Suite

Resource    ../Resources/res.Common.robot
Resource    ../Resources/res.CookieBanner.robot

#Things to do before and after each test case
Test Setup    res.Common.Begin Web Test
Test Teardown    res.Common.End Web Test

*** Variables ***


*** Test Cases ***
First Test Case
    [Documentation]    this is the first test case
    [Tags]    Smoke

    res.CookieBanner.Navigate To Site Under Test
    res.CookieBanner.Check the CookieBanner is Present
    res.CookieBanner.Check the CookieBanner Details

    #Check the CookieBanner can be Dismissed




*** Keywords ***
