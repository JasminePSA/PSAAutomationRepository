*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary
Library  String
Library  Process
Resource  C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/ObjectRepository/ITP2LocatorsStefy.robot
Resource  C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/TestsWithORDependency/StefyRegularSubmissionDeath.robot
Library  C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/Resources/Upload.py
Library    XML
Library  DatabaseLibrary

*** Variables ***
${browser}  chrome
${url_qa}  http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tQVNURUZZUC0x#!
${web_access}   http://ustr-erl2-3644.na.uis.unisys.com:9202/Census/ViewDocumentOnline
${getbatch}   //*[@id="ForwardBatchResultsDCCTable"]/tbody/tr[2]//td[3][text()='58']
${DBName}  Civil Registry System
${PdveDBName}  CRS_PDVE
${DBUser}  PSA1User
${DBPassword}  PSA1User*Live
${DBHost}   10.62.150.248
${DBPort}  1433

${cideathreqtype}  'CI'
${cideathfirstname}     'Stefy'
${sequencenumber}   001

${deathbooktype}  'I'
${deathfirstname}  'Stefy'

${supplytype}  'J'
${deathtype}  'F'

${husfirstname}  'Sunil'
${cimarriagetype}  'CI'
${deferredfirstname1}  'Stefy'

${cot1}     '
${cot2}     '
${requestdate}  '2022-11-12'
${timestart}  '2022-10-12 16:07:24.540'
${timeend}  '2022-10-12 16:07:24.540'
${createdon}  '2022-10-12 16:07:24.540'

${retrievetrannoqueryQuery}     select top 1 seriesno from encode.request where requesttype=${cideathreqtype} and prifirstname=${cideathfirstname} order by createdon desc
${retrivedrennoqueryQuery}   select top 1 DReN from dbo.death where RegBookType=${deathbooktype} and firstname=${deathfirstname} order by createdon desc
${retrivesupplydrennoqueryQuery}   select top 1 DReN from dbo.death where RegBookType=${supplytype} and firstname=${deathfirstname} order by createdon desc
${retrivedeathdrennoqueryQuery}   select top 1 DReN from dbo.death where RegBookType=${deathtype} and firstname=${deathfirstname} order by createdon desc
${retrievemarriagetrannoqueryQuery}     select top 1 seriesno from encode.request where requesttype=${cimarriagetype} and prifirstname=${husfirstname} order by createdon desc
${retrievebirthtrannoQuery}     select top 1 seriesno from encode.request where requesttype=${cimarriagetype} and prifirstname=${deferredfirstname1} order by createdon desc
${updatedeath}  update encode.request set requestdate=${requestdate} where SeriesNo=
${updateencoder}  update encode.requester set RequestDate=${requestdate} where RequestSeriesNo=
*** Keywords ***
ConnectDB

Disconnect DB
    Disconnect from Database
RetrieveCIDdrenfromdb
    [Arguments]     ${deathbooktype}  ${deathfirstname}
    ${conn}=     DatabaseLibrary.Connect To Database   pymssql   ${PdveDBName}   ${DBUser}   ${DBPassword}   ${DBHost}   ${DBPort}
    log to console    ${conn}
    #${output}=      Execute SQL String  select top 1 seriesno from encode.request where requesttype=${cibirthreqtype} and prifirstname=${cibirthfirstname} order by createdon desc
    @{results}    Query    ${retrivedrennoqueryQuery}
    #@{results}    Query    ${retrievecenodeathtrannoquery}
    FOR  ${drenno}  IN  @{results}
    log to console     ${drenno}
    END
    ${drenno2}=   remove string   ${drenno}[0]  ()
    #${transactionnumber}=    Set Variable   ${seriesno2}${sequencenumber}
     [return]  ${drenno2}

Retrievedeathdrenfromdb
    [Arguments]     ${deathtype}  ${deathfirstname}
    ${conn}=     DatabaseLibrary.Connect To Database   pymssql   ${PdveDBName}   ${DBUser}   ${DBPassword}   ${DBHost}   ${DBPort}
    log to console    ${conn}
    #${output}=      Execute SQL String  select top 1 seriesno from encode.request where requesttype=${cibirthreqtype} and prifirstname=${cibirthfirstname} order by createdon desc
    @{results}    Query    ${retrivedrennoqueryQuery}
    #@{results}    Query    ${retrievecenodeathtrannoquery}
    FOR  ${drenno}  IN  @{results}
    log to console     ${drenno}
    END
    ${drenno2}=   remove string   ${drenno}[0]  ()
    #${transactionnumber}=    Set Variable   ${seriesno2}${sequencenumber}
     [return]  ${drenno2}

Retrievesupplydrenfromdb
    [Arguments]     ${supplytype}  ${deathfirstname}
    ${conn}=     DatabaseLibrary.Connect To Database   pymssql   ${PdveDBName}   ${DBUser}   ${DBPassword}   ${DBHost}   ${DBPort}
    log to console    ${conn}
    #${output}=      Execute SQL String  select top 1 seriesno from encode.request where requesttype=${cibirthreqtype} and prifirstname=${cibirthfirstname} order by createdon desc
    @{results}    Query    ${retrivesupplydrennoqueryQuery}
    #@{results}    Query    ${retrievecenodeathtrannoquery}
    FOR  ${drenno}  IN  @{results}
    log to console     ${drenno}
    END
    ${drenno2}=   remove string   ${drenno}[0]  ()
    #${transactionnumber}=    Set Variable   ${seriesno2}${sequencenumber}
     [return]  ${drenno2}


