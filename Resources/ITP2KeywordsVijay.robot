*** Settings ***
Library    SeleniumLibrary
Library    String
#Resource    C:/Users/HCVijayK/PycharmProjects/CRSITP2/ObjectRepository/ITP2Locators.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/ObjectRepository/ITP2LocatorsVijay.robot
#Library    C:/Users/HCVijayK/PycharmProjects/CRSITP2/Resources/uploadfile.py
#Variables   C:/Users/HCVijayK/PycharmProjects/CRSITP2/TestData.yml     ### TestData yamal file path
Variables   C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/Resources/TestDataVijay.yml

Library  DatabaseLibrary   ### this is for db connection

*** Variables ***
${Browser}   http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tSENWSUpBWUs=#!
#${EndorsedRegnum}     2022-1444444    ### Electronic Endorsement - APPROVAL - MARRIAGE

#${secpa_number}    VI000000433

### DB connection ###
${DBName}  Civil Registry System
${DBUser}   PSATestTeam
${DBPassword}   PSATestTeam*Live
${DBHost}   10.62.150.248
${DBPort}  1433
${cenodeathreqtype}  'CD'
${cenodeathfirstname}     'Test2'
${sequencenumber}   001

${retrievetrannoqueryQuery}     select top 1 seriesno from encode.request where requesttype=${cenodeathreqtype} and prifirstname=${cenodeathfirstname} order by createdon desc

*** Keywords ***
## Connect DB
RetrieveCENODEATHtransactionfromdb
    [Arguments]     ${cenodeathreqtype}  ${cenodeathfirstname}
    ${conn}=   DatabaseLibrary.Connect To Database   pymssql   ${DBName}   ${DBUser}   ${DBPassword}   ${DBHost}   ${DBPort}
    log to console    ${conn}
    #${output}=      Execute SQL String  select top 1 seriesno from encode.request where requesttype=${cibirthreqtype} and prifirstname=${cibirthfirstname} order by createdon desc
    @{results}   Query    ${retrievetrannoqueryQuery}
    #@{results}    Query    ${retrievecenodeathtrannoquery}
    FOR  ${seriesno}  IN  @{results}
    log to console     ${seriesno}
    END
    ${seriesno2}=   remove string   ${seriesno}[0]  ()
    ${transactionnumber}=    Set Variable   ${seriesno2}${sequencenumber}
    [return]  ${transactionnumber}

Launch Brwoser
    Open Browser    ${Browser}    Chrome
    Maximize Browser Window

Open Counter
    Click Element    ${open_counter}
    Sleep    3S
    Click Button     ${ok_alret}
    Sleep    2S

 Close Counter
    Click Element    ${close_counter}
    Sleep    3S
    Click Button    ${yes}
    Sleep    2S
    Click Button    ${yes_ok}

Access Home Page
    Click Element    ${application_home}

Client Certificate Request
    Click Element    ${ccr_link}

Scrollbar
    Execute Javascript   window.scrollTo(0,2000)

Request Entry Requester Details
    Input Text    ${requester_lastname}    HC
    Input Text    ${requester_firstname}    Vijay
    Input Text    ${requester_middleinitial}    H
    Input Text    ${req_address1}    Bangalore1
    Input Text    ${req_address2}    Bangalore2
    Click Element    ${req_province}
    Click Element    ${req_city}
    Click Button    ${confirm1}
    Click Button    ${confirm2}
    Sleep    3S
    Click Button    ${ok_alert2}

Walkin and Payment Requester Details
    Input Text    ${walkinpay_requester_lastname}    HC
    Input Text    ${walkinpay_requester_firstname}    Vijay
    Input Text    ${walkinpay_requester_middleinitial}    H
    Input Text    ${walkinpay_req_address1}    Bangalore1
    Input Text    ${walkinpay_req_address2}    Bangalore2
    Select From List By Value    ${walkinpay_req_province}   001
    Sleep    5S
    Click Element    ${walkinpay_req_city}
    Select From List By Value    id=cmbCity     00101
############################################################
#File Upload
#    [Arguments]     ${path}     ${file}
#    uploadfile      ${path}     ${file}

