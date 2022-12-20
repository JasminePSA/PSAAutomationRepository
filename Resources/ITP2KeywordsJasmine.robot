*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Library     String
Library     Process

Library     C:\Users\ThomasJ1\PycharmProjects\CRSITP2Automation/Resources/Upload.py
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/ObjectRepository/ITP2LocatorsJasmine.robot
Variables   C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/Resources/TestDataJasmine.yml
#Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2/Resources/Upload.py
Documentation  Database Testing in Robot Framework
Library  DatabaseLibrary
Library  OperatingSystem
Library  RPA.Database
Suite Setup       Connect To Database    pymssql  ${DBName}    ${DBUser}    ${DBPassword}    ${DBHost}    ${DBPort}

import java.awt.AWTException
import java.awt.Robot
import java.awt.event.KeyEvent
import SendKeys
import      pymssql
import pyodbc

*** Variables ***

${browser}      chrome
${url_qa}       http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tVEhPTUFTSjE=
${DBName}  Civil Registry System
${DBUser}  PSA1User
${DBPassword}  PSA1User*Live
${DBHost}   10.62.150.248
${DBPort}  1433
${cibirthreqtype}  'CI'
${cibirthfirstname}     'Shaleen'
${sequencenumber}   001
${cenodeathreqtype}     'CD'
${cenodeathfirstname}   'Sherin'
${retrievetrannoqueryQuery}     select top 1 seriesno from encode.request where requesttype=${cibirthreqtype} and prifirstname={cibirthfirstname} order by createdon desc
${retrievecenodeathtrannoquery}     select top 1 seriesno from encode.request where requesttype=${cenodeathreqtype} and prifirstname=${cenodeathfirstname} order by createdon desc
${hiphen}=      -
*** Keywords ***
ConnectDB


Disconnect DB
    Disconnect From Database
RetrieveCIBtransactionfromdb
    [Arguments]     ${reqtype}  ${firstname}
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
RetrieveCenodeathtransactionfromdb
    [Arguments]     ${cenodeathreqtype}  ${cenodeathfirstname}
    ${conn}=     DatabaseLibrary.Connect To Database   pymssql   ${DBName}   ${DBUser}   ${DBPassword}   ${DBHost}   ${DBPort}
    log to console    ${conn}
    #${output}=      Execute SQL String  select top 1 seriesno from encode.request where requesttype=${cibirthreqtype} and prifirstname=${cibirthfirstname} order by createdon desc
    @{results}    Query    ${retrievecenodeathtrannoquery}
    #@{results}    Query    ${retrievecenodeathtrannoquery}
    FOR  ${seriesno}  IN  @{results}
    log to console     ${seriesno}
    END
    ${seriesno2}=   remove string   ${seriesno}[0]  ()
    ${transactionnumber}=    Set Variable   ${seriesno2}${sequencenumber}
    [return]  ${transactionnumber}
Launch Application
    Open Browser    ${url_qa}   ${browser}      headless=False
    Sleep   15
    Maximize Browser Window
Open Counter
    Click Button    ${open_button}
    Wait Until Element Is Visible       ${ok_button}
    #Sleep 2
    Click Button        ${ok_button}
Selecting Home
    Sleep       2
    Wait Until Element Is Visible       ${home_menu}
    Click Link      ${home_menu}
    Sleep       2
Close Counter
    Click Button    ${open_button}
    Wait Until Element Is Visible       ${closecounter_yes_button}
    Sleep   2
    Click Button        ${closecounter_yes_button}
    Wait Until Element Is Visible       ${closecounter_ok_button}
    Sleep   2
    Click Button        ${closecounter_ok_button}

