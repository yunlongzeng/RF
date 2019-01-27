*** Settings ***
Documentation   test login
Library     SeleniumLibrary
Library     util

*** Variables ***
${url}          http://39.107.96.138:3000/
${browser}      chrome
${username}     user19
${password}     123456
${assert_text}      设置

*** Keywords ***
截屏
    ${get_time_index}      util.get_time_index
    Capture Page Screenshot     ${get_time_index}.png
    Close Browser 

user19成功登录
    Open Browser        ${url}  ${browser}
    Click Element       css:li>a[href="/signin"] 
    Input Text          id:name  ${username}
    Input Text          id:pass  ${password}
    Click Element       class:span-primary 
    Page Should Contain     ${assert_text}

删除帖子
    Click Element       css:span>.dark
    Click Element       css:.topic_title
    Click Element       css:i[class="fa fa-lg fa-trash"]
    Handle Alert

*** Test Cases ***
删除帖子
    ${get_time_index}       util.get_time_index
    Log To Console          ${get_time_index}.png
    user19成功登录
    截屏
    # # 删除帖子
    
    # [Teardown]  Capture Page Screenshot     ${get_time_index}.png
    # Close Browser       

# 安居客测试切换iframe
#     Open Browser    https://login.anjuke.com/login/form?history=aHR0cHM6Ly9zaGFuZ2hhaS5hbmp1a2UuY29tLz9waT1QWi1iYWlkdS1wYy1hbGwtYmlhb3Rp  chrome
#     Select Frame    id:iframeLoginIfm
#     Input Text      id:phoneIpt  user19