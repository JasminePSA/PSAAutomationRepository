*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Library    DateTime
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/ObjectRepository/ITP2LocatorSwagata.robot
Library    ../ObjectRepository/Upload.py
Library    String
Library    DatabaseLibrary




*** Variables ***

${browser}  chrome
${url_qa}   http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tTUFKVU1EQVMtMQ==#!
#${files}    C:\Users\majumdas\Tiffimage\001.tif
#${Path}     C://Users//majumdas//Tiffimage//Uploadimage.exe
${DBName}  Civil Registry System
${PDVE_DB}     CRS_PDVE
${DBUser}  PSA1User
${DBPassword}  PSA1User*Live
${DBHost}   10.62.150.248
${DBPort}  1433
${CIbirth}  'CI'
${CIBfname}     'CHINI'
${sequencenumber}   001
${CFMarriage}  ROBOT
${CLMarriage}  ROBOT
${RecStatus}   A
${RequestType}  PA
${Requeststatuscode}  'FA'
${PAfname}     'CHINI'
${OfficerID}        003-Majumdas

${retrievetrannoqueryQuery}     select top 1 seriesno from encode.request where requesttype=${CIbirth} and prifirstname=${CIBfname}  order by createdon desc
${retrivebrenquery}     select top 1 Mren from MARRIAGE where GLastName='${CLMarriage}' and GFirstName='${CFMarriage}' and recstatus='${RecStatus}' order by createdon desc
${retrievePAtranQuery}    select top 1 seriesno from encode.request where prifirstname LIKE ${PAfname} and RequestType='${RequestType}' and Requeststatuscode=${Requeststatuscode}  order by createdon desc
${RetriveORNo}      Select top 1 ORNo  from Payment.Payments Where OfficerID='${OfficerID}' order by createdon desc
*** Keywords ***

ConnectDB

DisconnectDB
    Disconnect From Database

RetriveMrenFromDb
    [Arguments]     ${CLMarriage}  ${CFMarriage}  ${RecStatus}
    ${conn}=     DatabaseLibrary.Connect To Database   pymssql   ${PDVE_DB}   ${DBUser}   ${DBPassword}   ${DBHost}   ${DBPort}
    log to console    ${conn}
    #${output}=      Execute SQL String  select top 1 seriesno from encode.request where requesttype=${cibirthreqtype} and prifirstname=${cibirthfirstname} order by createdon desc
    @{results}    Query    ${retrivebrenquery}
    #@{results}    Query    ${retrievetrannoqueryQuery}
   FOR  ${Mren}  IN  @{results}
    log to console     ${Mren}
    END
    ${Mrenvalue}=   remove string   ${Mren}[0]  ()
    ${MarriageMren}=    Set Variable   ${Mrenvalue}
    [return]  ${MarriageMren}

RetriveCIBTransfromDB
    [Arguments]     ${CIbirth}  ${CIBfname}
    ${conn}=     DatabaseLibrary.Connect To Database   pymssql   ${DBName}   ${DBUser}   ${DBPassword}   ${DBHost}   ${DBPort}
    log to console    ${conn}
    #${output}=      Execute SQL String  select top 1 seriesno from encode.request where requesttype=${cibirthreqtype} and prifirstname=${cibirthfirstname} order by createdon desc
    @{results}    Query    ${retrievetrannoqueryQuery}
    #@{results}    Query    ${retrievetrannoqueryQuery}
   FOR  ${seriesno}  IN  @{results}
    log to console     ${seriesno}
    END
    ${seriesno2}=   remove string   ${seriesno}[0]  ()
    ${transactionnumber}=    Set Variable   ${seriesno2}${sequencenumber}
    [return]  ${transactionnumber}

RetriveORfromDB
    [Arguments]     ${OfficerID}
    ${conn}=     DatabaseLibrary.Connect To Database   pymssql   ${DBName}   ${DBUser}   ${DBPassword}   ${DBHost}   ${DBPort}
    log to console    ${conn}
    #${output}=      Execute SQL String  select top 1 seriesno from encode.request where requesttype=${cibirthreqtype} and prifirstname=${cibirthfirstname} order by createdon desc
    @{results}    Query    ${RetriveORNo}
    #@{results}    Query    ${retrievetrannoqueryQuery}
   FOR  ${ORno}  IN  @{results}
    log to console     ${ORno}
    END
    ${ORno2}=   remove string   ${ORno}[0]  ()
    ${PaymentORno}=    Set Variable   ${ORno2}
    [return]  ${PaymentORno}
