# keywrods for registration

*** Settings ***
Library  SeleniumLibrary
Variables   ../PageObjects/RegistrationPageLocators.py

*** Keywords ***
open app
    [Arguments]     ${url}  ${browser}
    open browser    ${url}  ${browser}
    maximize browser window

input first name
    [Arguments]     ${firstName}
    input text  ${txt_firstName}   ${firstName}

input last name
    [Arguments]     ${lastName}
    input text   ${txt_lastName}   ${lastName}

input emailid
    [Arguments]     ${emailid}
    input text  ${txt_email}   ${emailid}

input telephone
    [Arguments]     ${telephone}
    input text  ${txt_phone}   ${telephone}

input password
    [Arguments]     ${password}
    input text  ${txt_password}    ${password}

input confirm password
    [Arguments]     ${confirmpwd}
    input text  ${txtPassword_confirm}     ${confirmpwd}

select subscribe radio button
    [Arguments]     ${value}
    select radio button     newsletter  ${value}

select privacy checkbox
    select checkbox  ${chkbox_privacy}

click continue button
    click element   ${btn_continue}

Verify successful registration
    page should contain     Your Account Has Been Created!

click logout link
    click element  ${link_MyAccount}
    click element  ${link_logout}

close app
    close all browsers
