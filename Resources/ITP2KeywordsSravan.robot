*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary
Library  String
Library  Process
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/ObjectRepository/ITP2LocatorsSravan.robot
Library     C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/Resources/Upload.py
Library     DateTime

*** Keywords ***
Open Counter
    [Documentation]  This keyword is using for opens the counter of CRS application
    Open Browser  ${CRS_Homepage}  Chrome
    Maximize Browser Window
    Sleep    3s
    Click Button    ${open_counter}
    Sleep    8s
    Click Button    ${ok_button}
    Sleep    10s
    Click Element    ${home_dashboard}

LaunchBrowser
    Open Browser    ${CRS_Homepage}   Chrome
    Sleep    5
    Maximize Browser Window

Homepage
    Click Link    Xpath://a[@id='dashboard']

Close Counter
    [Documentation]  This keyword is using for close the counter
    Open Browser  ${CRS_Homepage}  Chrome
    Click Element    ${CRS_Homepage}
    Click Element    ${click_counter}
    Sleep    3s
    Click Button    ${confirm_yes}
    Sleep    3s
    Click Button    ${ok_button}

Scrollbar
    Execute Javascript  window.scrollTo(0,2000)
Issue Negative Certificate
    [Documentation]  This keyword is using for issue negative certificate
    Click Element    ${click_search1}
    Sleep    3s
    Click Element    ${norecord_ok}
    Click Element    ${search_vei}
    Sleep    3s
    Click Element    ${alert_ok}
    Click Element    ${negative}
    Sleep    3s
    Click Element    ${confirm_yes}
    Sleep    3s
    Click Element    ${success_ok}

Change Outletto 002
    [Documentation]  This keyword is using for change the outlet to 002
    Click Element    ${more_option}
    Click Element    ${sys_admin}
    Sleep    3s
    Click Element    ${user_detail_info}
    Input Text    ${search}    UJ1
    Click Element    ${edit}
    Select From List By Value    ${secondary_backoffice}  002
    Click Button    ${save}
    Sleep    10s
    Close Counter
    Close Browser
    Open Counter

Change Outletto 003
    [Documentation]  This keyword is using for change the outlet to 003
    Click Element    ${more_option}
    Click Element    ${sys_admin}
    Click Element    ${user_detail_info}
    Input Text    ${search}    UJ1
    Click Element    ${edit}
    Select From List By Value    ${Central_office}  003
    sleep 5s
    Click Button    ${outlet_save}
    Sleep    10s
    #Close Counter
    #Close Browser
    #Open Counter

Releasing
    [Documentation]  This keyword is using for Release the certificate
    Click Element    ${search_transaction}
    Sleep    3s
    Click Element    ${click_release_trans}
    Click Element    ${print_button}
    Select From List By Value    ${select_valid_id}  1
    Click Element    ${proceed}
    Sleep    3s
    #Select From List By Index    ${printer_name}  PHMNL-F40-MP5
Select Printer
    Sleep    3s
    Click Element    ${yes_continue}
    Input Text    ${enter_secpa}    FC000000012
    Click Element    ${save_continue}
    Sleep    3s
    Click Element    ${print_success}

Datetime death
    Select From List By Value    ${death_month}    01
    Input Text    ${death_date}    22
    Input Text    ${death_year}    2022
Country name death
   Select From List By Value    ${country}  608
   Select From List By Value    ${province}  001
   Select From List By Value    ${city}  00101

CRDRCC
    Click Link    //a[@id='103']/following::a[8]
    Click Link    //a[@id='130' and text()='CRD Submission RCC']
    Click Link    link:Create Batch
    Select From List By Value    //select[@id='BatchTypeName']  9
    Select From List By Value    //select[@id='UnitDepartmentName']    13
    Sleep    3s
    Input Text    ${CRDRCCDate}    09/12/2022
    Sleep    3
    Input Text    //button[@class="btn btn-primary" and text()='Submit']/preceding::input[1]    text
    Sleep    5
    Execute Javascript  window.scrollTo(0,380)
    Sleep    5
    Click Button    //button[@class="btn btn-primary" and text()='Submit']
    Sleep    5
    Click Button    //button[@id='AlertButton' and text()='OK']
