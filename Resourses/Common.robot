*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    ${new_browser} =  Get Selection from user  Which browser ?  chrome  firefox
    set global variable  ${BROWSER}  ${new_browser}
    Open Browser  ${START_URL}  ${BROWSER}

End Web Test
    Close Browser