RetrieveCIBtransactionfromdb
    [Arguments]     ${cideathreqtype}  ${cideathfirstname}
    ${conn}=     DatabaseLibrary.Connect To Database   pymssql   ${DBName}   ${DBUser}   ${DBPassword}   ${DBHost}   ${DBPort}
    log to console    ${conn}
    #${output}=      Execute SQL String  select top 1 seriesno from encode.request where requesttype=${cibirthreqtype} and prifirstname=${cibirthfirstname} order by createdon desc
    @{results}    Query    ${retrievetrannoqueryQuery}
    #@{results}    Query    ${retrievecenodeathtrannoquery}
    FOR  ${seriesno}  IN  @{results}
    log to console     ${seriesno}
    END
    ${seriesno2}=   remove string   ${seriesno}[0]  ()
    ${transactionnumber}=    Set Variable   ${seriesno2}${sequencenumber}
     [return]  ${transactionnumber}


RetrieveCIMtransactionandupdatefromdb
    [Arguments]     ${cimarriagetype}  ${husfirstname}
    ${conn}=     DatabaseLibrary.Connect To Database   pymssql   ${DBName}   ${DBUser}   ${DBPassword}   ${DBHost}   ${DBPort}
    log to console    ${conn}
    #${output}=      Execute SQL String  select top 1 seriesno from encode.request where requesttype=${cibirthreqtype} and prifirstname=${cibirthfirstname} order by createdon desc
    @{results}    Query    ${retrievemarriagetrannoqueryQuery}
    #@{results}    Query    ${retrievecenodeathtrannoquery}
    FOR  ${seriesno}  IN  @{results}
    log to console     ${seriesno}
    END
    ${seriesno2}=   remove string   ${seriesno}[0]  ()
    ${seriesnostring}=  Catenate    ${cot1}${seriesno2}${cot2}
    #${seriesnoconvert}=  Convert To String  ${seriesno2}
    #${transactionnumber}=    Set Variable   ${seriesno2}${sequencenumber}
    #${updaterequestdatequery}   update encode.request set RequestDate=${requestdate} where SeriesNo=${seriesno2}
    #${updatename}  update encode.request set AuxFirstname='Lissy' where SeriesNo=${seriesno2}
    #Execute Sql String  update encode.request set AuxFirstname='Lissy' where SeriesNo=${seriesno2}
   # ${result1}=  Query  ${updatedeath}'${seriesno}'
     #${result1}=  Query  ${updatedeath}${seriesnostring}
    ${result1}=  Execute Sql String  ${updatedeath}${seriesnostring}
    ${result2}=  Execute Sql String  ${updateencoder}${seriesnostring}
     #Execute Sql String    update encode.requester set RequestDate=${requestdate} where RequestSeriesNo=${seriesno2}
     [return]  ${seriesno2}
RetrieveCIBtransactionandupdatefromdb
    [Arguments]     ${cimarriagetype}  ${deferredfirstname}
    ${conn}=     DatabaseLibrary.Connect To Database   pymssql   ${DBName}   ${DBUser}   ${DBPassword}   ${DBHost}   ${DBPort}
    log to console    ${conn}
    #${output}=      Execute SQL String  select top 1 seriesno from encode.request where requesttype=${cibirthreqtype} and prifirstname=${cibirthfirstname} order by createdon desc
    @{results}    Query    ${retrievebirthtrannoQuery}
    #@{results}    Query    ${retrievecenodeathtrannoquery}
    FOR  ${seriesno}  IN  @{results}
    log to console     ${seriesno}
    END
    ${seriesno2}=   remove string   ${seriesno}[0]  ()
    ${seriesnostring}=  Catenate    ${cot1}${seriesno2}${cot2}

    ${result1}=  Execute Sql String  ${updatedeath}${seriesnostring}
    ${result2}=  Execute Sql String  ${updateencoder}${seriesnostring}
     #Execute Sql String    update encode.requester set RequestDate=${requestdate} where RequestSeriesNo=${seriesno2}
     [return]  ${seriesno2}
Open Counter
    [Documentation]  This keyword is using for opens the counter of CRS application
    Open Browser  ${url_qa}  ${browser}
    Maximize Browser Window
    Sleep    3s
#    Click Button    ${open_button}
#    Sleep    3s
#    Click Button    ${close_success_button}
    Sleep    3s
    Click Element    ${application_home}
    #Click Element    ${ccr_Link}
    #Click Element    ${wrp_Link}

Date
    #Select From List By Index    ${month}   1
    #Get Selected List Value    ${month}
    Select From List By Value    ${death_month}    01
    Input Text    ${death_date}    12
    Input Text    ${death_year}    2021
Country name
   Select From List By Value    ${country}  608
   Select From List By Value    ${province}  001
   Select From List By Value    ${city}  00101

Purpose
    Select From List By Value    ${purpose}


Requester country name
    #Select From List By Value    ${requester_country}  004
    Select From List By Value    ${requester_country}   608
    Select From List By Value   ${requester_province}  001
    Sleep    3s
    Click Element   ${requester_city}
    Select From List By Value    id=cmbCity  00101

Scrollbar
    Execute Javascript  window.scrollTo(0,2000)



Payment
    [Documentation]  This keyword is using for capture amount and enter into the specific text box and Print OR in Walking Request entry and payment epic
    ${get_value}    Get Text   ${read_amount}
    Log    ${get_value}
    Input Text    ${tot_amount}   ${get_value}

    Execute Javascript  window.scrollTo(0,300)
    Sleep    3s
    Click Element    ${print_or}


Issue Negative Certificate
    [Documentation]  This keyword is using for issue negative certificate

    Click Element    ${click_search2}
    Sleep    3s
    Click Element    ${norecord_ok}
    Sleep    3s
    Click Element    ${search_vei}
    Sleep    3s
    Execute Javascript  window.scrollTo(0,450)
    Sleep    5s
    Click Element    ${click_search2}
    Sleep    3s
    Click Element    ${alert_ok}
    Sleep    3s
    Click Element    ${negative}
    Sleep    3s
    Click Element    ${confirm_yes}
    Sleep    3s
    Click Element    ${success_ok}