RetrivePAtrans
     [Arguments]     ${PAfname}   ${RequestType}   ${Requeststatuscode}
    ${conn}=     DatabaseLibrary.Connect To Database   pymssql   ${DBName}   ${DBUser}   ${DBPassword}   ${DBHost}   ${DBPort}
    log to console    ${conn}
    @{results}    Query    ${retrievePAtranQuery}
    FOR  ${seriesno}  IN  @{results}
    log to console     ${seriesno}
    END
    ${seriesno2}=   remove string   ${seriesno}[0]  ()
    ${transactionnumber}=    Set Variable   ${seriesno2}${sequencenumber}
    [return]  ${transactionnumber}


LaunchBrowser
    Open Browser    ${url_qa}   ${browser}
    Sleep    5
    Maximize Browser Window
OpenCounter
    Click Element    ${Open_counter_home}
    Sleep    5
    Click Button    ${Open_alert}
Homepage
    Click Link    ${Home_Page}
ClientCertificateRequestWA
    Click Link    ${Client_Request_WA}
Scrollbar
    Execute Javascript  window.scrollTo(0,2000)
ScrollandClicksave
    Execute Javascript  window.scrollTo(0,2000)
    Click Button    ${WA_Marriage_Save}
ScrollandsaveBirth
    Execute Javascript  window.scrollTo(0,2000)
    Click Button    ${WA_Birth_Save}

FinalSubmitButton
    Click Button    ${Submit_button1}
CloseOverlay
    Click Element    ${Close_overlay}
PrinterSelectionEn
    Select From List By Value   ${EncoPrinters}        PHMNL-F40-MP5
    Click Button    ${EncoFinalPrint}
PrinterPayment
    Select From List By Label    ${Paymentprinter}  PHMNL-F40-MP5
    Click Button    ${PayFinalPrint}
Payment
    Sleep    3
    ${get_amount}   Get Value    ${Amnt}
    Sleep    3
    Log    ${get_amount}
    Sleep    3
    Input Text    ${Amount_tendr}    ${get_amount}
    Click Button    ${Print_Or}

ChangeOutlet
    Click Link    ${More}
    Click Link    ${Sys_Admin}
    Click Link    ${User_link}
    Input Text    ${Input_search}    Swagata
    Click Element    ${Click_Name}
    Select From List By Value    ${Outlet_change}    002
    Click Button    ${User_update}
ChangeoutletCentral
    Click Link    ${More}
    Click Link    ${Sys_Admin}
    Click Link    ${User_link}
    Input Text    ${Input_search}    Swagata
    Click Element    ${Click_Name}
    Select From List By Value    ${Outlet_change}    003
    Click Button    ${User_update}
ChangeWorkUnitDocprocess
    Click Link    ${More}
    Click Link    ${Sys_Admin}
    Click Link    ${User_link}
    Input Text    ${Input_search}    Swagata
    Click Element    ${Click_Name}
    Select From List By Label    ${Office_change}    PSA CO - DOCUMENT PROCESSING UNIT
    Click Button    ${User_update}
 ChangeWorkUnitCourtDecree
    Click Link    ${More}
    Click Link    ${Sys_Admin}
    Click Link    ${User_link}
    Input Text    ${Input_search}    Swagata
    Click Element    ${Click_Name}
    Select From List By Label    ${Office_change}    PSA CO - COURT DECREES UNIT
    Click Button    ${User_update}

ChangeOffice

Processing
    Click Link    ${Pros_menu}
    Click Link    ${Pros_Queue}
Viewimage
    #Click Button    //th[@class='sorting_disabled' and text()='Action']/following::a[1]
    Double Click Element    ${ViewImage}
