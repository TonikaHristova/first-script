*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
User can search fro products
    @{url_and_browser} =  set variable  http://www.google.com  firefox
    Begin Web Test  @{url_and_browser}

*** Keywords ***
Begin Web Test
    [Arguments]   @{url_and_browser}
    Open Browser   @{url_and_browser}[0]   @{url_and_browser}[1]
    Close Browser
