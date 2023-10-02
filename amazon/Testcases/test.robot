*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource   ../Resource/Resources1.robot

*** Test Cases ***
check valid login
    start browser and maximize
    set selenium speed   1seconds
    open context menu   xpath://input[@id='username']
    Enter username and password  rahulshettyacademy  learning
    select from list by index  xpath://select[@class='form-control']   1










#
#check invalid login
#    login with username and passsword    rahul    learning
#    wait until element is visible   css:.alert-danger