EncodeCenodeathTransaction
    [Documentation]     Selecting Cenodeath Transaction
    Select From List By Index       ${transaction_typedropdown}     5
    [Documentation]     calling reusable function for encoding cenodath
    Wait Until Element Is Visible       ${cenodeath_no_of_copies_text}
    Sleep       2
    Input Text      ${cenodeath_no_of_copies_text}        1
    Input Text      ${cenodeath_personlastname_text}       Thomas
    Input Text      ${cenodeath_personfirstname_text}      Sherin
    Select From List By Index       ${cenodeath_sex_dropdown}     2
    Select From List By Index       ${cenodeath_dateofbirth_month}        2
    Input Text      ${cenodeath_dateofbirth_date}     01
    Input Text      ${cenodeath_dateofbirth_year}     2018
    Select From List By Index       ${cenodeath_province}       2
    Select From List By Index       ${cenodeath_city}     2
    Input Text      ${cenodeath_mother_lastname}       Ann
    Input Text      ${cenodeath_mother_firstname}     Maria
    Select From List By Index   ${cenodeath_request_purpose}      3
    Execute Javascript  window.scrollTo(0,2000)
    Wait Until Element Is Visible       ${cenodeath_save_button}
    Sleep       2
    Click Button        ${cenodeath_save_button}
    [Documentation]     Entering requester details
    Wait Until Element Is Visible       ${reqlastname}
    Sleep       2
    Input Text      ${reqlastname}      Tom
    Wait Until Element Is Visible       ${reqfirstname}
    Sleep       2
    Input Text      ${reqfirstname}     John
    Wait Until Element Is Visible       ${reqaddress}
    Sleep       2
    Input Text      ${reqaddress}       104
    Wait Until Element Is Visible       ${reqcountry}
    Select From List By Index       ${reqcountry}       2
    Sleep       2
    Click Button    ${submit_button}
    Wait Until Element Is Visible       ${encoding_success_message}
    ${tran_no_value}    Get Text    ${transaction_number}
    [return]    ${tran_no_value}
Receivepayment
    Click Button    ${payment_search_submit_button}
    Click Link  ${payment_qtn_link}
    Select From List By Index   ${payment_validid_dropdown}     1
    Wait Until Element Is Visible   ${payment_amounttendered}
    sleep  2
    Input Text  ${payment_amounttendered}   210.00
    Sleep   2
    Wait Until Element Is Visible       ${payment_changeamount_label}
    Sleep   2
    click element    ${payment_changeamount_label}
    #Wait Until Element Is Visible       ${payment_printor_button}
    Sleep   2
    #${Element} = Get WebElement xpath=//button[@id='PrintOR']
    #Execute JavaScript  arguments[0].click(),${Element}

    ${ele}    Get WebElement    xpath=//button[@id='PrintOR']
    Execute Javascript    setTimeout   (fuction()arguments[0].click     100     ARGUMENTS)    xpath=//button[@id='PrintOR']

    #working one Execute Javascript  var elem=arguments[0],setTimeout(function(){elem.click()},100),${ele}


    sleep   2
    ${handles}    get window handles
    Sleep       4
    Switch Window   ${handles}[1]
    Sleep   6
    Click Button     ${payment_printpreview_print_button}
    Sleep   4
    Click Button        ${encodingandpayment_button}
    Sleep   2
    ${handles2}    get window handles
    #Switch Window   ${handles2}[2]
    #Close window
    Sleep   6
    Switch Window   ${handles2}[1]

#    Wait Until Element Is Visible       ${payment_printpreview_print_button}
#    sleep  4
#    click button  ${payment_printpreview_print_button}
#    sleep  2
#    Switch Window   ${paymenthandles1}[0]
#    sleep  2
#    ${or_no_value}    Get Text    ${payment_ornumber_value}
#    ${payment_ornumber_value}
Receivepaymentworking
    Click Button    ${payment_search_submit_button}
    Click Link  ${payment_qtn_link}
    Select From List By Index   ${payment_validid_dropdown}     1
    Wait Until Element Is Visible   ${payment_amounttendered}
    sleep  4
    Input Text  ${payment_amounttendered}   210.00
    Sleep   4
    Wait Until Element Is Visible       ${payment_changeamount_label}
    Sleep   4
    click element    ${payment_changeamount_label}
    Wait Until Element Is Visible       ${payment_printor_button}
    Sleep   4
    #click button  ${payment_printor_button}
    #close browser