Generate Advisory
    [Documentation]  This keyword is using for issue positive certificate
    Execute Javascript  window.scrollTo(0,300)
    Sleep    2s
    Input Text    ${enter_mren}    03900B22BD014

   # Execute Javascript  window.scrollTo(0,400)
    Sleep    5s
    Click Element    ${click_search1}
    Sleep    3s
    Scrollbar
    Sleep    3s
    Click Element    ${add_selection}
    Execute Javascript  window.scrollTo(0,300)
    Sleep    2s
    Click Button    ${click_addselection}
    Sleep    3s
    Click Button    ${advisory}
    Sleep    3s
    Click Button    ${ceno_yes}
    Sleep    3s
    Click Button    ${Iok}
Issue Positive Certificate
    [Documentation]  This keyword is using for issue positive certificate
    Execute Javascript  window.scrollTo(0,100)
    Sleep    2s
    Input Text    ${enter_mren}    00201B21BC014

    Execute Javascript  window.scrollTo(0,450)
    Sleep    5s
    Click Element    ${click_search1}
    Sleep    3s
    Click Element    ${ViewImage}

    Click Button    ${Issue}
    Sleep    5
    Click Button    ${Icont}
    Sleep    5
    Click Button    ${Iyes}
    Sleep    5
    Click Button    ${Iok}

Issue Positive Certificate for Death
    [Documentation]  This keyword is using for issue positive certificate
    Execute Javascript  window.scrollTo(0,100)
    Sleep    2s
    ${drenvalue1}=      RetrieveCIDdrenfromdb    ${deathbooktype}  ${deathfirstname}
    Disconnect DB
    Input Text    ${enter_dren}    ${drenvalue1}

    Execute Javascript  window.scrollTo(0,450)
    Sleep    5s
    Click Element    ${click_search2}
    Sleep    3s
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3s
    Click Element    ${viewimage1}
    Sleep    5s
    Click Button    ${Issue}
    Sleep    5
    Click Button    ${Icont}
    Sleep    5
    Click Button    ${Iyes}
    Sleep    5
    Click Button    ${Iok}
Authentication Reject
    Execute Javascript  window.scrollTo(0,400)
    Sleep    5s
    Click Element    ${click_search1}
    Sleep    3s
    Click Element    ${norecord_ok}
    Sleep    3s
    Click Button    ${specimen}
    Sleep    3s
    Click Button    ${confirm_yes}
    Sleep    3s
    Input Text    ${speci_first_name}    Stefy
    Input Text    ${speci_last_name}    Stefy
    Execute Javascript  window.scrollTo(0,400)
    Input Text    ${speci_date}     02/07/2021
    Click Button    ${speci_search}
    Click Button    ${click_rejection}
    Select Checkbox    ${check1}
    Select Checkbox    ${check2}
    Click Button    ${reject_button}
    Click Button    ${AAYes}
    Click Button    ${AAalert}

VO CENODEATH
    [Documentation]  This keyword is using for issue VO CENODEATH certificate
    Execute Javascript  window.scrollTo(0,350)
    Click Element    ${click_rso_search}
    Sleep    3s
    Click Element    ${norecord_ok}
    Click Element    ${search_vei}
    Sleep    3s
    Click Element    ${alert_ok}
    Click Element    ${vo_cenodeath_certi}
    Sleep    3s
    Click Element    ${cenodeath_confirm}
    Sleep    3s
    Click Element    ${success_ok}
VO CENOMAR
    [Documentation]  This keyword is using for issue VO CENOMAR certificate
    Execute Javascript  window.scrollTo(0,250)
    Sleep    3s
    Click Element    ${click_rso_search}
    Sleep    3s
    Click Element    ${norecord_ok}
    Click Element    ${search_vei}
    Sleep    3s
    Click Element    ${alert_ok}
    Click Element    ${cenomar_certi}
    Sleep    3s
    Click Element    ${cenodeath_confirm}
    Sleep    3s
    Click Element    ${success_ok}



Close Counter
    [Documentation]  This keyword is using for close the counter
    Click Element    ${application_home}
    Click Element    ${click_counter}
    Sleep    3s
    Click Button    ${confirm_yes}
    Sleep    5s
    Click Button    ${ok_button}

Change Outletto 002
    [Documentation]  This keyword is using for change the outlet to 002
    Sleep    3s
    Click Element    ${more_option}
    Sleep    3s
    Click Element    ${sys_admin}
    Sleep    4s
    Click Element    ${user_detail_info}
    Input Text    ${search}    US001
    Click Element    ${edit}
    Select From List By Value    ${secondary_backoffice}  002
    Click Button    ${save}
    Sleep    10s
    Close Counter
    Close Browser
    Open Browser  ${url_qa}  ${browser}
    Maximize Browser Window
    Sleep    3s
    Click Button    ${open_button}
    Sleep    3s
    Click Button    ${close_success_button}
    Sleep    3s
    Click Element    ${application_home}

Change Outletto 002 RSO
    [Documentation]  This keyword is using for change the outlet to 002 with RSO role
    Sleep    3s
    Click Element    ${more_option}
    Sleep    3s
    Click Element    ${sys_admin}
    Sleep    4s
    Click Element    ${user_detail_info}
    Input Text    ${search}    US001
    Click Element    ${edit}
    Select From List By Value    ${secondary_backoffice}  002
    Click Button    ${save}
    Sleep    10s
    Input Text    ${search}    US001
    Click Element    ${edit}
    Click Button    //button[@id='btnSetRole']
    Sleep    3s
    Select Checkbox    //input[@id='selectall']
    Sleep    3s
    Unselect Checkbox    //input[@id='selectall']
    Sleep    3s
    Select Checkbox    //input[@id='chklistitem1']
    Execute Javascript  window.scrollTo(0,1000)
    Sleep    3s
    Select Checkbox    //input[@id='chklistitem73']
    Select Checkbox    //input[@id='chklistitem74']
    Scrollbar
    Sleep    3s
    Click Button    //button[@id='btnRoleConfirm']
    Sleep    3s
    Click Button    //button[@id='AlertButton']
    Sleep    3s
    Close Counter
    Close Browser
    Open Counter

