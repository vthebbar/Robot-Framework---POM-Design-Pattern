# Test case for registration
*** Settings ***
Library       SeleniumLibrary
Resource    ../Resources/RegistrationPageKeywords.robot
Suite Setup     open app    ${url}    ${browser}
Suite Teardown   close app


*** Variables ***
${url}        https://demo.opencart.com/index.php?route=account/register
${browser}    chrome
${firstName}   Raj
${lastName}    Kumar
${emailid1}     ${emailid}  # Random email id generaed in-> RegistrationPageLocator.py
${telephone}    9876456890
${password}     1234
${confirmpwd}   1234
${success_element}      xpath://h1[contains(text(), 'Your Account Has Been Created!')]

*** Test Cases ***
RegisterAccount
    input first name   ${firstName}
    input last name     ${lastName}
    input emailid       ${emailid1}
    input telephone     ${telephone}
    input password      ${password}
    input confirm password  ${confirmpwd}
    select subscribe radio button  1
    select privacy checkbox
    click continue button
    wait until page contains element  ${success_element}
    verify successful registration