Annotation
    Click Link    ${More}
    Click Link    ${Annoproshome}
    Click Link    ${ProsAnno}
ApproveAnnotation
    Click Link    ${More}
    Click Link    ${Annoproshome}
    Click Link    ${AnnApprDisAppr}


File Upload
    [Arguments]    ${path}    ${file}
    uploadFile          ${path}    ${file}

## AU-B Keywords ##
RequesterAddress
#Other than Philippines
    Input Text    ${ReqstrtxtAddress}    AddressLine1
    Input Text    ${ReqstrstreetAddress}    AddressLine2
    Select From List By Value    ${ReqstrChildCountry}     004
 Prcoessing Home page
    Click Link    ${certi_processing}
    Sleep    3s
    Click Link    ${processing_queue}
 Processing
    Click Link    ${Pros_menu}
    Click Link    ${Pros_Queue}
    Sleep    3s

Viewimage
    Click Button    //th[@class='sorting_disabled' and text()='Action']/following::a[1]
    Double Click Element    ${ViewImage}

IssueCertificate
    Click Button    ${Issue}
    Sleep    5
    Click Button    ${Icont}
    Sleep    5
    Click Button    ${Iyes}
    Sleep    5
    Click Button    ${Iok}
Release-Homepg
    Click Element     //img[@class='navbar-more']
    Click Link   ${releasing}
    Sleep    3s
    Click Element    ${release_certi}
    Sleep    3s
Release-Search-Print
    Click button    ${search_transaction}
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    5s
    Click Link    ${click_release_trans}
    #Sleep    3s
    Execute Javascript  window.scrollTo(0,-250)
    Sleep    5s
    Click button    ${print_button}
    Sleep    5s
    Select From List By Value    ${select_valid_id}      1
    Sleep    3s
    Click Element    ${proceed}
    Sleep    3s
    Select From List By Index    ${printer_name}  2
    Sleep    3s
    Click Button   ${final_print}
    Sleep    3s
    Click Button    ${yes_continue}

Release-Secpa
    Click Button    ${save_continue}
    Sleep    3s
    Click Button    ${ReleaseOk}

PrinterSelectionEn
    Select From List By Value   ${EncoPrinters}     PHMNL-F40-MP5
    Click Button    ${EncoFinalPrint}

unconvMVDestUnitChange
   Click Element     //img[@class='navbar-more']
   Sleep    3s
   Click Link    ${SysAdmin}
   Sleep    3s
   Click Element    ${UserDetInfo}
   Sleep    3s
   Input Text    ${SrchUserid}        003-Hosamanp
   Sleep    5s
   Click Element    ${EditUsrInfo}
   Sleep    5

FinalSubmitButton
    Click Button    ${Submit_button1}
Payment
    Sleep    3
    ${get_amount}   Get Value    id:TotalAmt
    Sleep    3
    Log    ${get_amount}
    Sleep    3
    Input Text    ${Amount_tendr}    ${get_amount}
    Click Button    ${Print_Or}
ScrollandsaveBirth
    Execute Javascript  window.scrollTo(0,2000)
    Click Button    ${WA_Birth_Save}
ClientCertificateRequestWA
    Click Link    ${Client_Request_WA}

Request Entry Requester Details
    Input Text    ${requester_lastname}    HC
    Input Text    ${requester_firstname}    Vijay
    Input Text    ${requester_middleinitial}    H
    Input Text    ${req_address1}    Bangalore1
    Input Text    ${req_address2}    Bangalore2
    Click Element   ${req_province}
    Click Element   ${req_city}
    Click Button    ${confirm1}
    Click Button    ${confirm2}
    Sleep    3S
    Click Button    ${ok_alert2}

Changeoutletcodeto003
    click image  ${more_menu}
    click element  ${systemadmin_menu}
    wait until element is visible   ${userdetails_information_menu}
    click element   ${userdetails_information_menu}
    input text  ${userdetails_search_text}      00123
    wait until element is visible  ${userdetails_edit_button}
    sleep   4
    click element       ${userdetails_edit_button}
    sleep   2
    select from list by index  ${userdetails_outlet_dropdown}   4
    click button  ${userdetails_save_button}