######## Valid OR entry for reverse OR #########
Valid OR Entry
    [Arguments]      ${locator}     ${OR_format}
    ${orvalue}=     Set Variable     ${OR_format}
    ${Or_split}=    Split String    ${orvalue}    -
    ${or_1}      Set Variable       ${Or_split}[0]
    ${or_2}      Set Variable       ${Or_split}[1]
    ${or_3}      Set Variable       ${Or_split}[2]
    ${or_4}      Set Variable       ${Or_split}[3]
    ${or_5}      Set Variable       ${Or_split}[4]
    ${or_6}      Set Variable       ${Or_split}[0]${Or_split}[1]${Or_split}[2]${Or_split}[3]${Or_split}[4]
    Input Text    ${locator}    ${or_6}
    log     ${or_6}
    [Return]     ${or_6}

Input OR Text For Reverse OR
    [Arguments]      ${locator}     ${OR_format}
    ${orvalue}=    Set Variable     ${OR_format}
    ${Or_split}=    Split String    ${orvalue}    -
    ${or_number}     Set Variable     ${Or_split}[0]${Or_split}[1]${Or_split}[2]${Or_split}[3]${Or_split}[4]
    Input Text    ${locator}    ${or_number}
    log     ${or_number}
    [Return]    ${or_number}
################################################################
### SO Approval and Dis approval ###
Supervisor Override for Reverse OR
    Sleep    3S
    Launch Brwoser
    Access Home Page
    Click Element    ${more_option}
    Click Element      ${system_admin}
    Sleep   5S
    Click Element    ${supervisor_override}
    ${TabbedWindow}   Get Window Handles
    Log    ${TabbedWindow}[1]
    Switch Window   ${TabbedWindow}[1]
    Click Button    ${approve_so}
    #Close Browser
    Sleep    5S
    Switch Browser   1
    Sleep    15s
    Click Button    ${reversepay_soapprove_ok}
    Sleep    3S
    Click Button    ${reversepay_soapprove_finalok}

##################################################################
Supervisor Override for EE Approve
    Launch Brwoser
    Access Home Page
    Click Element    ${more_option}
    Click Element      ${system_admin}
    Sleep   5S
    Click Element    ${supervisor_override}
    ${TabbedWindow}   Get Window Handles
    Log    ${TabbedWindow}[1]
    Switch Window   ${TabbedWindow}[1]
    Sleep    5S
    Click Button    ${approve_so}
    #Close Browser
    Sleep    5S
    Switch Browser    1
    Sleep    15s
    Click Button    ${reversepay_soapprove_ok}
##################################################################
Outlet Change002
    Click Element    ${more_option}
    Click Element    ${system_admin}
    Click Element    ${userdetail_info}
    Click Element    ${search_field}
    Input Text       ${search_field}    Vijay
    Click Element    ${edit_name}
    Click Element    ${outlet_change002}
    Click Element    ${save}
Outlet Change003
    Click Element    ${more_option}
    Click Element    ${system_admin}
    Click Element    ${userdetail_info}
    Click Element    ${search_field}
    Input Text       ${search_field}    Vijay
    Click Element    ${edit_name}
    Click Element    ${outlet_change003}
    Click Element    ${save}

Issue Cenodeath Certificate      ####Advisory on death certificate
    Click Element    ${transaction_link}
    Sleep    10S
    Input Text     ${dren_value}    00101B22C1054
    Click Button    ${submit1}
    Click Element    ${add_selectionlist}
    Sleep    5S
    Click Button    ${view_selectionlist}
    Sleep    5S
    Click Button    ${generate_advisory}
    Sleep    5S
    Click Button    ${yes_confirmation}
    Sleep    5S
    Click Button    ${ok_success}

Release Certificate   ### Cenodeath  , ### CI-Birth , ### Auth-Marriage , ### Doc-Print Death , ### Doc-Print CENODEATH, ### CENODEATH, ### PA-M
    Sleep    5S
    Click Button     ${seacrh_button}
    Click Element    ${click_transaction_link}
    Click Button     ${print-button}
    Sleep    5S
    Click Element    ${validid_present_yes}
    Click Element     ${button_proceed}
    Sleep    5S
    Click Element    ${select_printer}
    Sleep    3S
    Click Button    ${final_print}
    Sleep    5S
    Click Button    ${continue_secpa}
    Sleep    5S
    Input Text      ${enter_secpa}    ${secpa_number}
    Click Button    ${saveandcontinue}
    Sleep    3S
    Click Button    ${final_ok}

