*** Settings ***

Library  RequestsLibrary

*** Keywords ***
Check Github Username
    Create session  my_github_session  hhtps://api.github.com
