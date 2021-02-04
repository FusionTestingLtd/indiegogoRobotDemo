*** Settings ***
Library    SeleniumLibrary

*** Keywords ***


Load
    go to    https://www.indiegogo.com/

Verify Page Has Loaded
    wait until page contains    Sign Up