Issue VOCENOMAR Certificate
    Click Element    ${transaction_link_vocenomar}
    Sleep    10S
    Input Text       ${mren_value}    00101B22D1052
    Sleep    3S
    Execute Javascript   window.scrollTo(0,200)
    Sleep    3S
    Click Button     ${submit_vocenomar}
    Sleep    3S
    Execute Javascript   window.scrollTo(0,500)
    Sleep    5S
    Click Element    ${add_selectionlist1}
    Sleep    3S
    Execute Javascript   window.scrollTo(0,0)
    Sleep    3S
    Execute Javascript   window.scrollTo(0,300)
    Sleep    3S
    Click Button     ${view_selectionlist1}
    Sleep    2S
    Execute Javascript   window.scrollTo(0,2000)
    Sleep    2S
    Click Button     ${generate_advisory1}
    Sleep    5S
    Click Button    ${yes_confirmation1}
    Sleep    5S
    Click Button    ${ok_success1}

Issue Positive Certificate
    Click Element    ${transaction_link}
    Sleep    5S
    Input Text       ${bren_value}    00101B22C1081
    Sleep    5S
    Execute Javascript  window.scrollTo(0,400)
    Sleep    2S
    Click Button     ${submit_btn}
    Sleep    2S
    Scrollbar
    Sleep    2S
    Click Element    ${view_image}
    Sleep    5S
    Click Button     ${issue_certificate}
    Sleep    5S
    Click Button     ${continue}
    Sleep    5S
    Click Button     ${ok_confirmation}
    Sleep    5S
    Click Button     ${ok_success}

Issue RA9255 Positive Certificate
    Click Element    ${transaction_link}
    Sleep    2S
    Input Text       ${bren_value}    00101A98A10B1
    Sleep    5S
    Execute Javascript   window.scrollTo(0,500)
    Sleep    2S
    Scrollbar
    Sleep    2S
    Click Button     ${submit_btn}
    Click Element    ${view_image}
    Sleep    5S
    Click Button     ${issue_certificate}
    Sleep    5S
    Click Button     ${continue}
    Sleep    5S
    Click Button     ${ok_confirmation}
    Sleep    5S
    Click Button     ${ok_success}

#Issue Authentication Marriage Positive Certificate
#    Click Element    ${transaction_link}
#    Sleep    5S
#    Input Text       ${mren_value}    00101B21B1012
#    Scrollbar
#    Sleep    5S
#    Click Button     ${authsubmit_btn}
#    Click Element    ${view_image}
#    Sleep    5S
#    Click Button     ${issue_certificate}
#    Sleep    5S
#    Click Button     ${continue}
#    Sleep    3S
    Click Button     ${ok_confirmation}
#    Sleep    3S
#    Click Button     ${ok_success}

### Generate An Advisory for CENOMAR ###
Issue GenerateAnAdvosory Certificate
    Click Element    ${transaction_link}
    Sleep    10S
    Input Text     ${rso_lastname}     HLN
    Input Text     ${rso_firstname}     HFN
    Input Text     ${rso_mother_lasttname}      M
    Input Text     ${rso_mother_firsttname}     M
    Execute Javascript   window.scrollTo(0,200)
    Sleep    3S
    Click Button    ${submit1}
    Sleep    5S
    Execute Javascript   window.scrollTo(0,500)
    Sleep    3S
    Click Element     ${rso_add_selectionlist}
    Sleep    3S
    Execute Javascript   window.scrollTo(0,0)
    Execute Javascript   window.scrollTo(0,300)
    Click Button     ${rso_view_selectionlist}
    Execute Javascript   window.scrollTo(0,2000)
    Click Button     ${rso_generate_advisory}
    Sleep    5S
    Click Button    ${yes_confirmation}
    Sleep    5S
    Click Button    ${ok_success}

