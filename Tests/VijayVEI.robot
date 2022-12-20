*** Settings ***
Library    SeleniumLibrary
Library    Collections
#Resource    ../Resources/ITP2KeyWords.robot
Resource     C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/ITP2KeywordsVijay.robot
Resource    ../Resources/ITP2KeywordsJasmine.robot
#Variables   C:/Users/HCVijayK/PycharmProjects/CRSITP2/TestData.yml     ### TestData yamal file path
Variables    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/TestDataVijay.yml

*** Variables ***
### 258590 - Regular Submission - Foreign Marriage ### Sanity 1
#${registry_num_foreign_marriage}     2022-1234308
#${batch_num_marriage}        24
#${reg_marriage}      1234308

### 258547 - RegularSubmissionCRD ### Sanity 2
#${registry_num_crd_birth}     2022-1234353
#${batch_num_birth}       301
#${reg_birth}      1234353

### DC Batch ###
#${staging_batchid}     00101202211CB0123406R

*** Test Cases ***
EncodeForeignMarriage   ### Set Office code to DPU before run the script
    [Tags]   Smoke1
    Launch Brwoser
    ITP2KeywordsVijay.Close Counter
    Sleep    3S
    ITP2KeywordsVijay.Open Counter
    Access Home Page
    Click Element    ${more_option}
    Click Element    ${vei}
    Click Element    ${vei_home}
    Click Element    ${encode_lcr_crd_submission}
    Click Element    ${reg_country}
    Click Element    ${reg_booktype}
    Sleep    5S
    Input Text    ${regno_start}    ${registry_num_foreign_marriage}
    Sleep    15S
    Input Text    ${regno_end}      ${registry_num_foreign_marriage}
    Sleep    3S
    Input Text    ${no_of_docs}    1
    Sleep    5S
    Input Text    ${date_received}    12/07/2022    ### change to current date
    Click Button    ${vei_save}
    Sleep    3S
    Click Element    ${no_in_alert}
    Sleep    3S
    ### Encode Batch ###
    Click Element    ${crd_batch}
    Input Text    ${batch_no}    ${batch_num_marriage}
    Click Element    ${reg_country_batch}
    Input Text    ${reg_year}    2022
    Sleep    3S
    Select From List By Value    ${reg_month}    11    ### give previous month value EX: if it is oct=10 give sep=9
   # Click Element    ${reg_month}
    Sleep    3S
    Click Element    ${reg_booktype_batch}
    Sleep    5S
    Input Text    ${regno_start_batch}    ${registry_num_foreign_marriage}
    Sleep    10S
    Input Text    ${regno_end_batch}      ${registry_num_foreign_marriage}
    Input Text    ${actual_doc_count}     1
    Input Text    ${problem_doc_count}    0
    Click Button    ${submit_batch}
    Sleep    3S
    Click Element    ${ok_batch}

    Sleep    10S
    Input Text    ${reg_no_batch}      -${reg_marriage}
    Sleep    3S
    Click Button    ${btn_continue}
    ### Encode CRDs (Foreign Marriage) ###
    Input Text    ${vei_hus_firstname}    Vijay
    Input Text    ${vei_hus_lasttname}     HC
    Click Element    ${vei_hus_age}
    Sleep    3S
    Click Element    ${vei_country}
    Click Element    ${vei_male}
    Click Element    ${vei_citizenship}
    Click Element    ${vei_citizenship}
    Click Element    ${vei_hus_residence}
    Click Element    ${vei_hus_religion}
    Click Element    ${vei_hus_civil_status}
    Input Text    ${vei_hus_motherfirstname}    Test1
    Input Text    ${vei_hus_motherlastname}    Test2
    Click Element    ${vei_hus_citizenship}
    Click Element    ${vei_hus_marriage_order}
    Input Text    ${vei_wife_firstname}    Test3
    Input Text    ${vei_wife_lastname}     Test4
    Click Element    ${vei_wife_age}
    Click Element    ${vei_wife_pob_country}
    Click Element    ${vei_wife_citizenship}
    Click Element    ${vei_wife_residence}
    Click Element    ${vei_wife_religion}
    Click Element    ${vei_wife_civil_status}
    Input Text    ${vei_wife_motherfirstname}    Test5
    Input Text    ${vei_wife_motherlasttname}    Test6
    Sleep    3S
    Click Element    ${vei_mother_citizenship}
    Click Element    ${vei_wife_marriage_order}
    Click Element    ${vei_placetype}
    Click Element    ${vei_placeofmarriage}
    Select From List By Value    ${vei_dom_month}    11
    Input Text    ${vei_dom_day}     1
    Input Text    ${vei_dom_year}    2022
    Click Element    ${vei_religious_sect}
    Sleep    3S
    Click Element    ${vei_typeof_ceremony}
    Input Text     ${vei_dateofreg}    11/07/2022     ### give previous month value EX: if it is oct=10 give sep=9
    Click Element    ${vei_regstatus}
    Click Button    ${vei_batch_submit}

    Sleep    5S
    Click Element    ${vei_alert_ok}
    Sleep    3S
    Click Element    ${vei_batch_ok}

    Click Element    ${vei_backtoveihome}
    ###  Edit CRDs (Foreign Marriage) ###
    Click Element    ${vei_view_edit_crd}
    Input Text    ${vei_search_batchno}      ${batch_num_marriage}
    Click Element    ${vei_search_countryname}
    Input Text    ${vei_search_year}    2022
    Click Element    ${vei_search_regbook}
    Click Element    ${vei_searchbtn}

    Sleep    3S
    Scrollbar
    Sleep    3S
    Click Element    ${vei_reg_hyperlink}
    Click Button    ${vei_edit}    #check element/button
    Input Text    ${vei_hus_firstname}    Vijay1
    Input Text    ${vei_hus_lasttname}     HC1
    Sleep    3S
    Scrollbar
    Sleep    5S
    Click Button    ${vei_editsubmit}
    Sleep    3S
    Click Element    ${vei_okeditsuccess}
    Sleep    3S
    Execute Javascript   window.scrollTo(0,0)
    ### Quality check reports/Certification Pass Report ###
    Sleep    3S
    Click Element    ${vei_backtoveihome}
    Sleep    3S
    Click Element    ${vei_pass_quality_check_report}
    Click Element    ${vei_pass_report_type}
    Click Button     ${vei_continue}
    Input Text       ${vei_pass_search_batchno}     ${batch_num_marriage}
    Click Element    ${vei_pass_search_countryname}
    Input Text       ${vei_search_year}    2022
    Click Element     ${vei_pass_search_regbook_marriage}
    Click Button    ${vei_generate_report}
    Sleep    2S
    Execute Javascript  window.scrollTo(0,400)
    Sleep    2S
    ### Checking pass status ###
    ${Certification Pass Status}      Get Text    //span[text()='PASSED']
    Should Be Equal    ${Certification Pass Status}    PASSED


