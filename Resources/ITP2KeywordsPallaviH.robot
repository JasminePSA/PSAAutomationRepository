*** Settings ***
Library  SeleniumLibrary
Library     FakerLibrary
Resource    ../ObjectRepository/ITP2LocatorsPallaviH.robot
Resource    ../Resources/ITP2KeywordsPallaviH.robot
Library     ../Resources/Upload.py
Library     DatabaseLibrary
Library     String

*** Variables ***
#MarriageEncoding
#${path}     C:\Users\hosamanp\PycharmProjects\ITP2Automation\Object Repository\uploadfile.py
#${file}     uploadfile.py
${Browser}      chrome
${qa_url}       http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tSE9TQU1BTlAtMQ==#!
${DBName}       Civil Registry System
${DBUser}        PSA1User
${DBPassword}    PSA1User*Live
${DBHost}        10.62.150.248
${DBPort}    1433
${cibirthreqtype}    'CI'
${authrequtype}     'AU'
${Deathsubtype}     'D'
${cibirthfirstname}      'Pallavi5'
${sequencenumber}     001

${retrievetrannoqueryQuery}     select top 1 seriesno from encode.request where requesttype=${cibirthreqtype} and prifirstname=${cibirthfirstname} order by createdon desc
${retrievetrannodeathqueryQuery}     select top 1 seriesno from encode.request where requesttype=${authrequtype} and requestsubtype=${Deathsubtype} and prifirstname=${cibirthfirstname} order by createdon desc


*** Keywords ***

DisconnectDB
    Disconnect From Database

RetriveCIBTransfromDB

    [Arguments]     ${cibirthreqtype}  ${cibirthfirstname}
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


CRSLogin
    [Documentation]     This test case opens the url and accesses the home page of the CRS application
    Open Browser    ${qa_url}   ${Browser}
    Sleep    25s
    Maximize Browser Window
    #Click Element   //input[@id='ToggleSlider']
    #Sleep    3s
    #Click Button    //button[@id='AlertButton']
    Sleep    10s
    Click Element   ${Dashbrd}
    Sleep    3s

EncodingRequestEntry
    Click Element   ${CertReq}
    Sleep    3s
    Click Element   ${ReQEntrymenu}

EncodingClientCertReq_WalkinReqEntry
    Click Element   ${CertReq}
    Sleep    3s
    Click Element   ${Walk-inRequestEntrymenu}
    Sleep    3s

EncodingClientCertReq_WalkinReqEntryPayment
    Click Element   ${CertReq}
    Sleep    3s
    Click Element   ${WalkinRequestEntryPaymmenu}
    Sleep    3s

RequesterAddress
#Other than Philippines
    Input Text    ${ReqstrtxtAddress}    AddressLine1
    Input Text    ${ReqstrstreetAddress}    AddressLine2
    Select From List By Value    ${ReqstrChildCountry}     004

RequesterAddressPH
    Input Text    ${ReqstrtxtAddress}    AddressLine1
    Input Text    ${ReqstrstreetAddress}    AddressLine2
    #Select From List By Value    ${ReqstrChildCountry}     608
    Select From List By Value    ${ReqstrChildPrvnc}        001
    Sleep    3s
    Wait Until Keyword Succeeds     1 min   10 sec   Select From List By Index    ${ReqstrChildCity}     1
    Sleep    3s
PrinterSelection
    Select From List By Value   ${EncoPrinters}        PHMNL-F40-MP5
    Click Button    ${EncoFinalPrint}

ReceivePayment
    Click Element    ${ClientReqPayment}
    Click Element   ${ReceivePayment}
    Sleep    3s

Payment
    ${get_amount}   Get Value    ${TotalAmt}
    Sleep    5s
    Scroll Element Into View    ${AmtTnd}
    Sleep    5s
    Input Text    ${AmtTnd}    ${get_amount}
    Log    ${get_amount}
    Sleep    5s
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    10s
    Click Button    ${PrintOR}
    Sleep    10s
    Close Browser


jsexecution
    ${ele}      Get WebElement      //*[@id="finalSubmitbtn"]
    set selenium timeout  5 seconds
    Execute JavaScript      arguments[0].click()    ARGUMENTS       ${ele}
    sleep   6



CashBalancing
    Click Element    ${ClientReqPayment}
    Click Element   ${CashBalancing}
    Sleep    3s

ReceiveCO
    Click Element    ${ClientReqPayment}
    Click Element   ${ReceiveCO}
    Sleep    3s