Issue Positive Death Certificate
    Click Element    ${transaction_link}
    Sleep    5S
    Input Text       ${vodren_value}    03900B22C1010
    Sleep    5S
    Execute Javascript  window.scrollTo(0,400)
    Sleep    2S
    Click Button     ${vodeathsubmit}
    Click Element    ${vodeath_viewimage}
    Sleep    5S
    Click Button     ${issue_certificate}
    Sleep    5S
    Click Button     ${continue}
    Sleep    5S
    Click Button     ${ok_confirmation}
    Sleep    5S
    Click Button     ${ok_success}

Issue VoCenodeath Certificate  ### Generate CENODEATH certificate for VO-CENODEATH / CENODEATH (search with no PDVE data)
    Click Element    ${transaction_link}
    Sleep    5S
    Input Text    ${vocenodeath_lastname}     DBCA
    Input Text    ${vocenodeath_firstname}    DBAC
    Scrollbar
    Sleep    5S
    Execute Javascript  window.scrollTo(0,400)
    Sleep    5S
    Click Button    ${vocenodeathsubmit}
    Sleep    5S
    Click Button    ${vocenodeath_ok1}
    Click Button    ${vocenomar_veisearch}
    Sleep    5S
    Click Button    ${vocenodeath_ok2}
    Click Button    ${generate_cenodeath}
    Sleep    5S
    Click Button     ${vocenodeath_okcon}
    Sleep    5S
    Click Button     ${vocenodeath_oksuc}

 Electronic Endorsement - APPROVAL - MARRIAGE
    Launch Brwoser
    Open Counter
    Access Home Page
    Click Element    ${more_option}
    Click Element    ${vei}
    Click Element    ${vei_home}
    Sleep   5s
    Click Element    ${Encodeendorsed}
    Sleep    3
    Select From List By Value   ${EndorsedRegprov}     001
   # Sleep    3
    Select From List By Value   ${Endorsedregcity}     00101
   # Sleep    3
    Select From List By Value   ${Regstatus}   2
   # Sleep    3
    Input Text    ${Endorsedregdate}     ${Endorsedregdatemarriage_yml}
    Select From List By Value   ${EndorsedRegbook}     D   ### Marriage
    Sleep    2
    Select From List By Value   ${EndorsedDocsub}   0A     ### Certificate of marriage
    Input Text  ${EndorsedReg}      ${EndorsedRegnummarriage_yml}
    Sleep   2s
    Input Text   ${Endorsed_hfn}     hfn
    Input Text   ${Endorsed_hln}     hln
    Input Text   ${Endorsed_hmfn}        m
    Input Text   ${Endorsed_hmln}        m
    Input Text   ${Endorsed_wifefn}      wfn
    Input Text   ${Endorsed_wifeln}      wln
    Input Text   ${Endorsed_wifemfn}     m
    Input Text   ${Endorsed_wifemln}     m
    Input Text   ${Endorsed_dateofmrgday}    01
    Select From List By Value   ${Endorsed_dateofmrg_mnth}   11
    Input Text   ${Endorsed_dateofmrg_year}  2022
    Select From List By Value   ${endorsed_pom_province}    001
    Select From List By Value   ${endorsed_pom_city}    00101
    Execute Javascript  window.scrollTo(0,2000)
    Sleep   3s
    Click Button    ${endorsed_submit}
    Sleep   3s
    Click Button    ${EncodeOk}
    Sleep   3s
    Click Element    ${more_option}
    Click Element    ${EncodeEnd}
    Sleep    3
    Click Element   ${EndorsedcreateEE}
    Sleep    5s
    Select From List By Label    ${RegBookEE}   MARRIAGE-D
    Input Text    ${RegnoEE}      ${EndorsedRegnummarriage_yml}
    #Select From List By Value    ${RegcounEE}   PHILIPPINES
    Select From List By Label   ${RegcityEE}   ABRA
    Select From List By Value   ${RegProvEE}   00101
    Sleep    3
    Click Button   ${EEsearch}
    Sleep    3
    Execute Javascript  window.scrollTo(0,0)
    Sleep    3
    Click Element     ${EEsearch_selectrdbtn}
