*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/ITP2KeywordSwagata.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/ObjectRepository/ITP2LocatorSwagata.robot
Variables  C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/TestdataSwagata.yml

*** Variables ***
${browser}  chrome
${url_qa}   http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tTUFKVU1EQVMtMQ==#!


*** Test Cases ***
Cashreceipt
#RCD Report should Generate
    LaunchBrowser
    Title Should Be    Civil Registry System
    #OpenCounter     #close the counter before every run

    Homepage
    Click Element    ${More}
    Sleep    3
    Click Element    ${Accounting}
    Sleep    3
    Click Element    ${Acchome}
    Sleep    5
    Click Element    ${Accreporthome}
    Sleep    3
    Click Element    ${Cashrecpt}
    Sleep    3
    Select From List By Label    ${CRR_Month}   MAY
    Select From List By Label    ${CRR_Year}    2021
    Sleep    5
    Click Button    ${Genrept}
