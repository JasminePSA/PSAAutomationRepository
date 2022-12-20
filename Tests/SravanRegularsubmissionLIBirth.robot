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
Regular Submission LI BIRTH
######## Birth #####
PABirth
    Open Counter
    Sleep   5S
    Click Element   ${client_cert_req}
    Click Element   ${wre_Link}
    Sleep   3s
#    Input Text  ${qtn}  0001
    Click Element   ${trans_type}
    Select From List By Value   ${trans_type}   PA-B
    Sleep   3s
    Select From List By Value   ${PA_birthsubtype}  BO-OA
    Sleep   3s
    Select Checkbox     //input[@name="Affidavit of Supplemental Report"]
    Sleep   3s
    Select Checkbox     //input[@name="Annotated Certificate of Live Birth"]
    Sleep   3s
    Select Checkbox     //input[@name="Certificate of Live Birth (Un-annotated)"]
    Sleep   3s
    Select Checkbox     //input[@name="Certificate of Marriage of Parents"]
    Sleep   3s
    Select Checkbox     //input[@name="Letter of Approval by CRG (If supplied entries is more than two (2) omitted entries)"]
    Sleep    3s
    Click Button    ${PA_Wizard_done}
    Sleep   2s
    Click Button    ${PA_Wizard_submit}
    Input Text    ${txtBirthPriLastName}    cln
    Input Text    ${txtBirthPriFirstName}   cfn
    Select From List By Value   ${txtBirthSex1} Male
    Select From List By Value   ${birthMonth1}  1
    Input Text   ${birthDate1}  01
    Input Text   ${birthYear1}  2022
    Select From List By Value    ${birthProvince1}  001
    Select From List By Value    ${birthCity1}  00101
    Input Text    ${txtBirthAuxLastName1}   m
    Input Text    ${txtBirthAuxFirstName1}  m
    Select From List By Value    ${cmbRequestPurpose1}  CL
    Sleep    3s
    Click Button    ${pa_save}
    Input Text    ${txtReqLastName1}    r
    Input Text    ${txtReqFirstName1}   rf
    Input Text    ${txtAddress1}    rr
    Select From List By Value   ${cmbProvince1} 001
    Select From List By Value    ${cmbCity1}    00101
    Sleep    5
    Scrollbar
    Sleep    10
    Click Button    ${finalSubmitbtn1}
    Sleep  3
    PrinterSelectionEn
    Sleep    3
    ${get_ref}  Get Text    ${ref_No}
    Log    ${get_ref}
    Sleep    5
    Click Button   ${Close_btn}

