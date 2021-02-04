*** Settings ***
Resource    PageObjects/po.CookieBanner.robot

*** Keywords ***

Navigate To Site Under Test
    po.CookieBanner.Load

Check the CookieBanner is Present
    #Check that the CookieBanner exists and is visable
    #Check that the banner has the correct heading
    #check that the banner has the correct text
    #check that it has a checkbox
    #check the Checkbox has the correct text
    #check that the OK button exists and is visible
    #check show details element exists and is visible

Check the CookieBanner Details
    #check that it changes to Hide Details when clicked
    #check for the Cookie declaration tab
    #check for the About cookie Tab
    # check the about cookie text
    # check for each sub tab 'necessary, preference' etc

Check the CookieBanner can be Dismissed
    #check when OK is pressed the cookie banner is no longer visable