Changeoutletcodeto002
    click image  ${more_menu}
    click element  ${systemadmin_menu}
    wait until element is visible   ${userdetails_information_menu}
    click element   ${userdetails_information_menu}
    input text  ${userdetails_search_text}      00123
    wait until element is visible  ${userdetails_edit_button}
    sleep   4
    click element       ${userdetails_edit_button}
    sleep   2
    select from list by index  ${userdetails_outlet_dropdown}   3
    click button  ${userdetails_save_button}
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
Navigatetorsoandentertransactionnumber
    [Arguments]     ${transaction_number_created}
    click link      ${rso_certificateprocessing_menu}
    click link      ${rso_processingqueue_menu}
    sleep  4
    Wait Until Element Is Visible       ${rso_searchtransaction_text}
    sleep   2

    input text      ${rso_searchtransaction_text}       ${transaction_number_created}
    Wait Until Element Is Visible       ${rso_trannumber_link}
    click element       ${rso_trannumber_link}
    sleep   6


Generateadvisoryondeath
    input text      ${rso_death_lastname}       P19
    input text      ${rso_death_firstname}       STEFY19
    Execute Javascript  window.scrollTo(0,300)
    Wait Until Element Is Visible       ${rso_crdquery_submit_button}
    sleep   4
    click button    ${rso_crdquery_submit_button}
    Execute Javascript  window.scrollTo(0,1000)
    Wait Until Element Is Visible   ${rso_plus_icon}
    sleep   2
    click element       ${rso_plus_icon}
    Execute Javascript  window.scrollTo(0,-200)
    click button    ${rso_viewselectionlist_button}
    click button    ${rso_generateadvisoryondeath_button}
    sleep   4
    Wait Until Element Is Visible      ${rso_confirmationadvisory_yes_button}
    sleep  2
    click button        ${rso_confirmationadvisory_yes_button}
    Wait Until Element Is Visible     ${rso_confirmationadvisory_final_ok_button}
    sleep   2
    click button    ${rso_confirmationadvisory_final_ok_button}
SelectReleasing
    click image     ${more_menu}
    click link      ${releasing_menu}
    click element       ${releasing_releasecertificate_submenu}
    sleep   2
Printcertificate
    click button    ${releasing_search_button}
    click link      ${releasing_trannumber_link}
    click element       ${releasing_print_button}
    select from list by index       ${releasing_valididyes_dropdown}        1
    sleep   2
    click element       ${releasing_proceed_button}
    sleep   2
    select from list by index       ${releasing_printers_dropdown}      2
    sleep   2
    click button    ${releasing_print_buttonafterselectingprinters}
    sleep   2
    click button        ${releasing_yesandcontinue_button}
    close window
verify element is not on page
    [Arguments]  ${locator}
    ${old_wait}=  Set selenium implicit wait  20
    run keyword and continue on failure
    ...  page should not contain element  ${locator}
    set selenium implicit wait  ${old_wait}





















Selectingveihomepage
    click image  ${more_menu}
    click link  ${vitaleventinformation_menu}
    click link  ${veihome_submenu}
    sleep  15
Encodingpiecemealcddeath
    Wait Until Element Is Visible   ${piecemeal_link}
    click link  ${piecemeal_link}
    sleep  8

    #As country and province prefilled for C-DPU disabling this####

    #Select From List By Index   ${piecemeal_country_dropdown}       PHILIPPINES
    #Select From List By Index   ${piecemeal_province_dropdown}      ABRA
    Wait Until Element Is Visible   ${piecemeal_city_dropdown}
    Select From List By Index   ${piecemeal_city_dropdown}      1
    sleep   2
    Wait Until Element Is Visible   ${piecemeal_regbooktype_dropdown}
    Select From List By Index   ${piecemeal_regbooktype_dropdown}   13
    sleep   2
    Wait Until Element Is Visible   ${piecemeal_docsubtype_dropdown}
    Select From List By Index   ${piecemeal_docsubtype_dropdown}    14
    sleep   2
    Wait Until Element Is Visible       ${piecemeal_cddeath_regno_text}
    sleep  2
    input text  ${piecemeal_cddeath_regno_text}     ${cddeath_registry_number}
    Press Keys      ${piecemeal_cddeath_regno_text}    ENTER
    sleep   2
    Wait Until Element Is Visible       ${piecemeal_cddeath_regdetails_submit_button}
    sleep  2
    Click button        ${piecemeal_cddeath_regdetails_submit_button}
    sleep  2
