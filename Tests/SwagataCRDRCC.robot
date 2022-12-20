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
 CRDRCC
    [Documentation]     Bug-258606 CRD Submission RCC - Print Transmittal report
    LaunchBrowser
    ${Clname}   Last Name
    #${Cfname}   First Name
    ${Cflname}  Last Name
    ${Cffname}  First Name
    ${Cmlname}  Last Name
    ${Cmfname}  First Name
    ${Reqlname}     Last Name
    ${Reqfname}     First Name
    ${Address}      Address
    Title Should Be    Civil Registry System
    #OpenCounter     #close the counter before every run
    Homepage
    ClientCertificateRequestWA
    Click Link    link:Walk-in Request Entry
    Select From List By Value    id:WalkInTransactiontype  PA-B
    Sleep    3
    Select From List By Value    id:documentSubType     BC-CA
    Select Checkbox    ${Changename_chk1}
    Select Checkbox    ${Changename_chk2}
    Select Checkbox    ${Changename_chk3}
    Sleep    3
    Select Checkbox    ${Changename_chk4}
    sleep    2
    select checkbox    ${Changename_chk5}
    sleep    2
    select checkbox     ${Changename_chk6}
    Click Button    ${WDone}
    Sleep    2
    Click Button    ${Wsubmit}
    Input Text    ${Cln}    ${Clname}
    Input Text    ${Cfn}    Chini
    Select From List By Value    ${S_ex}    Female
    Select From List By Value    ${B_month}     01
    Input Text    ${B_date}    01
    Input Text    ${B_year}    2018
    Select From List By Value    ${B_province}  001
    Select From List By Value    ${B_city}  00101
    Input Text    ${B_flame}    ${Cflname}
    Input Text    ${B_ffame}    ${Cffname}
    Input Text    ${B_mlame}    ${Cmlname}
    Input Text    ${B_mfame}    ${Cmfname}
    Scrollbar
    Sleep    5
    Select From List By Value    ${purpose2}     CL
    ScrollandsaveBirth
    Input Text    ${Req_ln}    ${Reqlname}
    Input Text    ${Req_fn}    ${Reqfname}
    Input Text    ${Req_ad}    ${Address}
    Select From List By Value    ${Req_country}     016
    Sleep    5
    Scrollbar
    Sleep    10
    FinalSubmitButton
    Sleep    5
    PrinterSelectionEn
    Sleep    3
    ${get_ref}  Get Text    ${ref_No}
    Log    ${get_ref}
    Sleep    5
    Click Button    ${Close_btn}
    ${PAtransaction}=      RetrivePAtrans   ${PAfname}   ${RequestType}   ${Requeststatuscode}
    Disconnect DB
    Sleep    3
    CRDRCC
    Input Text    ${TrannoPrm}    ${PAtransaction}
    Execute Javascript  window.scrollTo(0,2800)
    Sleep    5
    Click Button    ${RCCSave}
    Sleep    5
    Execute Javascript  window.scrollTo(0,0)
    Sleep    5
    Click Button    ${Print_Tran_CRD}
    Sleep    5
    Click Button    ${Defyes}
    Sleep    3
    Select From List By Label    ${Select_Print_CRD}      PHMNL-F40-MP5
    Sleep    3
    Click Button    ${EncoFinalPrint}
    Sleep    3
    Click Button    ${Open_alert}