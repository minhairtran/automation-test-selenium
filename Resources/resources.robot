*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
LauchBrowser
    [Arguments]     ${appUrl}   ${appBrowser}
    open browser  ${appUrl}   ${appBrowser}
    ${title}=   get title
    [Return]    ${title}