Change to ReviewLinking
    [Documentation]  This keyword is using for change the role toreview linking
    Sleep    3s
    Click Element    ${more_option}
    Sleep    3s
    Click Element    ${sys_admin}
    Sleep    4s
    Click Element    ${user_detail_info}

    Input Text    ${search}    US001
    Click Element    ${edit}
    Click Button    //button[@id='btnSetRole']
    Sleep    3s
    Select Checkbox    //input[@id='selectall']
    Sleep    3s
    Unselect Checkbox    //input[@id='selectall']
    Sleep    3s
    Select Checkbox    //input[@id='chklistitem1']
    Execute Javascript  window.scrollTo(0,300)
    Sleep    3s
    Select Checkbox    //input[@id='chklistitem9']

    Scrollbar
    Sleep    3s
    Click Button    //button[@id='btnRoleConfirm']
    Sleep    3s
    Click Button    //button[@id='AlertButton']
    Close Counter
    Close Browser
    Open Counter
Change Outletto 003
    [Documentation]  This keyword is using for change the outlet to 003
    Sleep    4s
    Click Element    ${more_option}
    Click Element    ${sys_admin}
    Click Element    ${user_detail_info}
    Input Text    ${search}    US001
    Click Element    ${edit}
    Select From List By Value    ${Central_office}  003
    Click Button    ${save}
    Sleep    10s
    Close Counter
    Close Browser
    Open Counter

RSO Dren Linking Selection
    Sleep    3s
    #Input Text    ${tran_no_search}    08320-003-00041-001
    Click Element    ${click_trans}
    Sleep    5s
    Execute Javascript  window.scrollTo(0,400)
    Sleep    3s
    Click Element    ${click_search2}
    Scrollbar
    Sleep    3s
    Click Element    ${add_selection}
    Sleep    3s
    Execute Javascript  window.scrollTo(0,300)
    Sleep    2s
    ${deathdren1}=      Retrievedeathdrenfromdb    ${deathtype}  ${deathfirstname}
    Disconnect DB
    Sleep    2s
    Input Text    //input[@id='DrenField']     ${deathdren1}
    Sleep    5s
    Execute Javascript  window.scrollTo(0,400)
    Sleep    3s
    Click Element    ${click_search2}
    Sleep    3s
    Scrollbar
    Sleep    3s
    Click Element    ${add_selectsecond}
    Execute Javascript  window.scrollTo(0,400)
    Sleep    2s
    Click Button    ${click_addselection}
    Sleep    3s

    Execute Javascript  window.scrollTo(0,300)
    Sleep    2s
    Click Element    //*[@id="PreliminaryDRDeathViewTable"]/tbody/tr[1]/td[1]/input
    Sleep    3s

RSO Dren Linking
    Scrollbar
    Sleep    3s
    Click Button    //button[@id='btnDDReNLink']
    Sleep    3s
    Click Button    //button[@id='btnDModalConfirm']
    Sleep    3s
    Click Button    //div[@id='successfullforDlinking']//button[@id='submitdone']
    Sleep    3s

RSO Dren Unlinking
    Scrollbar
    Sleep    3s
    Click Button    //button[@id='btnDDReNUnLink']
    Sleep    3s
    Input Text    //input[@id='deathReasonTxt']    Unlink
    Click Button    //button[@id='deathAddReason_Btn']
    Sleep    3s
    Click Button    //button[@id='btnmdAlertOK']
    Sleep    3s
    Click Button    //button[@id='Yesbutton']
    Sleep    3s
    Click Button    //button[@id='insert_Death_Request_Btn']
    Sleep    3s

Select Printer
    Click Element    ${printer_name}
    #Select From List By Value    ${printer_name}  PHMNL-F40-MP5
    Click Element    ${final_print}
Release Printer
    Click Element    ${printer_name}
    #Select From List By Value    ${printer_name}  PHMNL-F40-MP5
    Click Element    ${final_print1}
Releasing
    [Documentation]  This keyword is using for Release the -ve certificate
    Click Element    ${search_transaction}
    Scrollbar
    Sleep    3s
    Click Element    ${click_release_trans}
    Click Element    ${print_button}
    Select From List By Value    ${select_valid_id}  1
    Click Element    ${proceed}
    Sleep    3s
    #Select From List By Index    ${printer_name}  PHMNL-F40-MP5
    Release Printer
    Sleep    10s
    Click Element    ${yes_continue}
    Input Text    ${enter_secpa}    KJ000000125
    Click Element    ${save_continue}
    Sleep    3s
    Click Element    ${print_success}
Positive Releasing
    [Documentation]  This keyword is using for Release the -ve certificate
    Click Element    ${search_transaction}
    Scrollbar
    Sleep    3s
    Click Element    ${click_release_trans}
    Execute Javascript      window.scrollTo(0,0)
    Sleep    3s
    Click Element    ${print_button}
    Select From List By Value    ${select_valid_id}  1
    Click Element    ${proceed}
    Sleep    3s
    #Select From List By Index    ${printer_name}  PHMNL-F40-MP5
    Release Printer
    Sleep    4s
    Click Element    ${yes_continue}
    Sleep    3s
    Input Text    ${enter_secpa}    KJ000000126
    Input Text    ${enter_secpa2}    KJ000000127
    Click Element    ${save_continue}
    Sleep    3s
    Click Element    ${print_success}
