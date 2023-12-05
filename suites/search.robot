*** Settings ***
Resource        ../pageObjects/HomePage/homePage.robot
Resource        ../pageObjects/SigninPage/signinPage.robot
Resource    ../pageObjects/SearchPage/searchPage.robot
Test Setup      Open Flight Application
Test Teardown   Close Flight Application

*** Variables ***
${VALID_USERNAME}      support@ngendigital.com
${VALID_PASSWORD}      abc123
${STATIC_BOOKING_ID}   DA935

*** Test Cases ***
Search Booking ID
    Verify Home Page Visible
    Click Sign In Button On Home Page
    Verify Sign In Page Visible
    Input Username On Sign In Page    ${VALID_USERNAME}
    Input Password On Sign In Page    ${VALID_PASSWORD}
    Click Sign In Button On Sign In Page
    Verify Home Page Visible
    Click Search Button On Home Page
    Verify Search Page Visible
    Input Flight Number    ${STATIC_BOOKING_ID}
    Click Search Button On Search Page
    Verify Search Result
    