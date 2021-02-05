*** Settings ***
Resource    PageObjects/po.CookieBanner.robot

*** Keywords ***

Navigate To Site Under Test
    po.CookieBanner.Load

Check the CookieBanner is Present
    po.CookieBanner.Verify banner visibility and text
    po.CookieBanner.Verify Checkbox and Text
    po.CookieBanner.Verify OK button exists and is visible
    po.CookieBanner.Verify show details element exists and is visible

Check the CookieBanner Details
    po.CookieBanner.Verify Text Change to Hide on Click
    po.CookieBanner.Verify Cookie declaration tab
    po.CookieBanner.Verify About cookie Tab



Check the CookieBanner can be Dismissed
    #check when OK is pressed the cookie banner is no longer visable
