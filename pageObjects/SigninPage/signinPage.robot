*** Settings ***
Resource        ../base.robot
Variables       signinpage-locator.yaml

*** Keywords ***
Verify Sign In Page Visible
    Wait Until Element Is Visible       ${sign-in-button}

Input Username On Sign In Page
    [Arguments]   ${username}
    Input Text    ${username-textfield}   ${username}
    
Input Password On Sign In Page
    [Arguments]   ${password}
    Input Text    ${password-textfield}    ${password}

Click Sign In Button On Sign In Page
    Click Element    ${sign-in-button}