Web Access slip access
    Open Browser  ${web_access}  ${browser}
    Maximize Browser Window
    Sleep    3s
    Input Text    //*[@id="divView"]/div[3]/div[1]/div/div/input     08280003OUGL0218b
    Sleep    3s
    ${capt}  Get Value    //*[@id="hidden_imgtxt"]
    Input Text    //*[@id="Entertext"]    ${capt}
    Sleep    3s
    Click Element    //*[@id="btnsubmit"]
    Sleep    3s
    Scrollbar
    #Select From List By Index    locator
    #Select From List By Value    //*[@id="divView"]/div[3]/div[4]/div[2]/div/select  2
    #Select From List By Value    //*[@id="divView"]/div[3]/div[4]/div[3]/div/select  2
    Select From List By Label    //*[@id="divView"]/div[3]/div[4]/div[2]/div/select  ABRA
    Select From List By Label    //*[@id="divView"]/div[3]/div[4]/div[3]/div/select  BANGUED - 01
    Click Element    //*[@id="btnsubmit"]
ClientCertificateRequestWA
    Click Link    Xpath://a[@id='101']
ScrollandClicksave
    Execute Javascript  window.scrollTo(0,2000)
    Click Button    Xpath://input[@id='txtmarriageComments']/following::button[3]
ScrollandsaveBirth
    Execute Javascript  window.scrollTo(0,2000)
    Click Button    Xpath://input[@id='txtComments']/following::button[3]
FinalSubmitButton
    Click Button    Xpath://button[@id='finalSubmitbtn' and text()='Submit']
PrinterSelectionEn
    Click Element    ${EncoPrinters}
    Sleep    3s
    Click Button    ${EncoFinalPrint}
CRDRCC
    Click Link    ${More}
    Click Link    //a[@id='130' and text()='CRD Submission RCC']
    Click Link    link:Create Batch
    Select From List By Value    //select[@id='BatchTypeName']  9
    Select From List By Value    //select[@id='UnitDepartmentName']    13
    #Click Element    ${Date_Recieved}
   # Sleep    3
    #Select From List By Label    ${Calendar_Month}   Sep
    #Sleep    3
    #Double Click Element    ${Calendar_Date}
    Input Text    ${CRDRCCDate}    11/03/2022    #current date
    Sleep    3
    Input Text    //button[@class="btn btn-primary" and text()='Submit']/preceding::input[1]    text
    Sleep    5
    Execute Javascript  window.scrollTo(0,380)
    Sleep    5
    Click Button    //button[@class="btn btn-primary" and text()='Submit']
    Sleep    5
    Click Button    //button[@id='AlertButton' and text()='OK']

CRDRCC_RA
    Click Link    ${More}
    Click Link    //a[@id='130' and text()='CRD Submission RCC']
    Click Link    link:Create Batch
    Select From List By Value    //select[@id='BatchTypeName']  9
    Select From List By Value    //select[@id='UnitDepartmentName']    16
    #Click Element    ${Date_Recieved}
   # Sleep    3
    #Select From List By Label    ${Calendar_Month}   Sep
    #Sleep    3
    #Double Click Element    ${Calendar_Date}
    Input Text    ${CRDRCCDate}    11/13/2022    #current date
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
Release-Homepg
    Click Element     //img[@class='navbar-more']
    Click Link   ${CertReleasing}
    Sleep    3s
    Click Element    ${ReleaseCert}
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
Release-Secpa
    Sleep    3
    Click Button    ${SaveCntnu}
    Click Button    ${ReleaseOk}

Separate Payment
    Sleep    3
    ${get_amount}   Get Value    id:TotalAmt
    Sleep    3
    Log    ${get_amount}
    Sleep    3
    Input Text    ${Amount_tendr}    ${get_amount}
    Click Button    ${Print_Or}


Request entry country
    Select From List By Value    //select[@id='cmbProvince']  001
    Select From List By Value    //select[@id='cmbCity']  00101
Requester Country details
    Select From List By Value    ${reque_province}  001
    Select From List By Value    ${reque_city}   00101
QTN Generation
    Click Element    ${more_option}
    Sleep    3s
    Click Element    ${select_qms}
    #Click Element    ${qms_home}
    #Sleep    5s
    Click Element    ${select_qtn}
    Sleep    3s
    Click Button    ${select_regular}
    Click Button    ${select_encodepayment}

CI Marriage
    #Input Text    ${enter_qtn}    0004

    #Click Button    ${validate}
    Click Button    ${skip}
    Click Element    ${type_marriage}
    Input Text    ${no_of_copy}    1

    Click Button    ${next}
    Input Text    ${hus_lastname1}    Devasi
    Input Text    ${hus_firstname1}     Sunil
    Input Text    ${hus_middlename1}    A

    Input Text    ${wife_lastname1}    A
    Input Text    ${wife_firstname1}   Stefy
    Input Text    ${wife_middlename1}    P
    Input Text    ${date_marriage}    01/02/2018
    Request entry country
    Select From List By Value    ${purpose_request}  CL

    Scrollbar
    Sleep    3s
    Click Element    ${cancel1}
    Sleep    3s
    Click Button    ${click_no}
    Sleep    3s
    Click Button    ${cancel1}
    Sleep    3s
    Click Button    ${click_yes}
    Sleep    3s

File Upload
    Click Button    //button[@id="add_more" and text()='Add CRD']
    #Click Element    ${file_upload}
    Choose File    //input[@id='file']    C:/Users/astefyp/Marriage.tif
Image Upload
    [Arguments]     ${path}     ${file}
    uploadFile   ${path}   ${file}
Forward_ CRD to_DCC
    Scrollbar
    Sleep    3s
    Click Element    ${forward_todcc}
    Select From List By Value    ${select_provinceforcrd}   015
    Input Text    ${regi_year}    2022
    Select From List By Value    ${regi_month}      10
    Click Button    ${button_forward_todcc}
    Sleep    3s
    Input Text    ${search_dcc}  ${Supplemental_death.crd_batchno}
    Scrollbar
    Sleep    3s
    Click Element    ${select_checkbox}
    #Select Checkbox    ${select_checkbox}
    Click Button    ${button_select}
    Sleep    3s
    Click Button    ${transfer_todcc}
    Sleep    3s
    Click Button    ${transfer_ok}

