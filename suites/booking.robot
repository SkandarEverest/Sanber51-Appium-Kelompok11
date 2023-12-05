*** Settings ***
Resource        ../pageObjects/HomePage/homePage.robot
Resource        ../pageObjects/SigninPage/signinPage.robot
Resource    ../pageObjects/BookingPage/bookingPage.robot
Test Setup      Open Flight Application
Test Teardown   Close Flight Application

*** Variables ***
${VALID_USERNAME}      support@ngendigital.com
${VALID_PASSWORD}      abc123

*** Test Cases ***
Booking Flight
    Verify Home Page Visible
    Click Sign In Button On Home Page
    Verify Sign In Page Visible
    Input Username On Sign In Page    ${VALID_USERNAME}
    Input Password On Sign In Page    ${VALID_PASSWORD}
    Click Sign In Button On Sign In Page
    Verify Home Page Visible
    Click Book Button On Home Page
    Verify Booking Page Visible
    Click Book Button On Booking Page
    Verify Booking Confirmation
    Click Confirm Button On Booking Page
    Verify Booking Reservation Number
    