#    pyautogui.keyDown('tab')
#    pyautogui.keyup('tab')


#    Wait Until Element Is Visible       ${piecemeal_regdetails_submit_button}
#    #click button    ${piecemeal_regdetails_submit_button}
#    ${ele}    Get WebElement    xpath=//button[@id='submitrecord']
#    sleep  4
#    #Wait Until Keyword Succeeds    5x    5s
#    Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele}



    sleep   4
    Select checkbox     ${piecemeal_firstname_checkbox}
    Select From List By Index       ${piecemeal_petition_reln_dropdown}     1
    Select checkbox     ${piecemeal_petition_drnd_checkbox}
    input text      ${piecemeal_regnoatdeath_text}      2022-34444444
    input text      ${piecemeal_deceasedfirstname_text}     SONA
    input text      ${piecemeal_deceasedlastname_text}      ANNIE
    Select From List By Index       ${piecemeal_placeofdeathprovince_dropdown}      1
    Select From List By Index       ${piecemeal_placeofdeathcity_dropdown}      1
    input text      ${piecemeal_deathday_text}      1
    Select From List By Index       ${piecemeal_deathmonth_dropdown}    9
    input text      ${piecemeal_deathyear_input}    2022
    input text      ${piecemeal_motherfirstname}        ANNA
    input text      ${piecemeal_motherlastname}     MARIA
    Select From List By Index      ${piecemeal_informrel_dropdown}     1
    Select From List By Index       ${piecemeal_datepromul_month_dropdown}  9
    input text      ${piecemeal_promul_day_text}        1
    input text      ${piecemeal_prmul_year_text}        2022
    Select From List By Index       ${piecemeal_placepromul_provinve_dropdwn}        1
    Select From List By Index       ${piecemeal_citypromul_dropdown}        1
    input text      ${piecemeal_regday_text}     1
    Select From List By Index       ${piecemeal_regmonth_dropdown}  9
    click button      ${piecemeal_formsubmit_button}
    close window
