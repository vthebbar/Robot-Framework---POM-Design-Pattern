# Read data from excel and perform registrations test
*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/RegistrationPageKeywords.robot
Library     DataDriver  ../TestData/Testdata.xlsx   sheet_name=Registration
Suite Setup      open app     ${url}      ${browser}
Suite Teardown   close app
Test Template    Data Driven Registration

*** Variables ***
${url}          https://demo.opencart.com/index.php?route=account/register
${browser}      chrome

*** Test Cases ***
Data Driven Test Registration
    set selenium speed  1 seconds

*** Keywords ***
Data Driven Registration
    [Arguments]     ${firstName}    ${lastName}     ${emailid}   ${telephone}    ${password}    ${confirmpwd}  ${radioBtnValue}
     input first name   ${firstName}
     input last name    ${lastName}
     input emailid  ${emailid}
     input telephone  ${telephone}
     input password   ${password}
     input confirm password  ${confirmpwd}
     select subscribe radio button  ${radioBtnValue}
     select privacy checkbox
     click continue button
     verify successful registration
     click logout link
     go to  ${url}





