*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library     DataDriver  ../TestData/LoginData.xlsx  sheet_name=Sheet1
Suite Setup     Open my browser
Suite Teardown      Close browsers
Test Template   Invalid login

*** Variables ***
*** Test Cases ***      username                password
LoginTestWithExcel  using   ${username}     ${password}

*** Keywords ***
Invalid login
    [Arguments]     ${username}     ${password}
    Input username  ${username}
    Input password  ${password}
    Click login button
    Error message should be visible
    