*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =  xpath =//h1
${CHECKOUT_BUTTON} =  xpath = //a[@id='hlb-ptc-btn-native']

*** Keywords ***
Click the ckechout button
    Click element  ${CHECKOUT_BUTTON}
    Page should contain element  ${SIGNIN_MAIN_HEADING}
    #Element text should be  ${SIGNIN_MAIN_HEADING}  Sign In