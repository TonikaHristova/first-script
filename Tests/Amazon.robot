*** Settings ***

Documentation  This is some basic info for the whole suite
Resource  ../Resourses/AmazonApp.robot
Resource  ../Resourses/Common.robot
Resource  ../Resourses/PO/LandingPage.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

Library  Dialogs


*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://amazon.com
${SEARCH_TERM} =  Ferrari 458
${USERNAME} =  admin@robotframeworktutorial.com
${PASSWORD} =  myPassword1


*** Test Cases ***
User must sign in
    [Documentation]  bla bla
    [Tags]  Current

    #${new_browser} =  Get Selection from user  Which browser ?  chrome  firefox
    #set global variable  ${BROWSER}  ${new_browser}

    AmazonApp.Search for Product
    AmazonApp.Select Product from Search result
    execute manual step  Do something manually!  It failed!
    AmazonApp.Add product to Cart
    pause execution
    AmazonApp.Begin Checkout

User should be able to login
    LandingPage.Go to sign in page
    LandingPage.Fill Email Field
    LandingPage.Fill Password Field
    LandingPage.Click SignIn Button
