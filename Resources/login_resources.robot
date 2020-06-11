*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN URL}    http://admin-demo.nopcommerce.com
${BROWSER}  chrome

*** Keywords ***
Open my browser
    open browser    ${LOGIN URL}    ${BROWSER}

Close browsers
    close all browsers 

Open Login Page
    go to   ${LOGIN URL}

Input username
    [Arguments]     ${username}
    input text  id:Email    ${username}

Input password
    [Arguments]     ${password}
    input text  id:Password    ${password}

Click login button
    click element   xpath://input[@class='button-1 login-button']

Click logout 
    click link  Logout

Error message should be visible
    page should contain     Login was unsuccessful

Dashboard page should be visible
    page should contain     Dashboard