# LCR CRD regular submission
#VEI Process Flow_CRD
    Open Counter
    Sleep   5S
    Click Element  ${more_option}
    Click Link  ${more_vei}
    Click Link  ${vei_home}
    Sleep   5s
    Click Link  ${lcr_crdsubmission}
    Sleep   5s
    Select From List By Value   ${lcr_crd_province}     001
    Select From List By Value   ${lcr_crd_city}     00101
    Input Text  ${lcr_crd_reg_year}     ${crdregistrydeatils.crd_reg_no}
    Select From List By Value   ${lcr_crd_reg_month}    9
    Select From List By Value   ${lcr_crd_registrybooktype}     A
    Sleep   3s
    Input Text   ${lcr_crd_range_start_regnum}  ${crdregistrydeatils.crd_registry_number}
    Sleep   3s
    Input Text  ${lcr_crd_range_end_regnum}  ${crdregistrydeatils.crd_registry_number}
    Sleep    3s
    Input Text  ${noofdocs}     1
    Input Text  ${lcr_crd_datereceived}     09/22/2022
    Click Button    ${lcr_crd_save}
    Sleep   3s
    Click Link  ${lcr_crdsubmission_no}
    Sleep   3s
    Click Link  ${lcr_crd_batchcreate}
    Sleep   3s
    Input Text  ${lcr_crd_batchnumber}  198
    Click Element   ${lcr_crd_batchcountry}
    Select From List By Value   ${lcr_crd_batchcountry}     608
    Click Element   ${lcr_crd_batchcity}
    Select From List By Value   ${lcr_crd_batchcity}    00101
    Input Text  ${lcr_crd_batch_regyear}    ${crdregistrydeatils.crd_reg_no}
    Select From List By Value   ${lcr_crd_batch_regmonth}   9
    Select From List By Value   ${lcr_crd_batch_reg_booktype}   A
    Sleep   3s
    Input Text  ${lcr_crd_range_start_regnum}   ${crdregistrydeatils.crd_registry_number}
    Sleep   5s
    Input Text  ${lcr_crd_range_end_regnum}   ${crdregistrydeatils.crd_registry_number}
    Sleep   5s
    Input Text  ${crd_batch_actdoccount}    1
    Input Text  ${crd_batch_probdoccount}   0
    Click Button    ${crd_batch_submit}
    Sleep   3s
    Click Button    ${crd_batch_success_ok}
    Sleep   3s
    Input Text  ${encodecrd_bacthnumb}  ${crdregistrydeatils.crd_reg_no}
    Sleep   3s
    Click Button    ${lcr_crd_batch_continue}
    Sleep   3s
    Input Text  ${lcrcrd_batch_childfn}     cfn
    Input Text  ${lcrcrd_batch_childmn}     cmn
    Input Text  ${lcrcrd_batch_childln}     cln
    Select From List By Index   ${lcrcrd_batch_sex}     1
    Input Text  ${lcrcrd_batch_dobday}  01
    Select From List By Value  ${lcrcrd_batch_dobmonth}     1
    Input Text  ${lcrcrd_batch_dobyear}     2022
    Select From List By Index   ${lcrcrd_batch_placetype}   4
    Input Text  ${batch_nameofhsptl}    hsptl
    Select From List By Value   ${batch_province}   001
    Select From List By Value   ${batch_city}   00101
    Select From List By Value   ${batch_pobbarangay}        00101001
    Sleep   3s
    Select From List By Label    ${batch_typeofbirth}  SINGLE
    Select From List By Label  ${batch_birthorder}  FIRST
    Input Text  ${batch_weightatbirth}  650
    Input Text  ${batch_motherfn}   m
    Input Text  ${batch_mothermn}   m
    Input Text  ${batch_motherln}   m
    Select From List By Value   ${batch_mother_citizenship}     105
    Select From List By Value   ${batch_motherreligion}     1
    Select From List By Value   ${batch_motherethnicity}    1
    Select From List By Value   ${batch_total_childrenalive}    1
    Select From List By Value   ${batch_total_childrenstilliving}   1
    Select From List By Value   ${batch_total_childrennowdead}  0
    Select From List By Value   ${batch_motheroccupation}   1880
    Select From List By Value   ${batch_motherage}      22
    Select From List By Value   ${batch_mthprovince}   001
    Select From List By Value   ${batch_mthcity}   00101
    Select From List By Value   ${batch_mth_pobbarangay}        00101001
    Select From List By value   ${batch_dom_month}  1
    Input Text  ${batch_dom_day}    01
    Input Text  ${batch_dom_year}   2022
    Select From List By Value   ${batch_pom_province}   001
    Select From List By Value   ${batch_pom_city}   00101
    Select From List By Value   ${batch_legitimacy}     1
    Select From List By Value   ${batch_attendant}  5
    Input Text   ${batch_attendant_title}    others
    Select From List By Value   ${cert_attendant_month}     1
    Input Text  ${cert_attendant_day}   01
    Input Text  ${cert_attendant_year}  2022
    Select From List By Value   ${batch_informant}  13
    Sleep   3s
    Input Text  ${dateofregistration}   09/22/2022
    Sleep   3s
    Select From List By Value   ${registration_status}  2
    Sleep   3s
    Click Button    ${batch_submit}
    Sleep   2s
    Click Button    ${batch_submit_ok}
    Sleep   2s
    Click Button    ${batchsuccess_save_ok}
    Sleep    3s
    Click Element    ${CRS_Homepage}

#Document Conversion
    [Tags]  Sanity3
    [Documentation]  End to end flow for Death
    Open Counter
    Click Element   ${more_option}
    Click Element   ${select_dc}
    Click Element   ${select_dc_home}
    Scrollbar
    Sleep    3s
    Click Element    ${select_upload}
    #Choose File    ${select_choose}     ${file1}
    Wait Until Keyword Succeeds    1min    5sec    Wait Until Element Is Visible    ${select_choose}
    Wait Until Keyword Succeeds    1min    5sec    Click Element    ${select_choose}
    Sleep    30s
    #Image Upload    C://Users//astefyp//Documents//Tif_Images//death//newdc1.exe    ${file1}

    #Press Keys