#   Click Button    //a[text()="More Details"]/following::button[2]
    Scrollbar
    Sleep   2s
    Click Button    ${createEE_continue}
    Sleep    3
    Choose File    ${createEE_choosefile}     C:/Users/HCVijayK/PycharmProjects/CRSITP2/Files/Tiff_Files/page1.tif
    Sleep    3
    Scrollbar
    Sleep    3
    Click Button    ${createEE_choosefile_ctn}
    Sleep    5
    Click Element    ${createEE_choosefile_ctn_selectrdo}
    Sleep    3
    Input Text    ${createEE_inputrandomno}    00000-000-00000-000
    Sleep    3
    Click Button    ${createEE_inputrandomno_search}
    Sleep    3
    Click Button    ${createEE_inputrandomno_search_ok}
    Sleep    3
    Click Button    ${createEE_clk_autogeneratebtn}
    Sleep    5
    ${Get_EE}  Get Text    ${createEE_clk_autogeneratebtn_copyno}
    Sleep    5
    Log    ${Get_EE}
    Sleep    5
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Scroll Element Into View    ${createEE_clk_autogeneratebtn_submit}
    Click Button     ${createEE_clk_autogeneratebtn_submit}
    Sleep    3
    Click Button    ${createEE_clk_autogeneratebtn_submit2}
    Sleep    3
    Click Button    ${createEE_clk_autogeneratebtn_submit2_ok}
    Sleep    5
    Click Element    ${more_option}
    Click Element    ${EncodeEnd}
    Sleep    2
    Click Element    ${createEE_vip_party}
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Element    ${createEE_vip_party_selectrdobtn}
    Sleep    3
    Input Text    ${createEE_vip_party_selectrdobtn_entereeno}    ${Get_EE}
    Sleep    3
    Click Button    ${createEE_vip_party_selectrdobtn_entereeno_serach}
    Sleep    4
    Click Element    ${createEE_vip_party_selectrdobtn_entereeno_serach_clk}
    Sleep    5
    Click Button    ${Rep_soyes}
    #Close Counter
    Supervisor Override for EE Approve
    Sleep    10S
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    5S
    Click Button    ${EE_approvebtn}
    Sleep    2S
    Click Button    ${EE_approvebtn_yes}
    Sleep    5S
    Input Text    ${EE_approvebtn_yes_text}    Approve
    Sleep    3S
    Click Button    ${EE_approvebtn_yes_sbumit}
    Sleep    3S
    Click Button    ${EE_approvebtn_yes_sbumit_ok}