Forward_ CRD to_DCC_Death
    Scrollbar
    Sleep    3s
    Click Element    ${forward_todcc}
    Select From List By Value    ${select_provinceforcrd}   001
    Input Text    ${regi_year}    2022
    Select From List By Value    ${regi_month}      11
    Click Button    ${button_forward_todcc}
    Sleep    3s
    Input Text    ${search_dcc}  ${Crdregistrydetails.crd_registry_number}
    Scrollbar
    Sleep    3s
    Click Element    ${select_checkbox}
    #Select Checkbox    ${select_checkbox}
    Click Button    ${button_select}
    Sleep    3s
    Click Button    ${transfer_todcc}
    Sleep    3s
    Click Button    ${transfer_ok}
    Sleep    3s
Forward_to_DCC_CDLI
    Scrollbar
    Sleep    3s
    Click Element    ${select_forwardtodcc}
    Select From List By Value    ${forward_city}  00103

    Input Text    ${regi_year}    2022
    Select From List By Value    ${regi_month}     11
    Click Element    ${forward_type}
    Click Button    ${button_forward_todcc}
    Sleep    3s
    #Input Text    ${search_dcc}   ${batchcdli}
    Scrollbar
    Sleep    3s
    Wait Until Element Is Visible    //tr[td[2]//text()='BUCAY' and td[3]//text()='${Cdliregistrydetails.deathbatchcdli}']/td//span[@class='text']
    Click Element    //tr[td[2]//text()='BUCAY' and td[3]//text()='${Cdliregistrydetails.deathbatchcdli}']/td//span[@class='text']
    #Click Element    ${select_checkbox}
    #Select Checkbox    ${select_checkbox}
    Click Button    ${button_select}
    Scrollbar
    Sleep    3s
    Click Button   ${transfer_todcc}
    Sleep    3s
    Click Button   ${transfer_ok}
    Sleep    3s
    ${transmittal}     Get Text    //span[@id='spnTransmittalReference']
    Log    ${transmittal}
    Sleep    5s
    Change Office Code
    Sleep    3s
    Click Element    ${more_option}
    Click Element    ${vei}
    Click Element    ${vei_home}
    Sleep    5s
    ######### Receive at DCC ###############
    Scrollbar
    Sleep    3s
    Click Element    ${received_at_dcc}
    Input Text    ${enter_transmittal}    ${transmittal}
    Sleep    3s
    Click Button    ${transmittal_search}
    Sleep    3s
    Scrollbar
    Sleep    3s
    Click Button    ${receive_save}
    Sleep    3s
    Click Button    ${receive_ok}

Forward_to_DCC_CDLI LI
    Scrollbar
    Sleep    3s
    Click Element    ${select_forwardtodcc}
    Select From List By Value    ${forward_province}    015
    Select From List By Value   ${forward_city}     01515

    Input Text    ${regi_year}    2022
    Select From List By Value    ${regi_month}     10
    Click Element    ${forward_type1}
    Click Button    ${button_forward_todcc}
    Sleep    3s
    #Input Text    ${search_dcc}   ${batchcdli}
    Scrollbar
    Sleep    3s

    Click Element    //tr[td[2]//text()='IGUIG' and td[3]//text()='${Supplemental_death.li_batchcdli}']/td//span[@class='text']

    #${getbatch}   //*[@id="ForwardBatchResultsDCCTable"]/tbody/tr[2]//td[3][text()='58']
   #${getbatch} =  Get Text  xpath=//*[@id="ForwardBatchResultsDCCTable"]/tbody/tr[2]//td[3][text()='58']
   # FOR    ${valuebatch}    IN    ${getbatch}
    #    Log    ${valuebatch}
     #   IF    ${valuebatch} == 58
      #     Click Element    //tr[td[2]//text()='BANGUED' and td[3]//text()='58']/td//span[@class='text']
       #    Sleep    3s
         #Exit For Loop If    ${valuebatch} == 58
       # ELSE
        #
        #   Sleep    3s
         #  Click Element    //a[text()='Next']
        #END

    #END
    #Click Element    //a[text()='Next']
    #FOR    ${counter}    IN RANGE    START    END    opt.STEPS
     #   Log    ${counter}

   # END

    #Wait Until Element Is Visible    //tr[td[2]//text()='BANGUED' and td[3]//text()='58']/td//span[@class='text']
    #Click Element    //tr[td[2]//text()='BANGUED' and td[3]//text()='58']/td//span[@class='text']
    #Click Element    ${select_checkbox}
    #Select Checkbox    ${select_checkbox}
    Click Button    ${button_select}
    Scrollbar
    Sleep    3s
    Click Button   ${transfer_todcc}
    Sleep    3s
    Click Button   ${transfer_ok}
    Sleep    3s
    ${transmittal}     Get Text    //span[@id='spnTransmittalReference']
    Log    ${transmittal}
    Sleep    5s
    Change Office Code
    Sleep    3s
    Click Element    ${more_option}
    Click Element    ${vei}
    Click Element    ${vei_home}
    Sleep    5s
    ######### Receive at DCC ###############
    Scrollbar
    Sleep    3s
    Click Element    ${received_at_dcc}
    Input Text    ${enter_transmittal}    ${transmittal}
    Sleep    3s
    Click Button    ${transmittal_search}
    Sleep    3s
    Scrollbar
    Sleep    3s
    Click Button    ${receive_save}
    Sleep    3s
    Click Button    ${receive_ok}
