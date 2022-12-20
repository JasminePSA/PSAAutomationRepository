*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/Resources/ITP2KeywordsJasmine.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/ObjectRepository/ITP2LocatorsJasmine.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/Resources/TestDataJasmine.yml
#from selenium import webdriver
*** Variables ***
${browser}  chrome
${url_qa}   http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tVEhPTUFTSjE=
*** Keywords ***

*** Test Cases ***
Verify Regularannotationrework
    Launch Application
    [Documentation]     This is to call open counter reusable code
#    Open Counter
    Wait Until Element Is Visible       ${home_menu}
    #Sleep 2

    [Documentation]     Selecting Home and menu
    Click Link        ${home_menu}
    Wait Until Element Is Visible       ${menu_clientcertificaterequest}
    Click Link      ${menu_clientcertificaterequest}
    Wait Until Element Is Visible       ${menu_walkinrequestentry}
    Click Link      ${menu_walkinrequestentry}

    ${transaction_number_created}=     Encoderegularannotationsingle
    Click button    ${startaclient_button}
    sleep   2
    ProcessRAsingleannotationbirth      ${transaction_number_created}
    Dispproveannotation       ${transaction_number_created}
    ProcessannotationafterDisapproval   ${transaction_number_created}
    Approveannotation       ${transaction_number_created}
    Close Browser




