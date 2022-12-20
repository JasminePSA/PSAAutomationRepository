*** Settings ***
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/ObjectRepository/ITP2LocatorsSravan.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/ITP2KeywordsSravan.robot
Resource    ../Resources/ITP2KeyWords.robot
Library     SeleniumLibrary
Library     String
Library     DateTime
Library     Process
Library     DateTime
Variables   C:/Users/tripuras/PycharmProjects/CRSITP2/Resources/Testdata.yml


*** Variables ***

*** Test Cases ***
Accounting Cash Balancing Report
    Open Counter
#    Click Element    ${home_dashboard}
#    Sleep   5s
    Click Element    //a[@id='102']
    Click Element   //a[text()='Cash Balancing']
    Sleep    3s
    ${get_miscamt}  Get Text    ${Payment_MiscAmnt}
    Input Text    ${Payment_getmiscamt}   ${get_miscamt}
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3s
    Click Button    ${Payment_Submit}
    Sleep    3s
    Select From List By Index    ${EncoPrinters}        2
    Sleep    3s
    Click Button    ${EncoFinalPrint}
    Sleep    3s
    Click Button    ${Iyes}
    Sleep    3s
    Click Button    ${ProcessSuccessOK}
    Sleep    3s
    #RemitVA
    Click Button    ${Payment_RemitVA}
    Sleep    3s
    Click Button    ${Payment_RemitVA1}
    Sleep    3s
    Click Button    ${Payment_RemitVA2}
    Sleep    3s
    Click Button    ${Payment_RemitVA3}
    Sleep    3s