Encodingpiecemeallimarriage
    Wait Until Element Is Visible   ${piecemeal_link}
    click link  ${piecemeal_link}
    sleep  4

    #As country and province prefilled for C-DPU disabling this####

    #Select From List By Index   ${piecemeal_country_dropdown}       PHILIPPINES
    #Select From List By Index   ${piecemeal_province_dropdown}      ABRA
    Wait Until Element Is Visible   ${piecemeal_city_dropdown}
    Select From List By Index   ${piecemeal_city_dropdown}      1
    sleep   2
    Wait Until Element Is Visible   ${piecemeal_regbooktype_dropdown}
    Select From List By Index   ${piecemeal_regbooktype_dropdown}   14
    sleep   2
    Wait Until Element Is Visible   ${piecemeal_docsubtype_dropdown}
    Select From List By Index   ${piecemeal_docsubtype_dropdown}    14
    sleep   2
    Wait Until Element Is Visible       ${piecemeal_limarriage_regno_text}
    sleep  2
    click element  ${piecemeal_limarriage_regno_text}


    input text  ${piecemeal_limarriage_regno_text}     ${limarriage_registry_number}
    Press Keys      ${piecemeal_limarriage_regno_text}    ENTER
    sleep   2
    Wait Until Element Is Visible       ${piecemeal_li_regdetails_submit_button}
    sleep  2
    Click button        ${piecemeal_li_regdetails_submit_button}
    sleep  2

    input text      ${piecemeal_li_groom_firstname_text}        SROY
    input text      ${piecemeal_li_groomlastname_text}      JOHN
    input text      ${piecemeal_li_bridefirstname_text}     SONA
    input text      ${piecemeal_li_gbridelastname_text}      ANNIE

    #Select From List By Index       ${piecemeal_placeofdeathprovince_dropdown}      1
    #Select From List By Index       ${piecemeal_placeofdeathcity_dropdown}      1
    input text      ${piecemeal_li_marriageday_text}      1
    Select From List By Index       ${piecemeal_li_marriagemonth_dropdown}    9
    input text      ${piecemeal_li_marriageyear_text}    2022

    Select From List By Index      ${piecemeal_li_marriageplaceprovince_dropdown}     1
    Select From List By Index      ${piecemeal_li_marriageplace_city_dropdown}  1
    input text      ${piecemeal_li_marriageregdate_text}        1
    Wait Until Element Is Visible   ${piecemeal_limarriage_regmonth_dropdown}
    sleep   2
    Select From List By Index      ${piecemeal_limarriage_regmonth_dropdown}        9
    input text      ${piecemeal_li_marriageregyear_text}        2022
    Wait Until Element Is Visible       ${piecemeal_li_placeofdiss_province_dropdown}
    sleep   2
    Select From List By Index       ${piecemeal_li_placeofdiss_province_dropdown}        1
    Select From List By Index       ${piecemeal_li_placeofdisscity_dropdown}        1
    #Select From List By Index      ${piecemeal_li_natureofdiss_dropdown}     1
    Input Text       ${piecemeal_li_dateofrevoc_text}    1
    Select From List By Index   ${piecemeal_li_monthofrevoc_dropdown}    9
    input text   ${piecemeal_li_yearofrevoc_text}     2022
    click button      ${piecemeal_li_formsubmitbutton}
    close window
Encoderegularannotationsingle
    [Documentation]     Selecting transactiontype Regular annotation birth
    Select From List By Index       ${transaction_typedropdown}     22
    Wait Until Element Is Visible       ${select_doctype}
    sleep   2

    [Documentation]     Selecting doctype and wizard checklist for first document type
    select from list by index   ${select_doctype}       3
    Select checkbox      ${court_decisionnew}
    Select checkbox      ${certificateof_finality}
    select checkbox      ${certificateofregistration}
    select checkbox      ${certificateof_authenticity}
    select checkbox       ${certificateof_livebirth}
    Wait Until Element Is Visible       ${done_button}
    click button        ${done_button}
    sleep   2
    Wait Until Element Is Visible       ${wizard_submit_button}
    sleep   2
    click button    ${wizard_submit_button}
    #Wait Until Element Is Visible   ${no_of_copies_text}
    #Input Text      ${no_of_copies_text}        1

    [Documentation]     Encode Birth form -Request Details
    Wait Until Element Is Visible       ${childlastname_text}
    sleep   4
    Input Text      ${childlastname_text}       Thomas
    Input Text      ${childfirstname_text}      Jasmine
    Select From List By Index       ${sex_dropdown}     2
    Select From List By Index       ${dateofbirth_month}        2
    Input Text      ${dateofbirth_date}     01
    Input Text      ${dateofbirth_year}     2018
    Select From List By Index       ${province}        2
    Select From List By Index       ${city}     2
    Input Text      ${mother_lastname}      Ann
    Input Text      ${mother_firstname}     Maria
    Select From List By Index   ${request_purpose}      3
    Execute Javascript  window.scrollTo(0,2000)
    Wait Until Element Is Visible       ${save_button}
    Sleep       2
    Click Button        ${save_button}
    #driver.execute_script("window.scrollTo(100, document.body.scrollHeight);")

    [Documentation]     Encode Birth form -Requester Details
    Wait Until Element Is Visible       ${reqlastname}
    Sleep       2
    Input Text      ${reqlastname}      Tom
    Wait Until Element Is Visible       ${reqfirstname}
    Sleep       2
    Input Text      ${reqfirstname}     John
    Wait Until Element Is Visible       ${reqaddress}
    Sleep       2
    Input Text      ${reqaddress}       104
    Wait Until Element Is Visible       ${reqcountry}
    Select From List By Index       ${reqcountry}       2
    Sleep       2
    # Input Text      ${amounttendered}       310.00
    #first_tab_handle = driver.current_window_handle
    Click Button    ${submit_button}
    Wait Until Element Is Visible       ${encoding_success_message}
    ${ra_tran_no_value}    Get Text    ${transaction_number}
    [return]    ${ra_tran_no_value}