Confirm Deposit
    Click Element   ${ClientReqPayment}
    Click Element   ${ConfirmDeposit}
    Sleep    3s

MakePayment
    Click Button    ${PaySrchbtn}
    Sleep    3s
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3s
    Click Link  ${ShowReceivePayment}
    #Click Link  //*[@id="Payment"]/tbody/tr/td[2]/a
    Sleep    5s
    Select From List By Value    ${ValidID}     0
    #Input Text    //input[@id='txtAmountTendered']
    Sleep    5s

#CheckPayment
    Input Text    ${PaymentRefNo}      4321
    Input Text   ${Chckdt}      text
    Input Text    ${Payment_txtSource}   HDFC

PrintOR
        Click Button    ${PrintOR}
        Sleep    10s

OutletSwitch-CentraltoSec
   Click Element     ${MoreOption}
   Sleep    3
   Click Link    ${SysAdmin}
   Sleep    8s
   Click Element    ${UserDetInfo}
   Sleep    8s
   Input Text    ${SrchUserid}        003-Hosamanp
   Sleep    8s
   Click Element    ${EditUsrInfo}
   Sleep    5
   Select From List By Value    ${OutletId}     002
   Sleep    3s
   Click Button    ${SaveOuteltId}
   Sleep    3s

 Prcoessing Home page
    Click Link    ${CertProcessHome}
    Sleep    3s
    Click Link    ${ProcessQue}
    Sleep    3s
ProcessQue-Negative Cert Generation
    Click Button    ${ProcessCRDQry}
    Sleep    5s
    Click Button    ${ProcessSuccessOK}
    Sleep    5s
    Click Button    ${ProcessVeiSrch}
    Sleep    5s
    Click Button    ${ProcessSuccessOK}
    Sleep    5s
    Click Button    ${GenNegCert}
    Sleep    5s
    Click Button    ${Iyes}
    Sleep    5s
    Click Button    ${AlertButton}
    Sleep    5s

OutletSwitch-SectoCentral
   Click Element     ${MoreOption}
   Click Link    ${SysAdmin}
   Sleep    3s
   Click Element    ${UserDetInfo}
   Sleep    3s
   Input Text    ${SrchUserid}        003-Hosamanp
   Sleep    3s
   Click Element    ${EditUsrInfo}
   Sleep    3s
   Select From List By Value    ${OutletId}     003
   Sleep    3s
   Click Button    ${SaveOuteltId}
   Sleep    3s

Release-Homepg
    Click Element     ${MoreOption}
    Click Link   ${CertReleasing}
    Sleep    3s
    Click Element    ${ReleaseCert}
    Sleep    3s

Release-Search-Print
    Click button    ${ReleaseSrch}
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    5s
    Click Link    ${ReleaseTransLink}
    #Sleep    3s
    Execute Javascript  window.scrollTo(0,-250)
    Sleep    5s
    Click button    ${ReleasePrntBtn}
    Sleep    5s
    Select From List By Value    ${ReleaseValidId}      1
    Sleep    3s
    Click Element    ${ReleaseProceed}
    Sleep    3s
    Select From List By Index    ${EncoPrinters}  2
    Sleep    3s
    Click Button    ${Release_finalprint}
    Sleep    10s
    Click Button    ${ReleaseCntnu}
    Sleep    10s
Release-Secpa
    Click Button    ${SaveCntnu}
    Sleep    3s
    Click Button    ${ReleaseOk}

CRD RCC Submission
     Click Element     ${MoreOption}
     Sleep    5s
     Click link     ${CRDSubRCC}
     Sleep    5
     Click Element    ${CreateBatch}
     Select From List By Value    ${Batchtype}      9
     Execute Javascript  window.scrollTo(0,2000)
     Select From List By Value    ${UnitDep}    13
     Click Element    ${Date_Rcvd}
    Sleep    3
    Select From List By Label    ${Calendar_Month}   Sep
    Sleep    3
    Double Click Element    ${Calendar_Date}
    Input Text    ${Date_Rcvd}    09/30/2022    #current date
    Sleep    3

    #Select From List By Label    ${Calendar_Month}   Sep
    #Sleep    3
    #Double Click Element    ${Calendar_Date}
    #Sleep    3
    Input Text    ${RCCtext}    text
    Sleep    5
    Execute Javascript  window.scrollTo(0,380)
    Sleep    5
    Click Button    ${RCCSubmit}
    Sleep    5
    Click Button    ${RCCAlertbtn}
