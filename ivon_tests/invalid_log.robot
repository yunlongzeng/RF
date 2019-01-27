*** Settings ***
Documentation       测试注册失败的例子
Library     SeleniumLibrary
Resource    resource.robot
Test Template       用户注册失败的场景

*** Keywords ***
用户注册失败的场景
    [Arguments]     ${username}    ${password}    ${re_password}     ${email}
    输入用户名       ${username}
    输入密码         ${password}
    再次输入密码     ${re_password}
    输入email       ${email}

