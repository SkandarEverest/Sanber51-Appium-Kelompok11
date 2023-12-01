*** Settings ***
Resource    ../pageObjects/base.robot
Resource    ../pageObjects/HomePage/homePage.robot

*** Test Cases ***
Successfully Open Flight Homepage
    Open Flight Application
    Verify Home Page Visible
    Close Flight Application
    