ProcessRAsingleannotationbirth
    [Arguments]     ${transaction_number_created}
    click image  ${more_menu}
    click link  ${annotation_menu}
    click link  ${annotation_processannotation_submenu}
    sleep       2
    input text      ${annotation_trannumber_text}       ${transaction_number_created}
    click button    ${annotation_search_button}
    sleep   2
    input text      ${annotation_imageid_text}      ${raannotationreworkimageid}
    click button    ${annotation_continueafterimageid_button}
    sleep   6
    Execute Javascript  window.scrollTo(0,2000)
    sleep   2
    click button    ${annotation_continueafteropeningimage_button}
    sleep   2
    Execute Javascript  window.scrollTo(0,-1000)
    sleep   2
    select from list by index       ${annotation_processing_regbooktype_dropdown}   1
    sleep   2
    input text      ${annotation_processing_regno_text}     ${raannotationrework_registry_number}
    sleep   2
    Execute Javascript  window.scrollTo(0,50)
    sleep   2
    select from list by index       ${annotation_processing_province_dropdown}      1
    Execute Javascript  window.scrollTo(0,150)
    sleep   2
    select from list by index       ${annotation_processing_city_dropdown}      1
    Execute Javascript  window.scrollTo(0,200)
    sleep   2
    click button        ${annotation_processing_search_button}
    sleep   2
    Execute Javascript  window.scrollTo(0,1000)
    sleep   2
    click button        ${annotation_processing_veicontinue_button}
    Execute Javascript  window.scrollTo(0,-1000)
    sleep   2
    select from list by index       ${annotation_processing_annotationtemplate_dropdown}    1
    Execute Javascript  window.scrollTo(0,200)
    sleep   2
    select from list by index       ${annotation_processing_position_dropdown}  1
    Execute Javascript  window.scrollTo(0,300)
    sleep   2
    click button        ${annotation_processing_apply_button}
    Execute Javascript  window.scrollTo(0,1000)
    sleep   2
    click button    ${annotation_processing_anncontinue_button}
    Execute Javascript  window.scrollTo(0,1300)
    sleep   2
    click button    ${annotation_processing_topsheetsubmit_button}
    sleep       2
    click button        ${annotation_processing_submitok_button}
    sleep   2
Dispproveannotation
    [Arguments]     ${transaction_number_created}
    click image  ${more_menu}
    click link  ${annotation_menu}
    click link  ${annotation_approve_approveannootationmenu}
    sleep   2
    input text   ${annotation_approve_transactionno_text}       ${transaction_number_created}
    click button    ${annotation_approve_searchbutton}
    sleep   4
    Execute Javascript  window.scrollTo(0,1000)
    sleep   4
    #click button       ${annotation_approve_approvebutton}
    click button        ${annotation_disapprove}
    sleep   4
    input text      ${annotation_disapprovecomments}        disapproved request
    click button    ${annotation_disapprove_ok_button}
    sleep   2
    click button    ${annotation_disapprove_success_ok_button}