Transmit to Central Office

    Scrollbar
    Sleep    3s
    Click Element    ${select_transmittedcentral_office}
    Sleep    4s
    Select From List By Value    ${select_liprovince}  015
    Input Text    ${enter_year}     2022
    Click Element    ${select_month1}
    Click Button    ${search_cenr_button}
    Sleep    6s
    Input Text    ${search_intransmit}    ${Supplemental_death.supple_cdlideath_regi}
    Click Element    ${select_checkbox1}
    Click Button    ${li_ok}
    Sleep    3s
    Click Button    ${transmit_to_central}
    Sleep    3s
    Click Button    ${print_transmit}
    Sleep    3s
    ${printtransmittal}     Get Text    //strong[@id='spnTransmittalReference']
    Log    ${printtransmittal}
     #Click Button    ${print_trans_print}
    #${TabbedWindow}   Get Window Handles
    #Log    ${TabbedWindow}[1]
    #Switch Window   ${TabbedWindow}[1]
    #Sleep    4s
    #Press Keys     ENTER
    #sleep   3s
    #Switch Browser    1
Change Office Code to Cagayan
    [Documentation]  This keyword is using for change the to Cagayan Office code
    Sleep    3s
    Click Element    ${more_option}
    Sleep    3s
    Click Element    ${sys_admin}
    Sleep    4s
    Click Element    ${user_detail_info}
    Input Text    ${search}    US001
    Click Element    ${edit}
    Select From List By Value    ${cagayan_centre}  P-015
    Sleep    2s
    Click Button    ${save}
    Sleep    10s
    Close Counter
    Close Browser
    Open Counter
Change Office Code to Processing Unit
    [Documentation]  This keyword is using for change the Office code to Document Processing Unit
    Sleep    3s
    Click Element    ${more_option}
    Sleep    3s
    Click Element    ${sys_admin}
    Sleep    4s
    Click Element    ${user_detail_info}
    Input Text    ${search}    US001
    Click Element    ${edit}
    Select From List By Value    ${cagayan_centre}  C-DPU
    Sleep    2s
    Click Button    ${save}
    Sleep    10s
    Close Counter
    Close Browser
    Open Counter

Change Office Code
    [Documentation]  This keyword is using for change the Office code to Capture centre
    Sleep    3s
    Click Element    ${more_option}
    Sleep    3s
    Click Element    ${sys_admin}
    Sleep    4s
    Click Element    ${user_detail_info}
    Input Text    ${search}    US001
    Click Element    ${edit}
    Click Element    ${capure_centre}
    Click Button    ${save}
    Sleep    10s
    Close Counter
    Close Browser
    Open Counter
Receive at DCC


Piecemeal Button
    Press Keys      ${birth_registry_no}    ENTER
    sleep   2
    Wait Until Element Is Visible       ${piecemeal_submit}
    sleep  2
    Click button        ${piecemeal_submit}
    sleep  2
Perform Index Correction
     [Documentation]  This keyword is using for Perform index correction
    Execute Javascript  window.scrollTo(0,100)
    Sleep    2s
    ${drenvalue1}=      RetrieveCIDdrenfromdb    ${deathbooktype}  ${deathfirstname}
    Disconnect DB
    Input Text    ${enter_dren}    ${drenvalue1}

    Execute Javascript  window.scrollTo(0,450)
    Sleep    5s
    Click Element    ${click_search2}
    Sleep    3s
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3s
    Click Element    ${viewimage1}
    Sleep    5s
    ${imageid}     Get Text    //strong[@data-bind='text:ImageID']
    Log    ${imageid}
    Execute Javascript  window.scrollTo(0,3000)
    Sleep    3s
    Click Button    ${perform_indexcorrection}
    Sleep    3s
    Execute Javascript  window.scrollTo(0,1500)
    Sleep    3s
    Input Text    ${edit_motherlast}    Edit
    Execute Javascript  window.scrollTo(0,3000)
    Sleep    3s
    Click Button    ${submitindex}
    Sleep    3s
    Click Button    ${yesindex}
    Sleep    3s
    Click Button    ${succindex}
    Sleep    4s
    Click Element    ${more_option}
    Click Element    ${selectindex}
    Click Element    ${approveindex}
    Input Text    ${imagesearch}     ${imageid}
    Click Element    ${clickimage}
    Click Button    ${indexapprove}
    Sleep    3s
    Click Button    ${succindex}
    Click Button    ${index_back}

Perform Index Correction for Marriage
     [Documentation]  This keyword is using for Perform index correction
    Execute Javascript  window.scrollTo(0,100)
    Sleep    2s
    Input Text    ${enter_mren}    00101B22B1065

    Execute Javascript  window.scrollTo(0,450)
    Sleep    5s
    Click Element    ${click_search1}
    Sleep    3s
    Execute Javascript  window.scrollTo(0,500)
    Sleep    3s
    Click Element    ${ViewImage}
    Sleep    5s
    ${imageid}     Get Text    //strong[@data-bind='text:ImageID']
    Log    ${imageid}
    Execute Javascript  window.scrollTo(0,3000)
    Sleep    3s
    Click Button    ${perform_indexcorrection}
    Sleep    3s
    Execute Javascript  window.scrollTo(0,1500)
    Sleep    3s
    Input Text    ${editmarriagemotherlast}    Edit
    Execute Javascript  window.scrollTo(0,3000)
    Sleep    3s
    Click Button    ${submitindex}
    Sleep    3s
    Click Button    ${yesindex}
    Sleep    3s
    Click Button    ${succindex}
    Sleep    4s
    Click Element    ${more_option}
    Click Element    ${selectindex}
    Click Element    ${approveindex}
    Input Text    ${imagesearch}     ${imageid}
    Click Element    ${clickimage}
    Click Button    ${indexapprove}
    Sleep    3s
    Click Button    ${succindex}
    Click Button    ${index_back}
