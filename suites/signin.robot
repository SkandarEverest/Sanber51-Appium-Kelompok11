*** Settings ***
Resource        ../pageObjects/HomePage/homePage.robot
Resource        ../pageObjects/SigninPage/signinPage.robot
Test Setup      Open Flight Application
Test Teardown   Close Flight Application

*** Variables ***
${VALID_USERNAME}      support@ngendigital.com
${VALID_PASSWORD}      abc123
${INVALID_USERNAME}    invalid
${INVALID_PASSWORD}    invalid

*** Test Cases ***
Sign In Valid Credential
    Verify Home Page Visible
    Click Sign In Button On Home Page
    Verify Sign In Page Visible
    Input Username On Sign In Page    ${VALID_USERNAME}
    Input Password On Sign In Page    ${VALID_PASSWORD}
    Click Sign In Button On Sign In Page
    
Sign In Invalid Credential
    Verify Home Page Visible
    Click Sign In Button On Home Page
    Verify Sign In Page Visible
    Input Username On Sign In Page    ${INVALID_USERNAME}
    Input Password On Sign In Page    ${INVALID_PASSWORD}
    Click Sign In Button On Sign In Page