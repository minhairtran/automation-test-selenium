*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url1}  http://demo.automationtesting.in/Windows.html
${url2}  https://www.google.com/
*** Test Cases ***
MultipleBrowsersTest
    open browser  ${url1}    ${browser}
    sleep   3
    open browser    ${url2}    ${browser}
    switch browser  1
    Tabbed window
    sleep   3
    switch browser  2
    Check window title
    close all browsers
*** Keywords ***
Tabbed window
    click element   xpath://*[@id="Tabbed"]/a/button
    select window   title=Sakinalium | Home
    click element   xpath://*[@id="container"]/header/div/div/div[2]/ul/li[4]/a
    
Check window title
    ${title2}=  get title
    log to console  ${title2}