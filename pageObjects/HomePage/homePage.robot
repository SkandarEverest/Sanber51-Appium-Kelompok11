*** Settings ***
Resource        ../base.robot
Variables       homepage-locator.yaml

*** Keywords ***
Verify Home Page Visible
    Wait Until Element Is Visible       ${app-logo}
    
Click Sign In Button On Home Page
    Click Element    ${log-in-button}

Click Book Button On Home Page
    Click Element    ${book-button}

Click Search Button On Home Page
    Click Element    ${search-button}
