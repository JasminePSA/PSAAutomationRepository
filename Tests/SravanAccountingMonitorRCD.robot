*** Settings ***
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/ObjectRepository/ITP2LocatorsSravan.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/ITP2KeywordsSravan.robot
Resource    ../Resources/ITP2KeyWords.robot
Library     SeleniumLibrary
Library     String
Library     DateTime
Library     Process
Variables   C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/TestDataSravan.yml


*** Variables ***


*** Test Cases ***
Accounting - Monitor RCDs
    Open Counter
    Sleep   5S
    Click Link   ${more}
    Click Link  ${accounting_rcd}
    Click Link  ${accounting_home}
    Sleep   3s
    Click Element  ${accounting_report_home}
    Sleep   3s
    Click Element  ${rcd_reports}
    Sleep   3s
    Input Text  ${rcd_ordate}   ${accountingrcd_date}  # Date is taking from yml file
    Sleep    3s
    Click Button    ${generate_viewreport}
    Sleep   3s
    Click Button   ${generatebutton_yes}
    Sleep   5s