Approveannotation
    [Arguments]     ${transaction_number_created}
    click image  ${more_menu}
    click link  ${annotation_menu}
    click link  ${annotation_approve_approveannootationmenu}
    sleep   2
    input text   ${annotation_approve_transactionno_text}       ${transaction_number_created}
    click button    ${annotation_approve_searchbutton}
    sleep   4
    Execute Javascript  window.scrollTo(0,1000)
    sleep   4
    click button       ${annotation_approve_approvebutton}
    sleep   4
    click button    ${annotation_approve_yesbutton}
    sleep   2
    click button    ${annotation_approve_success_ok_button}
    sleep   2
    click button    ${annotation_approve_success_printbutton}
    sleep   2
    click button        ${annotation_approve_success_printerokbutton}
Setkioskrole
    click image  ${more_menu}
    click element  ${systemadmin_menu}
    wait until element is visible   ${userdetails_information_menu}
    click element   ${userdetails_information_menu}
    input text  ${userdetails_search_text}      00123
    wait until element is visible  ${userdetails_edit_button}
    sleep   4
    click element       ${userdetails_edit_button}
    sleep   2
    click button    ${userdetails_kiosk_setrole_button}
    sleep   2
    select checkbox     ${userdetails_kiosk_selectall_checkbox}
    sleep   2
    unselect checkbox       ${userdetails_kiosk_selectall_checkbox}
    sleep   1
    #select checkbox     ${userdetails_kiosk_selectall_checkbox}
    Execute Javascript  window.scrollTo(0,1000)
    sleep   2
    select checkbox     ${userdetails_kiosk_kioskoffcheckbox}
    Execute Javascript  window.scrollTo(0,2000)
    click button        ${userdetails_kioskoffsave_button}
    sleep   2
    click button  ${userdetails_kioskoff_okbutton}

ProcessannotationafterDisapproval
    [Arguments]     ${transaction_number_created}
    click image  ${more_menu}
    click link  ${annotation_menu}
    click link  ${annotation_processannotation_submenu}
    sleep   4
    input text      ${annotation_trannumber_text}       ${transaction_number_created}
    click button    ${annotation_search_button}
    sleep   2
    #input text      ${annotation_imageid_text}      07808CBC00300000093
    click button    ${annotation_continueafterimageid_button}
    sleep   2
    wait until element is visible   ${annotation_rework_processing_submitbutton}
    sleep   2
    click button        ${annotation_rework_processing_submitbutton}
    sleep   2
    click button    ${annotation_rework_processing_successokbutton}
