*** Settings ***
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/ObjectRepository/ITP2LocatorsSravan.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/ITP2KeywordsSravan.robot
Resource    ../Resources/ITP2KeyWords.robot
Library     SeleniumLibrary
Library     String
Library     DateTime
Library     Process
Library     DateTime
Variables   C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/TestDataSravan.yml


*** Variables ***

*** Test Cases ***
Import PhilCRIS - Birth
#Pre Condition: Import philcris file should be placed in URL:\\USTR-ERL2-3644\PHILCRIS-Files
    Open Counter
    Sleep   5S
    Click Element  ${more_option}
    Click Link  ${more_vei}
    Click Link  ${vei_home}
    Sleep   5s
    Scrollbar
    Sleep   5s
    Click Element   ${vei_import}
    Select From List By Value   ${import_province}      001
    Select From List By Value   ${import_city}      00101
    Input Text  ${import_year}  2022
    Select From List By Value   ${import_month}     12
    Click Element   ${import_search}
    Sleep   3s
    Click Element   ${importbutton}
#success message will be apperaed after importing

