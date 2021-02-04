*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PageObjects/po.CookieBanner.robot

*** Variables ***

*** Keywords ***
Begin Web Test
    open browser    about:blank     chrome

End Web Test
    close browser
