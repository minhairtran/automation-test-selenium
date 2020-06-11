*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://www.selenium.dev/selenium/docs/api/java/index.html
*** Test Cases ***
Select Frame
    open browser  ${url}    ${browser}

    select frame   packageListFrame
    click link  org.openqa.selenium.json
    unselect frame
    sleep   3

    select frame    classFrame
    click link  Help
    unselect frame
    sleep   3
    # close browser
*** Keywords ***



