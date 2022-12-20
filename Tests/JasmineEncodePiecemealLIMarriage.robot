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
Verify EncodePiecemealLIMarriage
    Launch Application
#    Open Counter
    Wait Until Element Is Visible       ${home_menu}
    #Sleep 2
    Click Link        ${home_menu}
    Selectingveihomepage
    Encodingpiecemeallimarriage
    Close Browser