IssueCertificate
    Click Button    ${Issue}
    Sleep    5
    Click Button    ${Icont}
    Sleep    5
    Click Button    ${Iyes}
    Sleep    5
    Click Button    ${Iok}
IssueCertificate2
    Click Button    ${Issue}
    Sleep    5
    Click Button    ${Iyes}
    Sleep    5
    Click Button    ${Iok}
CRDRCC
    Click Link    ${More}
    Click Link    ${CRD_RCC_LINK}
    Sleep    3
    Click Link    ${Create_Batch}
    Select From List By Value    ${Batch_Type}  9
    Select From List By Value    ${Unit_name}    13
    #Click Element    ${Date_Recieved}
   # Sleep    3
    #Select From List By Label    ${Calendar_Month}   Sep
    #Sleep    3
    #Double Click Element    ${Calendar_Date}
    Input Text    ${CRDRCCDate}    12/09/2022    #current date
    Sleep    3
    Input Text    ${Batch_Save}    text
    Sleep    5
    Execute Javascript  window.scrollTo(0,380)
    Sleep    5
    Click Button    ${CRD_RCC_SUBMIT}
    Sleep    5
    Click Button    ${CRD_Rcc_ok}

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
    uploadFile    ${path}    ${file}


ReqFileUpload
    Click Button    ${Auth_req_file}
    #Click Element    ${file_upload}
    Choose File    ${aUTH_FILE}    C:/Users/majumdas/001.tif
Release-Homepg
    Click Element     ${Rel}
    Click Link   ${CertReleasing}
    Sleep    3s
    Click Element    ${ReleaseCert}
Release-Search-Print
    Click button    ${ReleaseSrch}
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    5
    Click Link    ${ReleaseTransLink}
    Sleep    5
    Execute Javascript  window.scrollTo(0,0)
    Sleep    3
    Click button    ${ReleasePrntBtn}
    Sleep    3
    Select From List By Value    ${ReleaseValidId}      1
    Click Element    ${ReleaseProceed}
    Sleep    2
    Select From List By Index    ${ReleasePrinter}  2
    Sleep    3
    Click Button    ${RelPrintOk}
    Sleep    3
    Double Click Element    ${ReleaseCntnu}
    Sleep    3

SECPAMULTIPLE
    Input Text       ${Secpa_1}     FX000018011
    Input Text    ${Secpa_2}    FX000018012

ViewimageMultrq
    Double Click Element    ${RSO_MULT_IMG}


Release-Secpa
    Sleep    3
    Click Button    ${SaveCntnu}
    Sleep    3
    Double Click Element    ${ReleaseOk}
RequestentryPlace
    Select From List By Value    ${Req_entry_prov}    001
    Select From List By Value    ${Req_entry_city}    00101

Regno
    [Arguments]     ${sreg}     ${ereg}
    Input Text    ${Startreg}    ${sreg}
    Input Text    ${Endreg}    ${ereg}

Valid OR Entry
    [Arguments]     ${Locator}     ${OR_format}
    ${orvalue}=    Set Variable    ${OR_format}
    ${Or_split}=    Split String    ${orvalue}      -
    ${or_1}     Set Variable     ${Or_split}[0]
    ${or_2}     Set Variable    ${Or_split}[1]
    ${or_3}     Set Variable    ${Or_split}[2]
    ${or_4}     Set Variable    ${Or_split}[3]
    ${or_5}     Set Variable    ${Or_split}[4]

    ${or_6}     Set Variable    ${Or_split}[0]${Or_split}[1]${Or_split}[2]${Or_split}[3]${Or_split}[4]
    Input Text   ${locator}    ${or_6}
    log     ${or_6}
    [Return]    ${or_6}

Input OR Text For Reprint OR
    [Arguments]      ${locator}     ${OR_format}
    ${orvalue}=    Set Variable    ${OR_format}
   ${Or_split}=    Split String    ${orvalue}       -
   ${or_number}     Set Variable     ${Or_split}[0]${Or_split}[1]${Or_split}[2]${Or_split}[3]${Or_split}[4]
    Input Text    ${locator}    ${or_number}
    log     ${or_number}
    [Return]    ${or_number}


