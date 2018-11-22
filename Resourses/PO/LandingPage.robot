*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCH_BUTTON} =  xpath = //input[@value='Go']
${SEARCH_FIELD} =  id=twotabsearchtextbox
${ACCOUNTS_AND_LISTS_BUTTON} =   xpath = //a[@id='nav-link-accountList']
${EMAIL_FILED} =  id = ap_email
${PASS_FIELD} =  xpath = //input[@id='ap_password']
${SIGN_IN_BUTTON} =  id= signInSubmit
${IMPORTANT_MSG} =   xpath = //div[@class='a-box-inner a-alert-container']/h4

*** Keywords ***
Verify Page Loaded
    Wait until page contains  Your Amazon.com


Search for a product
    Input text  ${SEARCH_FIELD}  ${SEARCH_TERM}
    Click button  ${SEARCH_BUTTON}
    Wait until page contains   results for "${SEARCH_TERM}"

Go to sign in page
    wait until element is visible  ${ACCOUNTS_AND_LISTS_BUTTON}
    click element  ${ACCOUNTS_AND_LISTS_BUTTON}

Fill Email Field
     input text  ${EMAIL_FILED}  ${USERNAME}

Fill Password Field
     input text   ${PASS_FIELD}   ${PASSWORD}

Click SignIn Button
    click button  ${SIGN_IN_BUTTON}
    wait until page contains element  ${IMPORTANT_MSG}