Encodepiecemealadministartivecorrectionbirth
    Wait Until Element Is Visible   ${piecemeal_link}
    click link  ${piecemeal_link}
    sleep  4

    #As country and province prefilled for C-DPU disabling this####

    #Select From List By Index   ${piecemeal_country_dropdown}       PHILIPPINES
    #Select From List By Index   ${piecemeal_province_dropdown}      ABRA
    Wait Until Element Is Visible   ${piecemeal_city_dropdown}
    Select From List By Index   ${piecemeal_city_dropdown}      1
    sleep   2
    Wait Until Element Is Visible   ${piecemeal_regbooktype_dropdown}
    Select From List By Index   ${piecemeal_regbooktype_dropdown}   15
    sleep   2
    Wait Until Element Is Visible   ${piecemeal_docsubtype_dropdown}
    Select From List By Index   ${piecemeal_docsubtype_dropdown}    2
    sleep   2
    Wait Until Element Is Visible       ${piecemeal_adminbirth_regno_text}
    sleep  2
    click element  ${piecemeal_adminbirth_regno_text}
    input text  ${piecemeal_adminbirth_regno_text}     ${admin_registry_number}
    Press Keys      ${piecemeal_adminbirth_regno_text}    ENTER
    sleep   2
    Wait Until Element Is Visible       ${piecemeal_li_regdetails_submit_button}
    sleep  2
    Click button        ${piecemeal_li_regdetails_submit_button}
    sleep  2
    select from list by index       ${piecemeal_admin_petitionersrelatn_dropdown}       1
    Execute Javascript  window.scrollTo(0,300)
    sleep   2
    select checkbox     ${piecemeal_admin_petreason_grnd_checkbox}

    sleep   2
    select from list by index       ${piecemeal_admin_peytregprovince_dropdown}     1
    select from list by index       ${piecemeal_admin_petregcity_dropdown}      1
    select from list by index       ${piecemeal_admin_petregmonth_dropdown}     9
    input text     ${piecemeal_admin_petregday_text}       1
    input text      ${piecemeal_admin_petregyear}       2022
    input text      ${piecemeal_admin_regnoatbirth_text}        2022-0000030
    Execute Javascript  window.scrollTo(0,600)
    sleep   2
    input text      ${piecemeal_admin_childfirstname_text}      ANU
    input text      ${piecemeal_admin_childlastname_text}       JOHN
    input text      ${piecemeal_admin_dateofbirthday_text}      1
    select from list by index       ${piecemeal_admin_dateofbirthmonth_dropdown}        9
    input text      ${piecemeal_admin_dateofbirthyear_text}     2022
    select from list by index       ${piecemeal_admin_sex_dropdown}     1
    select from list by index       ${piecemeal_admin_placeofbirthprovince_dropdown}        1
    select from list by index        ${piecemeal_admin_placeofbirthcity}        1
    input text      ${piecemeal_admin_motherfirstname_text}     ASHA
    input text      ${piecemeal_admin_motherlastname_text}      JOHN
    select from list by index       ${piecemeal_admin_dateofapprovalmonth_dropdown}         9
    input text      ${piecemeal_admin_dateofapprovalday_text}       1
    input text      ${piecemeal_admin_dateofapprovalyear_text}      2022
    Execute Javascript  window.scrollTo(0,1000)
    sleep   2
    select from list by index       ${piecemeal_admin_placeofapprovalprovince_dropdown}     1
    select from list by index       ${piecemeal_admin_placeofapprovalcity_dropdown}         1
    select from list by index       ${piecemeal_admin_regmonth_dropdown}        9
    input text      ${piecemeal_admin_regdate_text}     1
    input text      ${piecel_admin_regyear_text}        2022
    click button    ${piecemeal_admin_finalsubmitbtn}
File Upload
    [Arguments]     ${path}     ${files}
    sleep   2
    uploadFile      ${path}     ${files}
    sleep   4

jsexecution
    ${ele}      Get WebElement      //*[@id="finalSubmitbtn"]
    set selenium timeout  5 seconds
    Execute JavaScript      arguments[0].click()    ARGUMENTS       ${ele}

    sleep   6
    #click button        ${printor}
movingtoorwindow
    sleep   2
    ${iterable_value}       get window handles

    #Select Frame    dom:document.querySelector("print-preview-button-strip").shadowRoot.querySelector("iframe")
    #${windownameold}       get window titles
    ${len}      get length      ${iterable_value}

    IF    ${len}>1
    Log    second window is present
    Press Keys  None  CTRL+W
    sleep   1
    ${windownamenew}       get window titles
    #${cibirthtranno}    get text  ${tran_no}
    sleep   2
    ${iterable_valuenew}       get window handles
    END
movingtoorwindownew
    # get the current time and add 180 seconds to wait for the print preview cancel button

    session.close
    ${iterable_valuenew}       get window handles

    # switch to print preview window
    Select Frame    dom:document.querySelector("print-preview-button-strip").shadowRoot.querySelector("iframe")




    #${iterable_value1}       get window handles

#    FOR    ${han}    IN    ${iterable_value1}
#    sleep   4
#    switch window  ${han}
#    click element   ${printone}
#    Log    ${han}
#    END
#

#    Execute JavaScript      switch window       ARGUMENTS        ${iterable_value1}[0]
#    ${title_var}        Get Window Titles
#    sleep   2
#    ${windowname}       get window titles
    #click element   ${printone}
    #${trannofrompreview}        get text    ${trannofromprintpreview}
    #click button    ${printone}
















