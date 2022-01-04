# Login test case of successful login

*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginPageKeywords.robot
Suite Setup     open app    ${url}  ${browser}
Suite Teardown  close app

*** Variables ***
${url}          https://demo.opencart.com/index.php?route=account/login
${browser}      chrome
${useremail}    testrobot@gmail.com
${password}     1234

*** Test Cases ***
ValidLoginTest

    input useremail     ${useremail}
    input password      ${password}
    click login
    verify successful login
    wait until page contains element    ${link_MyAccount}
    click logout link


Verify Forgot Password Link
    go to  ${url}
    click forgot password link
    verify forgot password link navigation