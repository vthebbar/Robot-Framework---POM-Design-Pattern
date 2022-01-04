*** Settings ***
Library    SeleniumLibrary
Variables  ../PageObjects/LoginPageLocators.py


*** Keywords ***
open app
    [Arguments]     ${url}      ${browser}
    Open browser  ${url}      ${browser}
    maximize browser window


input useremail
    [Arguments]     ${useremail}
    input text  ${txt_emailid}   ${useremail}

input password
    [Arguments]     ${password}
    input text      ${txt_password}    ${password}

click login
    click button  ${btn_login}

click forgot password
    click link  ${link_forgotpassword}

verify successful login
    title should be    ${login_page_title}
    log  Login Successful

verify unsuccessful login
    page should contain     Warning: No match for E-Mail Address and/or Password.
    log  Login not successful

click logout link
    click element  ${link_MyAccount}
    click element  ${link_logout}

click forgot password link
    click link  ${link_forgotpassword}

verify forgot password link navigation
    page should contain     Forgot Your Password?


close app
    close all browsers
