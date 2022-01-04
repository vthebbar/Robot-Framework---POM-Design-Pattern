# Read data from excel and perform login test

*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/LoginPageKeywords.robot
Library     DataDriver  ../TestData/Testdata.xlsx   sheet_name=Login
Suite Setup  open app   ${url}  ${browser}
Suite Teardown  close app
Test Template   Invalid Login

*** Variables ***
${url}      https://demo.opencart.com/index.php?route=account/login
${browser}  chrome


*** Test Cases ***
Data driven test using invalid login data



*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}     # These should be similar to excel header
    input useremail     ${username}
    input password      ${password}
    click login
    verify unsuccessful login