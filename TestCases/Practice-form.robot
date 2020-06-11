*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html
*** Test Cases ***
Handle form
    # ${speed}=   get selenium speed
    # log to console  ${speed}
    open browser  ${url}    ${browser}
    maximize browser window
    # set selemnium implicit wait   10 seconds
    set selenium speed  0.5 seconds
    set selenium timeout    7 seconds
    wait until page contains    Practice Form   #5secs
    Click Radio Button
    Click Checkbox
    Select Dropdown
    Select Listbox
    Submit
    # ${speed}=   get selenium speed
    # log to console  ${speed}
    # close browser
*** Keywords ***
Click Radio Button
    select radio button     sex     Female
    select radio button     exp     3

Click Checkbox
    select checkbox     BlackTea
    select checkbox     RedTea

Select Dropdown
    select from list by label   continents  Asia
    select from list by index   continents  6

Select Listbox
    select from list by label   selenium_commands  Wait Commands

Submit
    click element   id:submit


