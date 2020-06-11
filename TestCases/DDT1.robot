*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup     Open my browser
Suite Teardown      Close browsers
Test Template   Invalid login

*** Variables ***
*** Test Cases ***      username                password
Right user empty pass   admin@yourstore.com     ${EMPTY}
Right user wrong pass   admin@yourstore.com     xyz
Wrong user right pass   admi@yourstore.com      admin
Wrong user empty pass   admi@yourstore.com      ${EMPTY}
*** Keywords ***
Invalid login
    [Arguments]     ${username}     ${password}
    Input username  ${username}
    Input password  ${password}
    Click login button
    Error message should be visible