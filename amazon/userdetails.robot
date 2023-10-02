*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Library  Collections
Library  String



*** Keywords ***
login with username and passsword
    [arguments]   ${username}  ${password}
    create webdriver  Chrome   executable_path= C:\Users\1809569\driver\Chromedriver
    Go to  https://rahulshettyacademy.com/loginpagePractise/
    input text  id:username   ${username}
    input password  id:password   ${password}
    click button   css:#signInBtn

verify products
    ${elements} =   Get WebElements     xpath://h4[@class='card-title']
    @{expectedelements} =   Create List  iphone X  Samsung Note 8  Nokia Edge  Blackberry
    @{actual list} =   Create List

    FOR  ${element}  IN  @{elements}
        Log    ${element.text}
        append to list   ${actual list}    ${element.text}
    END



select produt
    [Arguments]    ${card name}
    ${elements} =   get webelements     css:div .card-body .card-title
    ${index} =   Set Variable   1
    FOR   ${element}  IN   @{elements}
        Exit for loop if    '${card name}' == '${element.text}'

        ${index} =  Evaluate  ${index} + 1
    END

    click button   xpath:(//*[@class='card-footer'])[${index}]/button


login and fill details

    create webdriver  Chrome   executable_path= C:\Users\1809569\driver\Chromedriver
    Go to  https://rahulshettyacademy.com/loginpagePractise/
    input text  id:username   rahulshettyacademy
    input password  id:password      learning
    click element  css:input[value='user']
    wait until element is visible   css:.modal-body      10
    click button    id:okayBtn
    select from list by value   css:select.form-control   teach
#    ${text} =  get text   css:p.text-center
#    log   ${text}

click on blinktext
    sleep      2
    click element   css:body a.blinkingText

grab email text
    switch window   NEW
    wait until element is visible   css:p.red
    ${text} =  get text  css:p.red
    log   ${text}
    @{splittext} =  split string   ${text}   at
    log  ${splittext}
    ${fsplittext} =  get from list    ${splittext}   1
    log   ${splittext}
    @{fsplittext} =   split string   ${fsplittext}
    ${email} =   get from list    ${fsplittext}    0
    log    ${email}