RegularSubmissionCRD    ### Set Office code to PO-ABRA before run the script
    [Tags]   Smoke2
    Launch Brwoser
    ITP2KeywordsVijay.Close Counter
    Sleep    3S
    ITP2KeywordsVijay.Open Counter
    Access Home Page
    Click Element    ${more_option}
    Click Element    ${vei}
    Click Element    ${vei_home}
    Click Element    ${encode_lcr_crd_submission}
    Click Element    ${crd_reg_city}
    Click Element    ${crd_regbooktype}
    Sleep    5S
    Input Text    ${regno_start}    ${registry_num_crd_birth}
    Sleep    15S
    Input Text    ${regno_end}      ${registry_num_crd_birth}
    Input Text    ${no_of_docs}    1
    Sleep    10S
    Input Text    ${date_received}    12/09/2022    ### change to current date
    Click Button    ${vei_save}
    Sleep    3S
    Click Element    ${no_in_alert}
#    Sleep    3S
#    ### Create CRD Batch ###
#    Click Element    ${crd_batch}
#    Input Text    ${batch_no}    ${batch_num_Birth}
#    Click Element    ${crd_reg_country_batch}
#    Click Element    ${crd_reg_city_batch}
#    Sleep    3S
#    Input Text    ${reg_year}    2022
#    Sleep    2S
#    Select From List By Value    ${reg_month}     11  ### give previous month value EX: if it is oct=10 give sep=9
#    #Click Element    ${reg_month}
#    Sleep    3S
#    Click Element    ${crd_reg_booktype_batch}
#    Input Text    ${regno_start_batch}    ${registry_num_crd_birth}
#    Sleep    10S
#    Input Text    ${regno_end_batch}      ${registry_num_crd_birth}
#    Input Text    ${actual_doc_count}     1
#    Input Text    ${problem_doc_count}    0
#    Click Button    ${submit_batch}
#    Sleep    3S
#    Click Element    ${ok_batch}
#
#    Sleep    10S
#    Input Text    ${reg_no_batch}      -${reg_birth}
#    Sleep    3S
#    Click Button    ${btn_continue}
#
#    Input Text    ${crd_child_firstname}    Vijay
#    Input Text    ${crd_child_middlename}    H
#    Input Text    ${crd_child_lastname}     HC
#    Click Element    ${crd_sex}
#    Input Text    ${crd_dateofbirth_day}    01
#    Click Element    ${crd_dateofbirth_month}
#    Input Text    ${crd_dateofbirth_year}    2022
#    Click Element    ${crd_placetype}
#    Input Text    ${crd_nameofhospital}    Govt
#    Click Element    ${crd_pob_province}
#    Click Element    ${crd_pob_city}
#    Click Element    ${crd_pob_barangay}
#    Click Element    ${crd_typeofbirth}
#    Click Element    ${crd_birthorder}
#    Input Text    ${crd_weight}    999
#    Input Text    ${crd_mother_firstname}    Test1
#    Input Text    ${crd_mother_lastname}    Test2
#    Sleep    3S
#    Click Element    ${crd_mother_Citizenship}
#    Click Element    ${crd_mother_religion}
#    Click Element    ${crd_mother_ethnicity}
#    Click Element    ${crd_totalno_child_alive}
#    Click Element    ${crd_noofchild_stillalive}
#    Click Element    ${crd_child_nodead}
#    Click Element    ${crd_mother_occupation}
#    Click Element    ${crd_mother's_age}
#    Click Element    ${crd_mother's_residence_province}
#    Click Element    ${crd_mother's_residence_city}
#    Click Element    ${crd_mother's_barangay}
#    Select From List By Value    ${crd_dom_month}   11
#    Input Text    ${crd_dom_day}    01
#    Input Text    ${crd_dom_year}    2022
#    Click Element    ${crd_pom_province}
#    Click Element    ${crd_pom_city}
#    Click Element    ${crd_legitimacy_status}
#    Click Element    ${crd_attendant}
#    Input Text     ${crd_attendant_title}    Abcd
#    Select From List By Value    ${crd_cert_attendant_month}   11
#    Input Text    ${crd_cert_attendant_day}    01
#    Input Text    ${crd_cert_attendant_year}    2022
#    Click Element    ${crd_informant}
#    Input Text    ${crd_dateofreg}    11/01/2022
#    Click Element    ${crd_reg_status}
#    Click Button    ${crd_batch_submit}
#    Sleep    5S
#    Click Button    ${crd_alert_ok}
#    Sleep    3S
#    Click Button    ${crd_batch_ok}
#    ### Quality check reports/Certification Pass Report ###
#    Sleep    3S
#    Click Element    ${vei_backtoveihome}
#    Sleep    3S
#    Click Element    ${vei_pass_quality_check_report}
#    Click Element    ${vei_pass_report_type}
#    Click Button     ${vei_continue}
#    Input Text       ${vei_pass_search_batchno}     ${batch_num_birth}
#    Click Element    ${vei_pass_search_countryname_phli}
#    Click Element    ${vei_pass_search_provincename}
#    Click Element    ${vei_pass_search_cityname}
#    Sleep    3S
#    Input Text       ${vei_search_year}    2022
#    Click Element    ${vei_pass_search_regbook_birth}
#    Sleep    5S
#    Click Button     ${vei_generate_report}
#    Sleep    2S
#    Execute Javascript  window.scrollTo(0,400)
#    Sleep    2S
#    ### Checking pass status ###
#    ${Certification Pass Status}      Get Text    //span[text()='PASSED']
#    Should Be Equal    ${Certification Pass Status}    PASSED
#    ###########################
#    Sleep    2S
#    Execute Javascript  window.scrollTo(0,0)
#    Sleep    2S
#    Click Element    ${back_to_report_type}
#    Click Element    ${back_to_report_type}
#    Click Element    ${back_vei_home}
#    ### Transmit to CO ########
#    Sleep    3S
#    Execute Javascript  window.scrollTo(0,200)
#    Sleep    5S
#    Click Element     ${tran_crd_transmit_to_co}
#    Sleep    5S
#    Input Text        ${tran_crd_transmit_co_regyear}    2022
#    Select From List By Value    ${tran_crd_transmit_co_regmonth}     11
#   # Click Element     ${tran_crd_transmit_co_regmonth}
#    Sleep    3S
#    Click Button      ${tran_crd_transmit_co_search}
#    Sleep    3S
#    Input Text        ${tran_crd_transmit_co_search_textbox}    ${registry_num_crd_birth}
#    Sleep    10S
#    Click Element    ${tran_crd_transmit_co_select_chkbox}   ### Select Checkbox will not working here use click Element
#    Sleep    5S
#    Click Button    ${tran_crd_transmit_co_clickok}
#    Sleep    3s
#    Click Button    ${tran_crd_transmit_co_button}
#    Click Button    ${tran_crd_transmit_co_view_tran_report}
#    Sleep    35
#    ${transmittal_reference_num}     Get Text    ${tran_crd_transmit_co_copy_tran_report_num}
#    Sleep    2S
#    Click Element     ${back_to_vei_home_in_transmitto_co}
#    Sleep    2S
#    ### Changing work unit to DPU ###
#    Click Element    ${more_option}
#    Click Element    ${system_admin}
#    Sleep    2S
#    Click Element    ${userdetail_info}
#    Click Element    ${search_field}
#    Input Text       ${search_field}    Vijay
#    Click Element    ${edit_name}
#    Click Element    ${office_change_dpu}
#    Click Button     ${save_userdetails}
#    Sleep    3S
#    ### Receive CRD Batchs ####
#    Launch Brwoser
#    Access Home Page
#    #Open Counter
#    Click Element    ${more_option}
#    Click Element    ${vei}
#    Click Element    ${vei_home}
#    Sleep    3S
#    Execute Javascript    window.scrollTo(0,2000)
#    Sleep    3S
#    Click Element    ${crd_receive_crd_batch}
#    Sleep    5S
#    Input Text      ${crd_search_tran_reference_num}    ${transmittal_reference_num}
#    Click Button    ${crd_tran_ref_search}
#    Sleep    3S
#    Scroll Element Into View    ${crd_receive_batch_date}
#    Sleep    2S
#    Input Text    ${crd_receive_batch_date}    12/09/2022
#    Press Keys    ${crd_receive_batch_date}    TAB
#    Sleep    5S
#    Click Button    ${crd_receive_batch_save}
#    Sleep    3S
#    Click Button    ${crd_receive_batch_save_ok}
#    Click Element    ${crd_receive_batch_backtosearch}
#    Click Element    ${back_vei_home}
#    Sleep    5S
#    ### Forward Batches to DCC ###
#    Execute Javascript    window.scrollTo(0,2000)
#    Sleep    3S
#    Click Element    ${crd_forward_batchs_dcc}
#    Input Text    ${crd_forward_batchs_dcc_regyear}    2022
#    Sleep    3S
#    Select From List By Value     ${crd_forward_batchs_dcc_regmonth}     11  ### give previous month value EX: if it is oct=10 give sep=9
#    Click Button    ${crd_forward_batchs_dcc_search}
#    Input Text    ${crd_forward_batchs_dcc_search_textbox}    ${registry_num_crd_birth}
#    Sleep    5S
#    Click Element    ${crd_forward_batchs_dcc_select_chkbox}  ### check box/element
#    Sleep    5S
#    Scrollbar
#    Sleep    2S
#    Click Button    ${crd_forward_batchs_dcc_submit}
#    Sleep    3S
#    Click Button    ${crd_forward_batchs_dcc_transmit_to_dcc_btn}
#    Sleep    3S
#    Click Button    ${crd_forward_batchs_dcc_suc_ok}
#    Sleep    2S
#    ${copy_reference_num}    Get Text    ${crd_forward_batchs_copy_ref_num}
#    Sleep    5s
#    ### Changing work unit to Document Capture Center ###
#    Click Element    ${more_option}
#    Click Element    ${system_admin}
#    Click Element    ${userdetail_info}
#    Sleep    3S
#    Click Element    ${search_field}
#    Input Text       ${search_field}    Vijay
#    Click Element    ${edit_name}
#    Click Element    ${office_change_dcc}
#    Click Button     ${save_userdetails}
#    Sleep    3S
#    Launch Brwoser
#    Access Home Page
#    Click Element    ${more_option}
#    Click Element    ${vei}
#    Click Element    ${vei_home}
#    Sleep    5S
#    ### Receive CRD Batch at DCC final ###
#    Scrollbar
#    Sleep    5S
#    Click Element     ${crd_receive_crd_batch_dcc}
#    Sleep    5S
#    Input Text      ${crd_search_tran_reference_num_dcc}    ${copy_reference_num}
#    Sleep    5S
#    Click Button    ${crd_receive_crd_batch_dcc_search}
#    Sleep    3S
#    Scrollbar
#    Sleep    3S
#    Click Button    ${crd_receive_crd_batch_dcc_search_save}
#    Sleep    3S
#    Click Button    ${crd_receive_crd_batch_dcc_search_save_ok}
#
#    ### DC flow ###
#    Sleep    3S
#    Click Element    ${more_option}
#    Click Element    ${dc_link}
#    Click Element    ${dc_home}
#    Click Element     ${dc_uploadimage}
#    Click Element     ${dc_choosefile}
#    Sleep    30S
#    #Click Button     ${dc_upload}
#    #Sleep    5S
#    #Click Button    ${dc_upload_ok}
#    ############## CRD Match ###################
#    Sleep    5S
#    Click Element    ${more_option}
#    Click Element    ${dc_link}
#    Click Element    ${dc_home}
#    Sleep    3s
#    Click Element    ${dc_crd_match/rework}
#    Sleep    3s
#    Input Text     ${dc_crd_match/rework_search}     ${staging_batchid}
#    #Click Link    ${dc_crd_match/rework_click_id}
#    Click Element    //a[text()='${staging_batchid}']
#    Click Element    ${select_registry}
#    Sleep    10s
#    Input Text    ${enter_reginumber}     ${registry_num_crd_birth}
#    Sleep    5S
#    Execute Javascript  window.scrollTo(0,300)
#    Sleep    5s
#    Click Button    ${click_submit}
#    Sleep    5S
#    Execute Javascript  window.scrollTo(0,3000)
#    Sleep    5s
#    Click Button    ${saveandcontinueindc}
#    Sleep    5s
#    Click Button    ${crdcommitbatch}
#    Sleep    3s
#    Click Button    ${crdsuccess}
#    Sleep    5s
#    ### QA PASS ###
#    Click Element    ${crdqachecking}
#    Sleep    5s
#    Input Text     ${dc_crd_match/rework_search}     ${staging_batchid}
#    Click Element    //a[text()='${staging_batchid}']
#    Sleep    4s
#    Execute Javascript  window.scrollTo(0,3000)
#    Sleep    3s
#    Click Element    ${crdacceptmatch}
#    Sleep    5s
#    Click Button    ${lastcrdacceptmatch}
#    Sleep    3s
#    Click Button    ${qapassedok}
#    ### Data Staging ###
#    Sleep    5S
#    Click Element    ${more_option}
#    Click Element    ${datastaging_link}
#    Click Element    ${datastaging_home}
#    Sleep    2S
#    Click Element     ${datastaging_monitor_datastaging}
#    Sleep    2S
#    Click Button     ${datastaging_monitor_searchbtn}














