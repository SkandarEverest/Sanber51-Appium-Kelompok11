*** Settings ***
Resource        ../base.robot
Variables       searchpage-locator.yaml

*** Keywords ***
Verify Search Page Visible
    Wait Until Element Is Visible       ${search-flight-button}
    
Input Flight Number
    [Arguments]   ${flight-number}
    Input Text    ${flight-number-textfield}    ${flight-number}

Click Search Button On Search Page
    Click Element    ${search-flight-button}

Verify Search Result
    Wait Until Element Is Visible    ${search-result}
