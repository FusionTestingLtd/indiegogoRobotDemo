*** Settings ***
Library    SeleniumLibrary



*** Keywords ***

Load
    go to    https://www.indiegogo.com/

Verify Page Has Loaded
    wait until page contains    Sign Up

Verify banner visibility and text
    wait until element is visible   id=CybotCookiebotDialog
    element text should be    id=CybotCookiebotDialogBodyContentTitle   This website uses cookies
    element text should be    id=CybotCookiebotDialogBodyContentText    We use cookies to personalize content, to provide social media features, and to analyze our traffic. We also share information about your use of our site with our social media, advertising, and analytics partners who may combine it with other information that you’ve provided to them or that they’ve collected from your use of their services. For more information view our cookie policy.

Verify Checkbox and Text
    get webelement    id=CybotCookiebotDialogBodyContentCheckboxPersonalInformation
    element text should be    css=#CybotCookiebotDialogBodyContentControls > div > label    Do Not Sell My Personal Information

Verify OK button exists and is visible
    element should be visible    id=CybotCookiebotDialogBodyButtonAccept
    element text should be    id=CybotCookiebotDialogBodyButtonAccept   OK

Verify show details element exists and is visible
    element should be visible   id=CybotCookiebotDialogBodyButtonDetails
    element text should be    id=CybotCookiebotDialogBodyButtonDetails  Show details

Verify Text Change to Hide on Click
    element text should be    id=CybotCookiebotDialogBodyButtonDetails  Show details
    click link    id=CybotCookiebotDialogBodyButtonDetails
    element text should be    id=CybotCookiebotDialogBodyButtonDetails  Hide details
    element should be visible    id=CybotCookiebotDialogDetail
    element should contain    id=CybotCookiebotDialogDetailFooter    Cookie declaration last updated on 2/2/21 by Cookiebot

Verify Cookie declaration tab
    element should be visible    id=CybotCookiebotDialogDetailBodyContentTabsOverview
    element text should be    id=CybotCookiebotDialogDetailBodyContentTabsOverview  Cookie declaration
    element should contain    id=CybotCookiebotDialogDetailBodyContentCookieContainerPreference  Preferences (4)
    element should contain    id=CybotCookiebotDialogDetailBodyContentCookieContainerStatistics  Statistics (12)
    element should contain    id=CybotCookiebotDialogDetailBodyContentCookieContainerAdvertising  Marketing (35)
    element should contain    id=CybotCookiebotDialogDetailBodyContentCookieContainerUnclassified  Unclassified (4)

Verify About cookie Tab
    element should be visible    id=CybotCookiebotDialogDetailBodyContentTabsAbout
    click link    id=CybotCookiebotDialogDetailBodyContentTabsAbout
    element should contain    id=CybotCookiebotDialogDetailBodyContentTextAbout  Cookies are small text files that can be used by websites to make a user's experience more efficient.
    element should contain    id=CybotCookiebotDialogDetailBodyContentTextAbout  The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.
    element should contain    id=CybotCookiebotDialogDetailBodyContentTextAbout     This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.
    element should contain    id=CybotCookiebotDialogDetailBodyContentTextAbout     Your consent applies to the following domains: www.indiegogo.com




