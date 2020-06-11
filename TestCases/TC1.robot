*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://redmine.chainos.vn/redmine/
*** Test Cases ***
LoginTest
    open browser  ${url}    ${browser}
    loginToRedmine
    close browser
*** Keywords ***
loginToRedmine
    maximize browser window
    title should be     Redmine
    click element  class:login
    ${"username_text"}  set variable    id:username
    element should be visible   ${"username_text"}
    element should be enabled   ${"username_text"}
    input text  ${"username_text"}   haitm
    ${"password_text"}  set variable    id:password
    element should be visible   ${"password_text"}
    element should be enabled   ${"password_text"}
    input text  ${"password_text"}     123bapro
    sleep   5
    click element   xpath://input[@id='login-submit']
    sleep   5