############## CRD Match ###################
    Click Element    ${CRS_Homepage}
    Click Element    ${more_option}
    Click Element    ${select_dc}
    Click Element    ${select_dc_home}
    Scrollbar
    Sleep    3s
    Click Element    ${select_match}
    Sleep    5s
    Input Text    ${enter_search}   ${batch_name}
    Click Element    //a[text()='${batch_name}']
    Click Element    ${select_registry}
    Sleep    3s
    Input Text    ${enter_reginumber}    2022-2500250
    Execute Javascript  window.scrollTo(0,300)
    Sleep    3s
    Click Button    ${click_submit}
    Execute Javascript  window.scrollTo(0,3000)
    Sleep    3s
    Click Button    ${saveandcontinue}
    Sleep    5s
    Click Button    ${crdcommitbatch}
    Sleep    3s
    Click Button    ${crdsuccess}
    Sleep    5s
    Click Element    ${crdqachecking}
    Sleep    5s
    Input Text    ${enter_search}    ${batch_name}
    Click Element    //a[text()='${batch_name}']
    Sleep    4s
    Execute Javascript  window.scrollTo(0,3000)
    Sleep    3s
    Click Element    ${crdacceptmatch}
    Sleep    5s
    Click Button    ${lastcrdacceptmatch}
    Sleep    3s
    Click Button    ${qapassedok}





# Regular LCR Submssion CDLI Li Birth
    Click Element  ${more_option}
    Click Link  ${more_vei}
    Click Link  ${vei_home}
    Sleep   5s
    Click Link  ${lcr_cdli_submission}
    Sleep   5s
    Select From List By Value   ${lcr_cdli_city}    00101
    Select From List By Value   ${lcr_cdli_month}   9
    Sleep   2s
    Select From List By Value   ${lcr_cdli_regbooktype}     J
    Sleep   2s
    Select From List By Label   ${lcr_cdli_doctype}     SUPPLEMENTAL REPORT OF BIRTH - BO
    Select From List By Value   ${lcr_cdli_docsubtype}  OA
    Input Text  ${lcr_cdli_regnumber}   ${cdliregistrydeatils.cdli_registry_number}
    Input Text  ${lcr_cdli_daterecevd}  09/30/2022
    Click Button    ${lcr_cdli_next}
    Sleep   3s
    Select Checkbox     ${cdli_wiz_AffofSupReport}
    Select Checkbox     ${cdli_wiz_AnnCertofLivBirth}
    Select Checkbox     ${cdli_wiz_certoflivbirthunan}
    Sleep   3s
    Select Checkbox     ${cdli_wiz_certofmrgofparnt}
    Scrollbar
    Sleep   3s
    Select Checkbox     ${cdli_wiz_ltrofaprofcrg}
    Sleep   2s
    Click Element       ${cdli_wiz_next}
    Sleep   3s
    Scrollbar
    Click Element        ${cdli_wiz_summarynext}
    Sleep   3s
    Scrollbar
    Sleep   2s
    Click Button        ${cdli_wiz_confirm}
    Sleep   3s
    Click Button        ${cdli_wiz_success}
    Sleep   3s
    Click Link       ${cdli_addrecord_no}
    Sleep   3s
    Click Element       ${lcr_cdli_batchcreate}
    Sleep   5s
    Input Text      ${lcr_cdli_batchnumber}     32
    Select From List By Value   ${cdli_batch_country}   608
    Select From List By Value   ${cdli_batch_city}  00101
    Input Text  ${batchcreate_regyear}  ${cdliregistrydeatils.cdli_registry_year}
    Select From List By Value   ${batchcreate_regmonth}     9
    Select From List By Value   ${batchcreate_regbooktype}  J
    Select From List By Label   ${suppreport_yesorno}   NO
    Sleep   3s
    Input Text  ${batch_rangefrom}  ${cdliregistrydeatils.cdli_registry_number}
    Sleep   3s
    Input Text  ${batch_rangeto}    ${cdliregistrydeatils.cdli_registry_number}
    Sleep   3s
    Input Text  ${batch_actualdoc}  1
    Input Text  ${batch_probdoc}    0
    Sleep    3s
    Click Element   ${batchcreate_submit}
    Sleep   3s
    Click Element   ${batchcreate_ok}
    Sleep   5s
    Input Text      ${encodecdli_registrynumber}    ${cdliregistrydeatils.cdli_reg_no}
    Sleep   3s
    Select From List By Label   ${encodecdli_docsubtype}    SUPPLEMENTAL REPORT OF BIRTH - OA
    Click Element   ${encodecdli_continue}
    Input Text      ${encodecdli_others}    others
    Select From List By Value   ${encode_regplaceprovince}  001
    Select From List By Value   ${encode_regplacecity}  00101
    Select From List By Value   ${encode_regmonth}  9
    Input Text  ${encode_regday}    01
    Input Text  ${encode_regyear}   ${cdliregistrydeatils.cdli_registry_year}
    Input Text  ${encode_regnumberatbirth}  ${cdliregistrydeatils.cdli_reg_no}
    Input Text  ${Encode_cfn}   cfn
    Input Text  ${Encode_cln}   cln
    Input Text  ${batch_dob}    01
    Select From List By Value   ${batch_dobmonth}   9
    Input Text  ${batch_dobyear}    2022
    Select From List By Index   ${batch_gender}     1
    Select From List By Value   ${batch_cdli_pobprovince}   001
    Select From List By Value   ${batch_cdli_pobcity}   00101
    Input Text  ${batch_motherfn}   mfn
    Input Text  ${batch_motherln}   mln
    Select From List By Value   ${batch_regmonth}   9
    Input Text  ${batch_regday}     29
    Input Text  ${batch_regyear}    ${cdliregistrydeatils.cdli_registry_year}
    Sleep   2s
    Click Button    ${batch_submit}
    Click Button    ${batch_recordsaveok}
    Click Button    ${batch_successok}
    Click Element  ${more_option}
    Click Link  ${more_vei}
    Click Link  ${vei_home}
    Sleep   5s
