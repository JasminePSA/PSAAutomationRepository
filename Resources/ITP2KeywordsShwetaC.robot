*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Library    DateTime
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/ObjectRepository/ITP2LocatorsShwetaC.robot
Variables   C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/Resources/TestDataShwetaC.yml
Library   String
Library   DatabaseLibrary


*** Variables ***

${url}   http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tQVNURUZZUC0x#!
${browser}  Chrome
${DBName}  Civil Registry System
${DBUser}  PSA1User
${DBPassword}  PSA1User*Live
${DBHost}   10.62.150.248
${DBPort}  1433
${cenodeathreqtype}  'CD'
${cenodeathfirstname}     'Liya'
${sequencenumber}   001
${Forprocessing}  'FP'
${retrievetrannoqueryQuery}     select top 1 seriesno from encode.request where requesttype=${cenodeathreqtype} and prifirstname=${cenodeathfirstname} and requeststatuscode=${Forprocessing} order by createdon desc
#${retriveImageidquery}     select top 1 Imageid from Birth where LastName='${CLBirth}' and Firstname='${CFBirth}' and recstatus='${RecStatus}' order by createdon desc
*** Keywords ***

DisconnectDB
    Disconnect From Database
RetriveCedTransfromDB
    [Arguments]     ${cenodeathreqtype}  ${cenodeathfirstname}  ${Forprocessing}
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
    [return]   ${transactionnumber}
Launch Browser1
    Open Browser    ${url}  ${browser}
Open Counter1
    Click Element    ${opencounter}
    Sleep    2S
    Click Element    ${AlertButton}
    Sleep    2S
Homepage
    Click Link    ${Dashb}
ClientCertificateRequestWA
    Click Link    ${HomeLink}
Scrollbar
    Execute Javascript  window.scrollTo(0,2000)
ScrollandClicksave
    Execute Javascript  window.scrollTo(0,2000)
    Click Button    ${MarriageCmnts}
FinalSubmitButton
    Click Button    ${Final}
CloseOverlay
    Click Element    ${ModelClose}
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
    Click Link    ${SysAdmin1}
    Click Link    ${Userinfo}
    Input Text    ${SearchUser}     Swagata
    Click Element    ${Action}
    Select From List By Value    ${OutletID}     002
    Click Button    ${btncnfm}
ChangeoutletCentral
    Click Link    ${More}
    Click Link    ${Admin2}
    Click Link    ${Userinfo1}
    Input Text    ${Searchuser1}    Swagata
    Click Element   ${Action1}
    Select From List By Value    ${OutletID1}    003
    Click Button    ${btncnfm1}
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
Release-Search-Print
    Click button    ${ReleaseSrch}
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    5
    Click Link    ${ReleaseTransLink}
    Sleep    3
    Execute Javascript  window.scrollTo(0,-250)
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
    Click Button    ${ReleaseCntnu}
    Sleep    3
Access HomePage
    Click Element     ${dashboard}
Client Certificate Request
    Click Element    ${Homebutton}
ScrollandsaveBirth
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    2S
    Click Button    ${MarriageCmnts1}
ScrollandsaveDeath
    Execute Javascript  window.scrollTo(0,2000)
    Click Button    ${deathSaveClick1}
CRDRCC
    Click Link    ${CMore}
    Click Link    ${CRD}
    Click Link    ${Createbatch}
    Select From List By Value    ${BatchName}  9
    Select From List By Value    ${Departmentname}    13
    #Click Element    ${Date_Recieved}
   # Sleep    3
    #Select From List By Label    ${Calendar_Month}   Sep
    #Sleep    3
    #Double Click Element    ${Calendar_Date}
    Input Text    ${CRDRCCDate}   ${CRDRCCDetails.CRDRCCDate1}       #current date
    Sleep    3
    Input Text    ${Poperator}   text
    Sleep    5
    Execute Javascript  window.scrollTo(0,380)
    Sleep    5
    Click Button    ${Psubmit2}
    Sleep    5
    Click Button    ${AOK}

Annotation
    Click Link    ${CMore}
    Click Link    ${Annoproshome}
    Click Link    ${ProsAnno}
ApproveAnnotation
    Click Link    ${CMore}
    Click Link    ${Annoproshome}
    Click Link    ${AnnApprDisAppr}
Release-Homepg
    Click Element   ${more}
    Click Link   ${CertReleasing}
    Sleep    3s
    Click Element    ${ReleaseCert}
Release-Secpa
    Sleep    3
    Click Button    ${SaveCntnu}
    Sleep    5
    Double Click Element    ${ReleaseOk}
Close Counter
    Click Element    ${opencounter}
    Sleep    2S
    Click Element   ${onClickRightButtonCallBack1}
    Sleep    2S
    Click Element    ${AlertButton}
    Sleep    2S
File Upload
    Click Button    ${ADDCRDBTN}
    #Click Element   //input[@id='file']
    Sleep    5S
    Choose File    ${uploadimg}    C:/Users/ChandrS1/001.tif

jsexecution
    ${ele}      Get WebElement      //*[@id="finalSubmitbtn"]
    set selenium timeout  5 seconds
    Execute JavaScript      arguments[0].click()    ARGUMENTS       ${ele}

    sleep   6











