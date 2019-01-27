*** Settings ***
Documentation       测试注册失败的例子
Suite Setup         打开注册页面
Suite Teardown      关闭浏览器 
# Test Setup
Test Teardown       关闭浏览器并清空cookie
Library     SeleniumLibrary
Resource    resourse.robot
Test Template       用户注册失败的场景

*** Keywords ***
用户注册失败的场景
    [Arguments]     ${username}    ${password}    ${re_password}     ${email}
    输入用户名       ${username}
    输入密码         ${password}
    再次输入密码     ${re_password}
    输入email       ${email}

*** Test Cases ***     username             password                re_password            email
用户名为空              ${EMPTY}            ${valid_password}       ${valid_password}      ${valid_email}
    [tags]  smokeTesting
密码为空                ${valid_username}   ${EMPTY}                ${valid_password}      ${valid_email}
再次输入密码为空         ${valid_username}   ${valid_password}       ${EMPTY}               ${valid_email}
email为空               ${valid_username}   ${valid_password}       ${valid_email}         ${EMPTY}