Launch
  Open Browser          ${URL}       ${Browser}
  Maximize Browser Window
  Set Selenium Implicit Wait    20s
OpenCounter1
  Click element     ${Open_Counter}
  Sleep    5s
  Click Button    ${Ok_Button}
Home
  Click Element   ${Home_B}
RequestDetailsPage
  Click Element   ${Client_Certificate_Menu}
  Click Element    ${Request Entry}
  Input Text        ${QTN}        100
  Click Button    ${Validate}
  Capture Page Screenshot      Error.png
  Click Button     ${Skip}
  Select From List By Index     ${TransactionType}           1
  Input Text    ${NoOfCopies}    1
  Click Button    ${Next_B}
  Input Text     ${C_FName}     ${CFName}
  Input Text      ${C_LName}     ${CLName}
  Click Element     ${Sex}
  Input Text     ${DOB}   01012018
  Select From List By Index      ${Country}       2
  Input Text    ${M_LName}       ${MLName}
  Input Text     ${M_FName}      ${MFName}
  Select From List By Index     ${PurposeOfReq}        1
  Sleep    5s
  Execute Javascript    ${Scroll_D}
  Click Button    ${Submit}
  Click Button    ${Confirm}
  Click Button    ${Next}
RequesterDetailsPage
  Input Text    ${R_LName}     SHabanaa
  Input Text      ${R_FName}     Shaikh
  Input Text    ${Address1}         Address1@#$%
  Input Text    ${Address2}         Address2$%^^#843
  Select From List By Value    ${R_Province}     001
  Select From List By Label    ${R_City}          BANGUED
  Click Button    ${R_Confirm}
  Click Button    ${S_Confrim}
  Click Button    ${Con_Pop_Yes}
ChangeOutlet
  Click Element    ${more}
  Click Element    ${Sys_Admin}
  Click Element    ${User_Detail}
  Input Text       ${Search}     Stefy
  Click Element    ${Edit}
  Select From List By Label    ${Outlet}        SECONDARY BACK OFFICE
  Click Button     ${Save_User}
  Launch
  OpenCounter
  Home

ChangeOutlet(002-003)
  Click Element    ${more}
  Click Element    ${Sys_Admin}
  Click Element    ${User_Detail}
  Input Text       ${Search}     Stefy
  Click Element    ${Edit}
  Select From List By Label    ${Outlet}        CENTRAL OUTLET
  Click Button     ${Save_User}
  Sleep    3s
  Close Browser
  #Launch
  Open Counter
  #Home
CRDSubmissionRCC
   Click Element    ${more}
   Click Element   ${CRS_Submission_RCC}
   Click Element    ${Create_Batch}
   Select From List By Index    ${BatchType}    8
   Select From List By Index    ${Unit/Dept}    1
   Input Text    ${Date_Recieved}       12072022
   Sleep    2s
   Input Text    ${Operator}    Stefy
   Scrollbar
   Sleep    3s
   Click Button    ${Submit_CRD}
   Sleep    3s
   Click Button    ${Alert_OK1}
#   Input Text    ${TransactionNo_CRD}    08279-003-00069-001
#   Execute Javascript     window.scrollTo(0,800)
#   Sleep    5s
#   Click Button    ${Save_CRD}
##Authentication Keywords
RequestEntry
  Select From List By Index       ${TransactionType}   7
  Input Text       ${NoOfCopies}    1
  Click Button     ${Next_B}
#UploadFile
 # Click Element    locator
RequestEntry-VOB
  Select From List By Label     ${TransactionType}   VIEWABLE ONLINE - BIRTH CERTIFICATE
  Click Button     ${Next_B}
RequestDetials-VOB
  Input Text       ${C_FName}     Shabana
  Input Text       ${C_LName}     Shaikh
  Click Element    ${cenomar_sex}
  Sleep    3s
  Input Text       ${DOB}    01012018
  Select From List By Index      ${R_Province_Cmar}   1
  Select From List By Index    ${R_City_Cmar}   2
  Input Text       ${M_LName}    Mumthaz
  Input Text       ${M_FName}    Shaikh
  Select From List By Index      ${PurposeOfReq}   1
  Sleep    5s
  Execute Javascript    ${Scroll_D}
  Sleep     3s
  Click Button    ${Submit}
  Sleep    3s
  Click Button    ${Confirm}
SupervisorOverride
  CLick element  ${more}
  Click Element    ${Sys_Admin}
  Click Element    ${Supervisor_Override}
  ${TabbedWindow}   Get Window Handles
  Log    ${TabbedWindow}[1]
  Switch Window   ${TabbedWindow}[1]
  Click Button    ${SO_Approve1}
  #${Ok_Button}
  Switch Browser    1
  Sleep  20s
  Click Button    ${SO_OK}


#### Vijay

Walkin and Payment Requester Details
    Input Text    ${walkinpay_requester_lastname}    HC
    Input Text    ${walkinpay_requester_firstname}    Vijay
    Input Text    ${walkinpay_requester_middleinitial}    H
    Input Text    ${walkinpay_req_address1}    Bangalore1
    Input Text    ${walkinpay_req_address2}    Bangalore2
    Click Element    ${walkinpay_req_province}
    Sleep    5S
    Click Element    ${walkinpay_req_city}
    Select From List By Value    id=cmbCity     00101
Issue Authentication Marriage Positive Certificate
    Click Element    ${transaction_link}
    Sleep    5S
    Input Text       ${mren_value}    00100B22A1023
    Scrollbar
    Sleep    5S
    Click Button     ${authsubmit_btn}
    Click Element    ${view_image}
    Sleep    5S
    Click Button     ${issue_certificate}
    Sleep    5S
    Click Button     ${continue}
    Sleep    3S
    Click Button     ${ok_confirmation}
    Sleep    3S
    Click Button     ${ok_success}


