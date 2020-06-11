*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://testautomationpractice.blogspot.com/
*** Test Cases ***
Handle alert
    # ${speed}=   get selenium speed
    # log to console  ${speed}
    open browser  ${url}    ${browser}
    Alert check
    Alert accept
    Alert cancel
    # close browser
*** Keywords ***
Alert check
    click element   xpath://*[@id="HTML9"]/div[1]/button
    sleep   3
    alert should be present     Press a button!

Alert accept
    click element   xpath://*[@id="HTML9"]/div[1]/button
    sleep   3
    handle alert    accept

Alert cancel
    click element   xpath://*[@id="HTML9"]/div[1]/button
    set selenium implicit wait   3 seconds
    handle alert    dismiss



