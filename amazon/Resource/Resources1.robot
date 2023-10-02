*** Settings ***
Library  SeleniumLibrary
Documentation    Suite description

*** Variables ***
${url}    https://rahulshettyacademy.com/loginpagePractise/
${browser}   Edge

*** Keywords ***
Start browser and maximize
    open browser  ${url}  ${browser}
    maximize browser window

Enter username and password
    [Arguments]  ${username}  ${password}
    input text  xpath://input[@id='username']  ${username}
    input text  xpath://input[@id='password']  ${password}