#CDLI Marriage Registry Number    ${cdli_mrg_registry_no1}    ${cdli_mrg_batch_num1}  ${cdli_mrg_regnumber1}
##    [Tags]   Sanity11
##    Launch Brwoser
##    Open Counter
##    Access Home Page
#    Click Element    ${more_option}
#    Click Element    ${vei}
#    Click Element    ${vei_home}
#    Click Element    ${encode_lcr_cdli_mrg_submission}
#    Click Element    ${cdli_mrg_reg_city}
#    Select From List By Value     ${cdli_mrg_regbooktype}    I
#    Sleep    2S
#    Select From List By Value    ${cdli_mrg_doc_type}    MG
#    Sleep    2S
#    Select From List By Value     ${cdli_mrg_docsub_type}    GA
#    Sleep    10S
#    Input Text     ${cdli_mrg_registry_no}      ${cdli_mrg_registry_no1}
#    Sleep    3S
#    Input Text    ${cdli_mrg_datereceived}    11/18/2022
#    Sleep    2S
#    Click Button     ${cdli_mgr_next}
#    Sleep    3S
#    Select Checkbox    ${cdli_mrg_chkbox1}
#    Select Checkbox    ${cdli_mrg_chkbox4}
#    Select Checkbox    ${cdli_mrg_chkbox6}
#    Sleep    2S
#    Execute Javascript  window.scrollTo(0,600)
#    Sleep    2S
#    Select Checkbox    ${cdli_mrg_chkbox9}
#    Select Checkbox    ${cdli_mrg_chkbox11}
#    Select Checkbox    ${cdli_mrg_chkbox13}
#    Sleep    3S
#    Scrollbar
#    Sleep    2S
#    Click Button    ${cdli_mrg_next}
#    Sleep    3S
#    Click Element    ${cdli_mrg_wizardnext}
#    Sleep    3S
#    Scrollbar
#    Sleep    3S
#    Click Button    ${cdli_mrg_confirm}
#    Sleep    3S
#    Click Button    ${cdli_mrg_confirm_ok}
#    Sleep    3S
#    Click Element    ${cdli_mrg_confirm_ok_no}
#
#    ### CDLI Batch ###
#    Sleep    5S
#    Click Element    ${cdli_mrg_batch}
#    Input Text    ${cdli_mrg_batchno}     ${cdli_mrg_batch_num1}
#    Select From List By Value    ${cdli_mrg_batch_country_name}      608
#    Select From List By Value    ${cdli_mrg_batch_city_name}       00101
#    Sleep    3S
#    Input Text    ${cdli_mrg_batch_registration_year}    2022
#    Sleep    2S
#    Select From List By Value    ${cdli_mrg_batch_registration_month}     10  ### give previous month value EX: if it is oct=10 give sep=9
#    Sleep    3S
#    Select From List By Value    ${cdli_mrg_batch_regbooktype}     I
#    Sleep    5S
#    Input Text    ${cdli_mrg_batch_registry_no_start}    ${cdli_mrg_registry_no1}
#    Sleep    10S
#    Input Text    ${cdli_mrg_batch_registry_no_end}      ${cdli_mrg_registry_no1}
#    Input Text    ${cdli_mrg_batch_actualcount}     1
#    Input Text    ${cdli_mrg_batch_problemcount}    0
#    Click Button    ${cdli_mrg_batch_submit}
#    Sleep    3S
#    Click Element    ${cdli_mrg_batch_submit_ok}
#    Sleep    10S
#
#    Input Text     ${cdli_mrg_batch_regno}      -${cdli_mrg_regnumber1}
#    Sleep    2S
#    Click Element    ${cdli_mrg_batch_docsubtype}
#    Click Button     ${cdli_mrg_batch_continue}
#    Sleep    3S
#    Click Element    ${cdli_mrg_batch_infocorrected}
#    Click Element    ${cdli_mrg_batch_Petitioners_Relationship}
#    Click Element    ${cdli_mrg_batch_Petition's Reasons/Grounds}
#    Input Text    ${cdli_mrg_batch_Registration_date_day}    01
#    Select From List By Value    ${cdli_mrg_batch_Registration_date_month}    10
#    Input Text    ${cdli_mrg_batch_Registration_date_year}    2022
#    Input Text    ${cdli_mrg_batch_groomsFN}    Test
#    Input Text    ${cdli_mrg_batch_groomsLN}    Test
#    Input Text    ${cdli_mrg_batch_bridesFN}    Test
#    Input Text    ${cdli_mrg_batch_bridesLN}    Test
#    Input Text    ${cdli_mrg_batch_dom_day}    01
#    Select From List By Value    ${cdli_mrg_batch_dom_month}   10
#    Input Text    ${cdli_mrg_batch_dom_year}    2022
#    Sleep    2S
#    Select From List By Value    ${cdli_mrg_batch_pom_pro}     001
#    Sleep    2S
#    Select From List By Value    ${cdli_mrg_batch_pom_city}    00101
#    Input Text    ${cdli_mrg_batch_groomsmotherFN}    Test
#    Input Text    ${cdli_mrg_batch_groomsmotherLN}    Test
#    Input Text    ${cdli_mrg_batch_bridesmotherFN}    Test
#    Input Text    ${cdli_mrg_batch_bridesmotherLN}    Test
#    Sleep    2S
#    Scrollbar
#    Sleep    2S
#    Select From List By Value    ${cdli_mrg_batch_Dateofpromulgation_M}    10
#    Input Text    ${cdli_mrg_batch_Dateofpromulgation_D}    01
#    Input Text    ${cdli_mrg_batch_Dateofpromulgation_Y}    2022
#    Sleep    2S
#    Select From List By Value    ${cdli_mrg_batch_placeofpromulgation_pro}     001
#    Select From List By Value    ${cdli_mrg_batch_placeofpromulgation_city}    00101
#    Click Button    ${cdli_mrg_batch_final_submit}
#    Sleep    3S
#    Click Button    ${cdli_mrg_batch_final_submit_ok}
#    Sleep    3S
#    Click Button    ${cdli_mrg_batch_final_submit_success}