# Quality Check Report
    Click Link  ${qualitycheckreporthome}
    Select From List By Value   ${qcr_reporttype}   3
    Click Button    ${qcr_continue}
    Sleep   3s
    Input Text  ${certpassreportbatchnumber}    33
    Select From List By Value   ${certpassreport_regcountry}    608
    Select From List By Value   ${certpassreport_regprovince}   001
    Select From List By Value   ${certpassreport_regcity}   00101
    Input Text  ${certpassreport_regyear}   ${cdliregistrydeatils.cdli_registry_year}
    Select From List By Value   ${certpassreport_regbooktype}   J
    Click Button    ${certpassreport_genertatereport}
    #Transmit CRDs/CDLIs to Central Office
    Click Element  ${more_option}
    Click Link  ${more_vei}
    Click Link  ${vei_home}
    Sleep    3s
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3s
    Click Element    //a[text()="Transmit CRDs/CDLIs to Central Office"]
    Input Text    //input[@id="txtCrdSearchRegYear"]    2022
    Select From List By Label    //select[@id="SearchddlMonth"]     SEPTEMBER
    Click Button    //button[@id="btnSearchCRD"]
    Input Text    //input[@type="search"]    2022-0000245
    Sleep    5s
    Click Element    //div[@id="transmitCRDSearchTable_filter"]/following::span[1]
    Sleep    3s
    Execute Javascript  window.scrollTo(0,1000)
    Sleep    3s
    Click Button    //button[@id="btnTransmittalOK"]
    Sleep    5s
    Click Button    //button[@id="btnTransmit"]
    Sleep    5s
    Click Button    //div[text()=" Transmittal Report successfully generated and batches tagged as submitted to Central Office."]/following::button[1]
    Sleep    5s
    ${get_Transitco}    Get Text    ${Transmit_CO_Ref}
    Log    ${get_Transitco}
    Click Link  ${more_vei}
    Click Link  ${vei_home}
    Sleep    3s
    Execute Javascript  window.scrollTo(0,1000)
    Sleep   5s
    Click Element    link:Receive CRD/CDLI Batches
    Input Text    //input[@id='transmittalReferenceNumber']    ${get_Transitco}
    Click Button    //button[@id='generalBirthSubmit']
    Sleep    2s
    Scroll Element Into View    //div[@id="ReceiveBatchResultsCRDCDLI_filter"]/following::input[1]
    Sleep    3
    Input Text    //div[@id="ReceiveBatchResultsCRDCDLI_filter"]/following::input[1]    09/28/2022
    Sleep    3
    Execute Javascript  window.scrollTo(0,1000)
    Sleep    3
    Click Button    //button[@id="saveReceiveDCC"]
    Sleep    5
    Click Button    //button[@id="AlertButton"]

   ##forward batch to dcc - from c-dpu office only
   Click Element    link:Back to Vital Events Information Home
   Sleep    2s
   Execute Javascript  window.scrollTo(0,2000)
   Sleep    2s
   Click Link    //a[text()='Forward CDLI to DCC']
   Sleep    2s
   Select From List By Value    ${RegCity}      00101
   Sleep    2s
   Input Text    //input[@id='registrationYear']    2022
   Sleep    2s
   Select From List By Value    //select[@id='registrationMonth']    9
   Sleep    2s
   Select From List By Value    //select[@id='ddlRegBookType']      K
   Sleep    2s
   Click Button    //button[@id='searchForwardDCC']
   Sleep    2s
   Execute Javascript  window.scrollTo(0,2000)
   Sleep    2s
   Click Element    //button[@id='submitForwardDCC']/preceding::input[1]
   Sleep    2s
   Click Button    //button[@id='submitForwardDCC']
   Sleep    2s
   Execute Javascript  window.scrollTo(0,2000)
   Sleep    2s
   Click Button  //button[@id='transmitToDCC']
   Sleep    3s
   Click Button    //button[@id='transmitToDCC']/following::button[2]
   Sleep    3s
   ${get_CDLItransm_value}   Get Text     ${TramittalRefNo}
   Log     ${get_CDLItransm_value}
   Sleep    3
   #Change the WorkUnit to DCC

   #Receieve batch at DCC
   Sleep    2s
   Click Element     //img[@class='navbar-more']
   Sleep    3s
   Click Link      //a[text()='Vital Events Information']
   Sleep    3s
   Click Link      //a[text()='VEI Home']
   Sleep    2s
   Execute Javascript  window.scrollTo(0,2000)
   Sleep    2s
   Click Link    //a[text()='Receive Batch/CDLI at DCC']
   Sleep    2s
   Input Text    //input[@id='transmittalReferenceNumberDCC']     ${get_CDLItransm_value}
   Sleep    2s
   Click Button    //button[@id='searchReceiveDCC']
   Sleep    2s
   Execute Javascript  window.scrollTo(0,2000)
   Sleep    2s
   Click Button    //input[@type='search']/following::button[1]
   Sleep    2s
   Click Button    //button[@id='AlertButton']



