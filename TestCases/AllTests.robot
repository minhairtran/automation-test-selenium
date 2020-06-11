# *** Settings ***
# Library  SeleniumLibrary


# *** Variables ***
# ${browser}  chrome
# ${url1}  http://www.practiceselenium.com/practice-form.html
# ${url2}  http://testautomationpractice.blogspot.com/
# ${url3}  http://demo.automationtesting.in/Windows.html
# ${url4}  https://www.google.com/
# ${url5}  https://swisnl.github.io/jQuery-contextMenu/demo.html
# ${url6}  http://testautomationpractice.blogspot.com/
# ${url7}  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
# ${url8}  http://newtours.demoaut.com/

# *** Test Cases ***
# Handle form
#     # ${speed}=   get selenium speed
#     # log to console  ${speed}
#     open browser  ${url1}    ${browser}
#     maximize browser window
#     # set selemnium implicit wait   10 seconds
#     set selenium speed  0.5 seconds
#     set selenium timeout    7 seconds
#     wait until page contains    Practice Form   #5secs
#     Click Radio Button
#     Click Checkbox
#     Select Dropdown
#     Select Listbox
#     Submit
#     # ${speed}=   get selenium speed
#     # log to console  ${speed}
#     close browser

# Handle alert
#     # ${speed}=   get selenium speed
#     # log to console  ${speed}
#     open browser  ${url2}    ${browser}
#     Alert check
#     Alert accept
#     Alert cancel
#     close browser

# MultipleBrowsersTest
#     open browser  ${url3}    ${browser}
#     sleep   3
#     open browser    ${url4}    ${browser}
#     switch browser  1
#     Tabbed window
#     sleep   3
#     switch browser  2
#     Check window title
#     close all browsers

# MultipleBrowsersTest
#     ${PageTitle}=   RightClick     ${url1}    ${browser}
#     log to console  ${PageTitle}
#     sleep   3

    
#     ${CopiedField}=     DoubleClick    ${url2}
#     log to console  ${CopiedField}
#     sleep   3
    
#     go to   ${url3}
#     Drag Drop
#     sleep   3
#     close all browsers

# ScrollingTest
#     ScrollingToPixel    ${url2}    ${browser}
#     sleep   3
#     ScrollingToElement
#     sleep   3
#     ScrollToEnd
#     sleep   3
#     close browser

# CountAndGetAllLinksTest
#     ${AllLinksCount}=   GetLinksCount   ${url4}    ${browser}
#     log to console      ${AllLinksCount}
#     GetAllLinksText     ${AllLinksCount}

# *** Keywords ***
# Click Radio Button
#     select radio button     sex     Female
#     select radio button     exp     3

# Click Checkbox
#     select checkbox     BlackTea
#     select checkbox     RedTea

# Select Dropdown
#     select from list by label   continents  Asia
#     select from list by index   continents  6

# Select Listbox
#     select from list by label   selenium_commands  Wait Commands

# Submit
#     click element   id:submit

# Alert check
#     click element   xpath://*[@id="HTML9"]/div[1]/button
#     sleep   3
#     alert should be present     Press a button!

# Alert accept
#     click element   xpath://*[@id="HTML9"]/div[1]/button
#     sleep   3
#     handle alert    accept

# Alert cancel
#     click element   xpath://*[@id="HTML9"]/div[1]/button
#     set selenium implicit wait   3 seconds
#     handle alert    dismiss

# Tabbed window
#     click element   xpath://*[@id="Tabbed"]/a/button
#     select window   title=Sakinalium | Home
#     click element   xpath://*[@id="container"]/header/div/div/div[2]/ul/li[4]/a
    
# Check window title
#     ${title2}=  get title
#     log to console  ${title2}

# RightClick
#     [Arguments]     ${appUrl}   ${appBrowser}
#     ${title}=   LauchBrowser  ${appUrl}  ${appBrowser}
#     open context menu   xpath:/html/body/div/section/div/div/div/p/span
#     [Return]    ${title}

# DoubleClick
#     [Arguments]     ${appUrl}   
#     go to    ${appUrl}
#     double click element    xpath://*[@id="HTML10"]/div[1]/button
#     sleep   2
#     ${inputField}=   get value   id:field2
#     [Return]    ${inputField}

# Drag Drop
#     drag and drop   id:box4     id:box101

# ScrollingToPixel
#     [Arguments]     ${appUrl}   ${appBrowser}
#     LauchBrowser  ${appUrl}  ${appBrowser}
#     execute javascript  window.scrollTo(0,1000)

# ScrollingToElement
#     scroll element into view    id:HTML11

# ScrollToEnd
#     execute javascript  window.scrollTo(0, document.body.scrollHeight)

# GetLinksCount
#     [Arguments]     ${appUrl}   ${appBrowser}
#     LauchBrowser  ${appUrl}  ${appBrowser}
#     ${Count}=   get element count   xpath://a
#     [Return]    ${Count}

# GetAllLinksText
#     [Arguments]     ${AllLinksCount}
#     @{LinkItems}    create list
#     : FOR   ${i}    IN RANGE    1   ${AllLinksCount}+1
#     \   ${linksText}=   get text    xpath:(//a)[${i}]
#     \   log to console  ${linksText}