*** Settings ***
Library    SeleniumLibrary
#Resource    ../Resources/ITP2KeyWords.robot
Resource     C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/ITP2KeywordsVijay.robot
*** Variables ***

*** Test Cases ***
Subsidiary LedgerReport
    [Tags]      Smoke1
    Launch Brwoser
    ITP2KeywordsVijay.Close Counter
    Sleep    3S
    ITP2KeywordsVijay.Open Counter
    Access Home Page
    Click Element    ${more_option}
    Click Element    ${accounting}
    Click Element    ${acc_reporthome}
    Click Element    ${subsidiary_ledger_report}
    Click Element    ${select_outlet}
    Select From List By Value    ${select_month}    1
    Click Element    ${select_year}
    Click Button     ${generate_reportbtn}
    Sleep   5S
    Click Element    ${view}
    Click Element    ${print_report}
    Sleep    5S
    Click Element    ${select_printername}
    Sleep    5S
    Click Element    ${print_report1}
    Sleep    3S
    Click Element    ${click_yes}
    Sleep    3S
    Click Button     ${click_ok}
    Sleep    2S
    Click Button    ${click_export}
    Sleep    2S
    Click Button    ${click_export_excel}
    Click Button    ${click_export_excel_ok}
    Sleep    2S
    Click Button    ${click_export}
    Sleep    2S
    Click Button    ${click_export_pdf}
    Click Button    ${click_export_excel_ok}

 List of Deposited Collections
    [Tags]      Smoke2
    Launch Brwoser
    ITP2KeywordsVijay.Close Counter
    Sleep    3S
    ITP2KeywordsVijay.Open Counter
    Access Home Page
    Click Element    ${more_option}
    Click Element    ${accounting}
    Click Element    ${acc_reporthome}
    Click Element    ${report_of_collections_and_deposits}
    Sleep    3S
    Input Text     ${rcd_or_date}    01/01/2021
    Sleep    3S
    Click Button    ${generate/view_reportbtn}
    Sleep    3S
    Click Button    ${generate/view_reportbtn_yes}
    Sleep    3S
    Click Element    ${view_rcd}
    Click Element    ${print_report}
    Sleep    2S
    Click Element    ${select_printername}
    Sleep    2S
    Click Element    ${print_report1}
    Sleep    2S
    Click Element    ${click_yes}
    Sleep    2S
    Click Button     ${click_ok}
    Sleep    2S
    Click Button    ${click_export}
    Sleep    2S
    Click Button    ${click_export_excel}
    Click Button    ${click_export_excel_ok}
    Sleep    2S
    Click Button    ${click_export}
    Sleep    2S
    Click Button    ${click_export_pdf}
    Click Button    ${click_export_excel_ok}