#CDLI Document Conversion
    Click Element     //img[@class='navbar-more']
    Sleep    3s
    Click Link      //a[text()='Document Conversion']
    Sleep    3s
    Click Link      //a[text()='Document Conversion Home']
    Sleep    3s
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3s
    Click Element    //span[text()='CRD/CDLI']
    Sleep    3s
    Click Button    //button[@id='birth-AddImageBtn']
    Sleep    3s
    Choose File    //button[@id='birth-AddImageBtn']    ${dc.cdliBatchidpath}   # Here upload image should be done manually
    Sleep    3s
    Click Button    //input[@id='UploadBtn']
    Sleep    3s
    Click Button    //button[@id='AlertButton']
    Sleep    3s

    #DC CDLI match/rework
    Click Element     //img[@class='navbar-more']
    Sleep    3s
    Click Link      //a[text()='Document Conversion']
    Sleep    3s
    Click Link      //a[text()='Document Conversion Home']
    Sleep    3s
    Click Link    //span[text()='CRD/CDLI']/preceding::span[2]
    Sleep    3s
    Input Text      //input[@type='search']     ${dc.cdliBatchid} # Batch ID number should be taken from yml file
    Sleep    3s
    Click Link    //input[@type='search']/following::a[1]
    Sleep    3s
    Select From List By Value    //select[@id='RegistryBookTypeName']       K
    Sleep    3s
    Input Text    //input[@id='registryNumber']    ${cdliregistrydeatils.cdli_registry_number}
    Sleep    3s
    Scroll Element Into View    //button[@id='search']
    #Execute Javascript  window.scrollTo(0,400)
    Sleep    3s
    Click Button    //button[@id='search']
    Sleep    3s
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3s
    Input Text    //h4[text()='VEI Record']/following::input[11]    2
    Sleep    3s
    Input Text    //h4[text()='VEI Record']/following::input[12]    4
    Sleep    3s
    Click Button    //button[@id='saveAndContinue']
    Sleep    3s
    Click Button    //button[@id='commitbatch']
    Sleep    3s
    Click Button    ${crdsuccess}
    Sleep    3s
    #run job in sql

    ### CDLI QA PASS ###
    Click Link      //a[text()='Perform Quality Assurance (QA) Check on CDLIs']
    Sleep    3s
    Input Text    //input[@type='search']    ${dc.cdliBatchid}  #value is taken from ymlfile
    Sleep    3s


