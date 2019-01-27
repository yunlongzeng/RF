*** Settings ***
Documentation   常用方法汇总
Library     SeleniumLibrary


*** Variables ***
${url}       http://39.107.96.138:3000/signup
${valid_username}           user12131231
${valid_password}           123456
${valid_re_password}        123456
${valid_email}              12321321@qq.com


*** Keywords ***
打开注册页面
    Open Browser        ${url}  chrome

输入用户名
    [Arguments]         ${username}
    Input Text       id:loginname   ${username}

输入密码
    [Arguments]        ${pwd}
    Input Text       id:pass  ${pwd}

再次输入密码
    [Arguments]         ${re_pass}
    Input Text       id:re_pass  ${re_pass}

输入email
    [Arguments]        ${email}
    Input Text       id:email  ${email}

关闭浏览器并清空cookie
    Close Browser
    Delete All Cookies
    
关闭浏览器
    Close Browser
