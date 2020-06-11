*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${browser}  chrome
${url1}  https://swisnl.github.io/jQuery-contextMenu/demo.html
${url2}  http://testautomationpractice.blogspot.com/
${url3}  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
${url4}  http://newtours.demoaut.com/
*** Test Cases ***
Click
    ${PageTitle}=   RightClick     ${url1}    ${browser}
    log to console  ${PageTitle}
    sleep   3

    
    ${CopiedField}=     DoubleClick    ${url2}
    log to console  ${CopiedField}
    sleep   3
    
    go to   ${url3}
    Drag Drop
    sleep   3
    close all browsers

ScrollingTest
    ScrollingToPixel    ${url2}    ${browser}
    sleep   3
    ScrollingToElement
    sleep   3
    ScrollToEnd
    sleep   3
    close browser

CountAndGetAllLinksTest
    ${AllLinksCount}=   GetLinksCount   ${url4}    ${browser}
    log to console      ${AllLinksCount}
    GetAllLinksText     ${AllLinksCount}


*** Keywords ***
RightClick
    [Arguments]     ${appUrl}   ${appBrowser}
    ${title}=   LauchBrowser  ${appUrl}  ${appBrowser}
    open context menu   xpath:/html/body/div/section/div/div/div/p/span
    [Return]    ${title}

DoubleClick
    [Arguments]     ${appUrl}   
    go to    ${appUrl}
    double click element    xpath://*[@id="HTML10"]/div[1]/button
    sleep   2
    ${inputField}=   get value   id:field2
    [Return]    ${inputField}

Drag Drop
    drag and drop   id:box4     id:box101

ScrollingToPixel
    [Arguments]     ${appUrl}   ${appBrowser}
    LauchBrowser  ${appUrl}  ${appBrowser}
    execute javascript  window.scrollTo(0,1000)

ScrollingToElement
    scroll element into view    id:HTML11

ScrollToEnd
    execute javascript  window.scrollTo(0, document.body.scrollHeight)

GetLinksCount
    [Arguments]     ${appUrl}   ${appBrowser}
    LauchBrowser  ${appUrl}  ${appBrowser}
    ${Count}=   get element count   xpath://a
    [Return]    ${Count}

GetAllLinksText
    [Arguments]     ${AllLinksCount}
    @{LinkItems}    create list
    : FOR   ${i}    IN RANGE    1   ${AllLinksCount}+1
    \   ${linksText}=   get text    xpath:(//a)[${i}]
    \   log to console  ${linksText}