--------------------------------------------------------------------------------

# RCC CRD Submission
    CRDRCC
    Input Text    ${TrannoPrm}    ${get_ref}
    Execute Javascript  window.scrollTo(0,2800)
    Sleep    5
    Click Button    ${RCCSave}
    #Annotation
    Annotation
    Input Text    ${Annotran}    ${get_ref}
    Click Button    ${Annosearch}
    Input Text    ${Aimg}    08251CB000200000020
    Click Button    ${AContinue}
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    5
    Click Button    ${OrgnlCRD}
    Sleep    2s
    Select From List By Value   ${annotation_tagasfeedback} 2
    Sleep    2s
    Click Button    ${feedback_yes}
    Sleep    2s
    Click Button    ${feedback_ok}

#Unconverted MV search job req
    Click Element   ${home_dashboard}
    Sleep    3s
    Click Element    //a[@id='103']/following::a[8]
    Sleep    3s
    Click Link     //a[@id='132']
    Sleep    3s
    Click Element    //a[text()='Unconverted/MV Request Processing Home']
    Sleep    3s
    Click Link    //a[text()='Search / View Job Request']
    Sleep    3s
    #Execute Javascript  window.scrollTo(0,2000)
    Input Text    //input[@id='JobTransationNumber']    ${get_value}
    Sleep    5s
    Click Element    //button[@id='JobTransationSearch']
    Sleep    5s
    ${get_jobreqno}     Get value   //span[@data-bind='text:JobRequestNumber']
    Log    ${get_jobreqno}
    Sleep    5s
    ${get_DestUnit}     get value   //th[@class='sorting' and @aria-label='Destination Unit: activate to sort column ascending']
    Sleep    5s
    #backfrom job reqno pg
    Click Link    //h4[@class='main-title' and text()='Search/View Job Request']/following::a[1]
    Sleep    5s
    #backfrom srchjob req pg
    Click Link    //h4[@class='main-title' and text()='Search/View Job Request']/following::a[1]
    Sleep    5s
    #changing destination unit
    UnconvMVDestUnitChange
    Sleep    3s
    Input Text    //select[@id='txtWorkUnitId']     ${get_DestUnit}
    Sleep    3s
    Click Button    ${SaveOuteltId}
    Sleep    3s
    #Unconverted MV print job reqno
    Click Element    ${MoreOption}
    Sleep    3s
    Click Element    //a[@id='132']
    Sleep    3s
    Click Element    //a[@id='132']/following::a[2]
    Sleep    3s
    Input Text    //input[@id='jobRequestNumber']    ${get_jobreqno}
    Sleep    3s
    Click Button    //button[@data-bind='click: serchButtonClick']
    Sleep    3s
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3s
    Click Element    //div[@class='checkbox']
    Sleep    3s
    Click Button    //button[@id='printBtn']
    Sleep    3s
    Select From List By Value    ${EncoPrinters}    PHMNL-F40-MP5
    Sleep    3s
    Click Button    ${EncoFinalPrint}
    Sleep    3s
    Click Button    ${AlertButton}
    Sleep    3s
    #do we need to change the unit manually - needs to be discussed with Venkat
    #Tag as feedback form
    Click Element    ${MoreOption}
    Sleep    3s
    Click Element    //a[@id='132']
    Sleep    3s
    Click Element    //a[@id='132']/following::a[11]
    Sleep    3s
    Input Text    //input[@id='jobRequestNumber']    ${get_jobreqno}
    Sleep    3s
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3s
    Input Text    //textarea[@id='txtProblem']    testing
    Sleep    3s
    Input Text    //textarea[@id='txtAction']    testing
    Sleep    3s
    Click Button    //button[@class='btn btn-primary' and @data-bind='click:TagfeedbackBtn']
    Sleep    3s
    Click Button    ${AlertButton}
    Sleep    3s

#Release FB
    Release-Homepg
    Input Text    ${enter_transaction}    ${get_ref}
    Release-Search-Print
    Sleep    5
    Input Text  ${enter_secpa}  FC000000048
    Click Button    ${save_continue}
    Sleep    3s
    Click Button    ${ReleaseOk}









