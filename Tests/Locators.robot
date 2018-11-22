*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Should be able to search for products

   open browser  http://www.amazon.com/  chrome
   sleep  3s
   click image  Unexpected gift ideas


*** Keywords ***
