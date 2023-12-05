*** Settings ***
Resource        ../base.robot
Variables       bookingpage-locator.yaml

*** Keywords ***
Verify Booking Page Visible
    Wait Until Element Is Visible       ${book-flight-button}

Click Book Button On Booking Page
    Click Element    ${book-flight-button}

Verify Booking Confirmation
    Wait Until Element Is Visible    ${confirm-order-button}

Click Confirm Button On Booking Page
    Click Element    ${confirm-order-button}

Verify Booking Reservation Number
    Wait Until Element Is Visible    ${order-booked}