#Annotation
    #Click Link   ${More}
    #Click Link    //a[@id='131' and text()='Annotation Processing']
    #Click Link      link:Process Annotation Request
    #Input Text       ${Annotran}       ${Tran_no}
    #Sleep   3s
    #Click Button     ${Annosearch}
    #Sleep    3s
    #Execute Javascript  window.scrollTo(0,2000)

ProcessAnnotRequest
    Click Button        ${OrgnlCRD}
    Execute Javascript  window.scrollTo(0,0)
    Sleep    5s
    Execute Javascript  window.scrollTo(0,100)
    Select From List By Value    ${RegBooktype}     I
    Input Text    ${RegNum}     2022-0501066
    Execute Javascript  window.scrollTo(0,200)
    Select From List By Value   ${AnnProvince}      001
    Select From List By Value       ${AnnCity}      00101
    Click Button    ${VEIRecSrch}
    Execute Javascript  window.scrollTo(0,2000)
    Click Button    ${VEIRecCntnuBtn}
    Execute Javascript  window.scrollTo(0,0)
    Select From List By Value    ${AnnTempl}        1
    Execute Javascript  window.scrollTo(0,200)
    Select From List By Value    ${AnnPosition}     Bottom
    Click Button    ${AnnApply}
    Execute Javascript  window.scrollTo(0,2000)
    Click Button    ${AnnPartialCntnu}
    Execute Javascript  window.scrollTo(0,2000)
    Click Button    ${AnnSubmit}
    Click Button    ${AnnSubmitAppr}

 ApproveAnnotation
    Click Link    ${More}
    Click Link   ${AnnotationProcessing}
    Click Link    ${AnnApprDisAppr}


 Annotation Approval
        Click Link   ${More}
        Click Link    ${AnnApprDisAppr}
        Input Text     ${Annotran}      ${Tran_no}
        Click Button     ${Annosearch}
        Execute Javascript  window.scrollTo(0,2000)
        Click Button    ${AnnApprBtn}
        Click Button     ${Iyes}
        Click Button     ${Iok}
        Select From List By Index     ${EncoPrinters}       2
        Click Button     ${EncoFinalPrint}
        Click Button     ${AlertButton}

AuthenticationDeath-TiffImg
        Click Button    ${AddImgDeath}
        Choose File    ${AddImgDeath}   C:/Users/Hosamanp/Desktop/Tiff Files/Manohar_Birth certificate - blank - 2 pages.tiff
        Sleep    15

AuthBirth_ReqEntryTiffImg
    Click Button    ${tiffimgReqEnt}
    #Click Element    ${file_upload}
    Choose File    ${fileupload}    ${add_file}

File Upload
    [Arguments]     ${path}     ${file}
    uploadfile      ${path}     ${file}


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

UnconvertedSrchJobReq
    Click Element    ${MoreOption}
    Sleep    3s
    Click Element    ${UnconvertedMV}
    Sleep    3s
    Click Element    ${Unconv_SrchVwJobreq}

UnconvMVDestUnitChange
   Click Element     ${MoreOption}
   Sleep    3s
   Click Link    ${SysAdmin}
   Sleep    3s
   Click Element    ${UserDetInfo}
   Sleep    3s
   Input Text    ${SrchUserid}        003-Hosamanp
   Sleep    5s
   Click Element    ${EditUsrInfo}
   Sleep    5

ChangeWorkUnitDocprocess
    Click Link    ${MoreOption}
    Sleep    3s
    Click Link    ${SysAdmin}
    Sleep    3s
    Click Link    link:User Detail Information
    Sleep    3s
    Input Text    ${SrchUserid}    003-Hosamanp
    Sleep    3s
    Click Element    ${SysadminAction}
    Sleep    3s
    Select From List By Value    ${Sysadmin_OfficeId}        PSA CO - DOCUMENT PROCESSING UNIT
    Sleep    3s
    Click Button    ${SaveOuteltId}
    Sleep    3s

ChangeWorkUnitDCC
    Click Link    ${MoreOption}
    Sleep    3s
    Click Link    ${SysAdmin}
    Sleep    3s
    Click Link    link:User Detail Information
    Sleep    3s
    Input Text    ${SrchUserid}      003-Hosamanp
    Sleep    3s
    Click Element    ${SysadminAction}
    Sleep    3s
    Select From List By Value    ${Sysadmin_OfficeId}     PSA CO - DOCUMENT CAPTURE CENTER
    Sleep    3s
    Click Button    ${SaveOuteltId}
    Sleep    3s






































