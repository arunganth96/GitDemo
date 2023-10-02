*** Settings ***
Library   SeleniumLibrary
Library   Collections

*** Variables ***
*** Test Cases ***
Test title
    open browser   https://rahulshettyacademy.com/AutomationPractice/  Edge
    maximize browser window
    click element  css:a[id='opentab']
    @{li}=  get window handles
    ${length}=  get length  ${li}
    log to console  ${length}

    FOR  ${l}  IN  ${li}
        select window    ${l}

        log to console  get location  get text
    END




*** Keywords ***


