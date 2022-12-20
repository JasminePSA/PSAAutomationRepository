*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary
Library  String
Library  Process

*** Variables ***

######### Locators - XPaths IDs, CSS, Name, etc of COPY ISSUANCE OF BIRTH CERTIFICATE################
${open_button}  css=#ToggleSlider[type='checkbox']
${close_success_button}  id=AlertButton

############ Home Page ######################
${application_home}  xpath=//a[@id='dashboard']
${ccr_Link}  xpath=//a[text()='Client Certificate Request']
${wrp_Link}  xpath=//a[text()='Walk-in Request Entry and Payment']

######## Walkin Request Entry and Payment Page for Death###########
${ctt_option}  xpath=//option[text()='Choose Transaction Type']/following::option[2]
${number_of_copies}  xpath=//fieldset[@id='deathFormDetails']//input[@id='noOfCopies']
${d_last_name}  xpath=//input[@id='txtDeathPriLastName']
${d_firstname}  xpath=//input[@id='txtDeathPriFirstName']
${d_middlename}  xpath=//input[@id='txtDeathPriMiddleName']

${death_sex}    xpath=//select[@id='txtDeathSex']
${death_month}  xpath=//fieldset[@id='deathFormDetails']//select[@id='deathMonth']
${death_date}  xpath=//*[@id="deathDate"]
${death_year}  xpath=//*[@id="deathYear"]
${country}  xpath=//*[@id="deathCountry"]
${province}  xpath=//*[@id="deathProvince"]
${city}  xpath=//*[@id="deathCity"]

${fa_lastname}  xpath=//*[@id="txtDeathSecLastName"]
${fa_firstname}  xpath=//*[@id="txtDeathSecFirstName"]
${fa_middlename}  xpath=//*[@id="txtDeathSecMiddleName"]

${ma_lastname}  xpath=//*[@id="txtDeathAuxLastName"]
${ma_firstname}  xpath=//*[@id="txtDeathAuxFirstName"]
${ma_middlename}  xpath=//*[@id="txtDeathAuxMiddleName"]

${purpose}  xpath=//*[@id="cmbDeathRequestPurpose"]

${save_button}  xpath=//fieldset[@id='deathFormDetails']//button[text()='Save']

######## Requesters Details#############################
${requester_lastname}  xpath=//fieldset[@id='requesterDiv']//*[@id='txtReqLastName']
${requester_firstname}  xpath=//fieldset[@id='requesterDiv']//input[@id='txtReqFirstName']
${requester_address1}   xpath=//fieldset[@id='requesterDiv']//input[@id='txtAddress']
${requester_address2}   xpath=//fieldset[@id='requesterDiv']//input[@id='streetAddress']
${requester_country}    xpath=//fieldset[@id='requesterDiv']//select[@id='cmbChildCountry']
${requester_province}   xpath=//fieldset[@id='requesterDiv']//select[@id='cmbProvince']
${requester_city}   xpath=//fieldset[@id='requesterDiv']//select[@id='cmbCity']

##################### Payment ##############################################
${read_amount}  xpath=//span[@id="TotalAmt"]
${readamount1}  xpath=//input[@id="TotalAmt"]
${tot_amount}   xpath=//input[@id="txtAmountTendered"]
${print_or}  xpath=//button[text()='Print OR']

${get_trans_no}  xpath=//*[@id="WalkInPaymentDetails"]/tbody/tr/td[3]/span
${start_new}  xpath=//*[@id="WalkInPaymentDeatilsModel"]/div/div/div[1]/button

##################### Change Outlet to 002 ############################################
${more_option}  xpath=//*[@id="menuDiv"]/li[5]/a/img
${sys_admin}  xpath=//*[@id="180"]

${user_detail_info}  xpath=//a[text()='User Detail Information']
${search}  xpath=//*[@id="tblUserDetails_filter"]/label/input
${edit}  xpath=//*[@id="tblUserDetails"]/tbody/tr/td[8]/a[1]/i
${secondary_backoffice}  xpath=//select[@id='txtOutletId']
${save}  xpath=//button[@id='btnUserConfirm']

${Central_office}  xpath=//*[@id="txtOutletId"]

${capure_centre}  xpath=//select[@id='txtOfficeId']/option[4]
${cagayan_centre}  xpath=//select[@id='txtOfficeId']

######################## Close Counter #####################################
${click_counter}   xpath=//*[@id="navbar"]/aside[2]/ul/li/label/span
${confirm_yes}  xpath=//button[@id='Yesbutton']
${ok_button}    xpath=//button[@id='AlertButton']

##################### Processing Queue#######################################
${certi_processing}  xpath=//a[text()='Certificate Processing']
${processing_queue}  xpath=//a[text()='Processing Queue']
${tran_no_search}  xpath=//*[@id="ProcessingQueueTable_filter"]/label/input
${click_trans}  xpath=//*[@id="ProcessingQueueTable"]/tbody/tr[1]/td[1]/a/span
${click_search1}  xpath=//button[@id='btnCRDQuery']
${click_search2}  xpath=//button[@id='SearchClick']
${norecord_ok}  xpath=//*[@id="btnSuccessOK"]
${search_vei}  xpath=//*[@id="idBacktoVei"]
${alert_ok}  xpath=//*[@id="btnSuccessOK"]
${negative}  xpath=//*[@id="idGenNegCert"]
${confirm_yes}  xpath=//*[@id="Yesbutton"]
${success_ok}  xpath=//*[@id="AlertButton"]

#################### CDLI for Marriage ########################33
${piecemeal_death}  xpath=//span[@data-bind='text:BookDescription']/following::option[7]
${Piecemeal_deathsubtype}  xpath=//span[@data-bind='text:docsubtypeDesc']/following::option[3]
${Piecemeal_fetussubtype}  xpath=//span[@data-bind='text:docsubtypeDesc']/following::option[4]
${fetus_firstname}  xpath=//span[@data-bind='text:fetusFirstName']/following::input[1]
${fetus_middlename}  xpath=//span[@data-bind='text:fetusMiddleName']/following::input[1]
${fetus_lastname}  xpath=//span[@data-bind='text:fetusLastName']/following::input[1]
${fetus_sex}  xpath=//div[@id='generalDeathDetailsDiv1']//span[@data-bind='text:sexDesc']/following::option[3]
${delivery_date}  xpath=//span[@data-bind='text:deliveryDay']/following::input[1]
${dateofdelivery}  xpath=//span[@data-bind='text:deliveryMonthDesc']/following::option[4]
${deliveryyear}  xpath=//span[@data-bind='text:DeliveryYear']/following::input[1]
${placetype1}  xpath=//span[@data-bind='text:PlaceTypeDesc']/following::option[2]
${deliveryprovince}  xpath=//select[@id='PlaceofDeliveryProvince']
${deliverycity}  xpath=//select[@id='PlaceofDeliveryCity']
${deliverybarangay}  xpath=//select[@id='PlaceofDeliveryBarangy']
${typeofdelivery}  xpath=//div[@id='typeOfBirth']//span[@data-bind='text:TypeofBirthDesc']/following::option[2]
${methodofdelivery}  xpath=//span[@data-bind='text:MethodOfDeliveryDesc']/following::option[2]
${fetusgram}  xpath=//span[@data-bind='text:FetusweightAtBirth']/following::input[1]
${condtionoffetus}  xpath=//Label[text()="Main Disease/Condition of Fetus"]/following::input[1]
${otherdisease}  xpath=//Label[text()="Other Disease/Condition of Fetus"]/following::input[1]
${mainmaternaldisease}  xpath=//Label[text()="Main Maternal Disease/Condition "]/following::input[1]
${othermaterneldisease}  xpath=//Label[text()="Other Maternal Disease/Condition "]/following::input[1]
${relaventcircum}  xpath=//Label[text()="Other Relevant Circumstances"]/following::input[1]
${fetusdied}  xpath=//Label[text()="Fetus Died"]/following::option[2]
${lengthofpregancy}  xpath=//Label[text()="Length of Pregnancy (in completed weeks)"]/following::option[9]
${attened}  xpath=//Label[text()="Attendant"]/following::option[2]
${certificationofdeath}  xpath=//Label[text()="Certification of Death - Person Attending"]/following::option[2]
${certificationofdeathdate}  xpath=//Label[text()="Certification of Death - Date"]/following::input[1]
${disposal}  xpath=//Label[text()="Certification of Death - Date"]/following::option[3]
${autopsy}  xpath=//Label[text()="Autopsy"]/following::option[4]
${cermatoryprovince}  xpath=//div[@id='crematoryprovince']//select[@id='CCProvince']
${cermatorycity}  xpath=//div[@id='crematorycity']//select[@id='CCCity']
${cermatorybarangay}  xpath=//div[@id='crematorybarangay']//select[@id='CCBarangay']
${relationship1}  xpath=//Label[text()="Informant - Relationship"]/following::option[10]
${preparedby_date}  xpath=//input[@id='PreparedDate']
${receivedby_date}  xpath=//input[@id='ReceivedDatePicker']
${registration1}  xpath=//input[@id='RegistrationDatePicker']
${registatus3}  xpath=//Label[text()="Registration Status"]/following::option[3]
${mothername}  xpath=//Label[text()="Mother's First Name"]/following::input[1]
${mothermiddlename1}  xpath=//span[@data-bind='text:motherMiddleName']/following::input[1]
${motherlastname1}  xpath=//Label[text()="Mother's Last Name"]/following::input[1]
${mother_citizen}  xpath=//Label[text()="Mother's Citizenship"]/following::option[2]
${husmother_citizen}
${religion1}    xpath=//Label[text()="Mother's Religion/Religious Sect "]/following::option[2]
${ethinicity}  xpath=//span[@data-bind='text:MotherEthnicityDesc']/following::option[2]
${bornalive}  xpath=//Label[text()="Total Number of Children Born "]/following::option[2]
${stillliving}  xpath=//Label[text()="No. of Children Still "]/following::option[3]
${nowdead}  xpath=//Label[text()="No. of Children Born Alive but are Now "]/following::option[2]
${mother_occupation}  xpath=//Label[text()="Mother's Occupation"]/following::option[7]
${agetime}  xpath=//Label[@id="motherrAgeFetalDeath"]/following::option[32]
${residenceprovince1}  xpath=//Label[text()="Mother's Residence (Province)"]/following::option[2]
${residencecity1}  xpath=//Label[text()="Mother's Residence (City/Municipality)"]/following::option[2]
${motherbarangay}  xpath=//Label[text()="Mother's Residence (Barangay)"]/following::option[2]
${marriagemonth1}  xpath=//Label[text()="Date of Marriage (Month)"]/following::option[2]
${marriage_date1}  xpath=//Label[text()="Date of Marriage (Day)"]/following::input[1]
${marriage_year1}  xpath=//Label[text()="Date of Marriage (Year)"]/following::input[1]
${marriage_province1}  xpath=//select[@id='PlaceofMarriageProvince']
${marriage_city1}  xpath=//select[@id='PlaceofMarriageCity']
${EncodeCRDSubmit}  //input[@id='RegistrationDatePicker']/following::button[2]
${1_ok1}     //button[@id='AlertButton']
${2_ok2}    //div[@id='popUpAlertText' and text()='Batch successfully completed']/following::button[1]
${petitioner_relationmarriage}  xpath=//div[@id='CDMarriageFormDetailsDiv']//span[@data-bind='text:relationshipDesc']/following::option[2]
${petitionerreason_marriage}  xpath=//input[@id='chkMarriage4']
${registration_daymarriage}   xpath=//div[@id='CDMarriageFormDetailsDiv']//input[@data-bind='value:registartionDay']
${registration_monthmarriage}  xpath=//div[@id='CDMarriageFormDetailsDiv']//span[@data-bind='text:regMonthDesc']/following::option[12]
${registration_yearmarriage}  xpath=//div[@id='CDMarriageFormDetailsDiv']//span[@data-bind='text:regYear']/following::input[1]
${groomfirstname}  xpath=//input[@data-bind='value:groomFirstName']
${groommiddlenamem}  xpath=//input[@data-bind='value:groomMiddleName']
${groomlastnamem}  xpath=//input[@data-bind='value:groomLastName']
${bridefirstname}  xpath=//input[@data-bind='value:brideFirstName']
${bridemiddlename}  xpath=//input[@data-bind='value:brideMiddleName']
${bridelastname}  xpath=//input[@data-bind='value:brideLastName']
${marriagedaym}  xpath=//input[@data-bind='value:marriageDay']
${marriagemonthm}  xpath=//span[@data-bind='text:marriageMonthDesc']/following::option[2]
${marriageyearm}  xpath=//span[@data-bind='text:marriageYear']/following::input[1]
${marriageprovincem}  xpath=//select[@id='PlaceOfMarriageCDProvince']
${marriagecitym}  xpath=//select[@id='PlaceOfMarriageCDCity']
${groommotherfirstn}  xpath=//input[@data-bind='value:groomMotherFirstName']
${groommothermiddlen}  xpath=//input[@data-bind='value:groomMotherMiddleName']
${groommotherlastn}  xpath=//input[@data-bind='value:groomMotherLastName']
${bridmotherfirstn}  xpath=//input[@data-bind='value:brideMotherFirstName']
${bridemothermiddlen}  xpath=//input[@data-bind='value:brideMotherMiddleName']
${bridemotherlastn}  xpath=//input[@data-bind='value:brideMotherLastName']
${dateofpomugalation}  xpath=//span[@data-bind='text:promulgationMonthDesc']/following::option[5]
${dayofpomugalation}  xpath=//input[@data-bind='value:promulgationDay']
${yearofpomugalation}  xpath=//span[@data-bind='text:promulgationYear']/following::input[1]
${pomugalateprovince}  xpath=//select[@id='CDMarriagepromolProvince']
${pomugalationcity}  xpath=//select[@id='CDMarriagepromolCity']

########## VEI- Encode LCR CRD Submission - Foreign Marriage till Pass report #######
${vei}      xpath=//a[@id='141']
${vei_home}     xpath=//a[text()='VEI Home']
${encode_lcr_crd_submission}     xpath=//a[text()='Encode LCR CRD Submission']
${reg_country}     xpath=//select[@id='LCRCountry']/option[119]
${reg_booktype}     xpath=//select[@id='ddlDocType']/option[5]
${regno_start}       xpath=//input[@id='txtRegistryStart']
${regno_end}       xpath=//input[@id='txtRegistryEnd']
${no_of_docs}         xpath=//input[@id='txtDocCount']
${date_received}      xpath=//input[@id='dtReceived']
${vei_save}         xpath=//button[@id='btnSave']
${no_in_alert}      xpath=//a[text()='No']

${crd_batch}     xpath=//a[text()='Create CRD Batch']
${batch_no}      xpath=//input[@id='batchNo']
${reg_country_batch}     xpath=//select[@id='CountryName']/option[119]
${reg_year}     xpath=//input[@id='registrationYear']
${reg_month}    xpath=//select[@id='MonthName']/option[9]
${reg_booktype_batch}     xpath=//select[@id='RegistryBookTypeName']/option[5]
${regno_start_batch}       xpath=//input[@id='txtRegistryStart']
${regno_end_batch}       xpath=//input[@id='txtRegistryEnd']
${actual_doc_count}      xpath=//input[@id='actualDocumentCount']
${problem_doc_count}      xpath=//input[@id='problemDocumentCount']
${submit_batch}        xpath=//button[text()='Submit']
${ok_batch}     xpath=//div[@id='popUpSuccessCallText' and text()='Record saved.']/following::button[1]

${reg_no_batch}     xpath=//input[@id='registryNumber']
${btn_continue}     xpath=//button[@id='ContinueVEIRecord']

${vei_hus_firstname}    xpath=//*[@id="husbandViewModelDiv"]/div[1]/div[1]/div/input
${vei_hus_lasttname}    xpath=//*[@id="husbandViewModelDiv"]/div[1]/div[3]/div/input
${vei_hus_age}          xpath=//*[@id="husbandViewModelDiv"]/div[3]/div/div/select/option[26]
${vei_country}      xpath=//*[@id="husbandViewModelDiv"]/div[4]/div[1]/div/select/option[119]
${vei_male}         xpath=//*[@id="husbandViewModelDiv"]/div[5]/div[1]/div/select/option[2]
${vei_citizenship}      xpath=//*[@id="husbandViewModelDiv"]/div[5]/div[2]/div/select/option[143]
${vei_hus_residence}      xpath=//*[@id="husbandViewModelDiv"]/div[6]/div[1]/div/select/option[119]
${vei_hus_religion}          xpath=//*[@id="husbandViewModelDiv"]/div[7]/div[2]/div/select/option[46]
${vei_hus_civil_status}      xpath=//*[@id="husbandViewModelDiv"]/div[7]/div[3]/div/select/option[2]
${vei_hus_motherfirstname}    xpath=//*[@id="husbandViewModelDiv"]/div[11]/div[1]/div/input
${vei_hus_motherlastname}     xpath=//*[@id="husbandViewModelDiv"]/div[11]/div[3]/div/input
${vei_hus_citizenship}       xpath=//*[@id="husbandViewModelDiv"]/div[12]/div[1]/div/select/option[143]
${vei_hus_marriage_order}    xpath=//*[@id="husbandViewModelDiv"]/div[12]/div[2]/div/select/option[2]
${vei_wife_firstname}    xpath=//*[@id="wifeViewModelDiv"]/div[1]/div[1]/div/input
${vei_wife_lastname}    xpath=//*[@id="wifeViewModelDiv"]/div[1]/div[3]/div/input
${vei_wife_age}           xpath=//*[@id="wifeViewModelDiv"]/div[3]/div/div/select/option[26]
${vei_wife_pob_country}      xpath=//*[@id="wifeViewModelDiv"]/div[4]/div[1]/div/select/option[119]
${vei_wife_citizenship}      xpath=//*[@id="wifeViewModelDiv"]/div[5]/div[2]/div/select/option[143]
${vei_wife_residence}        xpath=//*[@id="wifeViewModelDiv"]/div[6]/div[1]/div/select/option[119]
${vei_wife_religion}         xpath=//*[@id="wifeViewModelDiv"]/div[7]/div[2]/div/select/option[46]
${vei_wife_civil_status}     xpath=//*[@id="wifeViewModelDiv"]/div[7]/div[3]/div/select/option[2]
${vei_wife_motherfirstname}    xpath=//*[@id="wifeViewModelDiv"]/div[10]/div[1]/div/input
${vei_wife_motherlasttname}    xpath=//*[@id="wifeViewModelDiv"]/div[10]/div[3]/div/input
${vei_mother_citizenship}       xpath=//*[@id="wifeViewModelDiv"]/div[11]/div/div/select/option[143]
${vei_wife_marriage_order}     xpath=//*[@id="wifeViewModelDiv"]/div[12]/div[1]/div/select/option[2]
${vei_placetype}        xpath=//*[@id="marriageParentsViewModelDiv"]/div[1]/div/div/select/option[2]
${vei_placeofmarriage}      xpath=//*[@id="marriageParentsViewModelDiv"]/div[2]/div[1]/div/select/option[119]
${vei_dom_month}     xpath=//*[@id="marriageParentsViewModelDiv"]/div[4]/div[1]/div/select/option[5]
${vei_dom_day}     xpath=//*[@id="marriageParentsViewModelDiv"]/div[4]/div[2]/div/input
${vei_dom_year}     xpath=//*[@id="marriageParentsViewModelDiv"]/div[4]/div[3]/div/input
${vei_religious_sect}       xpath=//*[@id="marriageParentsViewModelDiv"]/div[15]/div/div/select/option[2]
${vei_typeof_ceremony}      xpath=//*[@id="marriageParentsViewModelDiv"]/div[16]/div[1]/div/select/option[2]
${vei_dateofreg}         xpath=//input[@id='RegistrationDate']
${vei_regstatus}         xpath=//*[@id="marriageParentsViewModelDiv"]/div[16]/div[3]/div/select/option[3]
${vei_batch_submit}      xpath=//button[@id='generalBirthSubmit']

${vei_alert_ok}       xpath=//button[@id='AlertButton']
${vei_batch_ok}       xpath=//div[@id='popUpAlertText' and text()]/following::button[1]

${vei_backtoveihome}       xpath=//a[@id='VitalEventsDashBoradMain']
${vei_view_edit_crd}     xpath=//h5[text()="View CRD/CDLI"]/following::a[1]
${vei_search_batchno}          xpath=//input[@id='batchNumber']
${vei_search_countryname}          xpath=//select[@id='registrationCountryForBatch']/option[119]
${vei_search_year}       xpath=//input[@id='registrationYear']
${vei_search_regbook}      xpath=//select[@id='registryBookTypeForBatch']/option[5]
${vei_searchbtn}        xpath=//select[@id='registryBookTypeForBatch']/following::button[1]

${Hus_Birth_day}    //div[@id="husbandBirthday"]/div/input
${Hus_Birh_month}   //div[@id="husbandBirthmonth"]/select
${Hus_Birth_year}   //div[@id="husbandBirthyear"]/input

${Wife_Birth_day}    //div[@id="wifeBirthday"]/input
${Wife_Birh_month}   //div[@id="wifeBirthmonth"]/select
${Wife_Birth_year}   //div[@id="wifeBirthyear"]/input
${ClickReg_No}  //tbody[@id="VeiBody"]/tr/td[4]/a/span
${VEI_Edit}     //button[@id='EditVEIRecord']

#VEICDLI

${CDLI_LCR}     //a[text()="Encode LCR CDLI Submission"]
${CDLI_LCR_City}    //select[@id="LCRCity"]
${CDLI_Reg}     //select[@id="ddlRegBookType"]
${CDLI_DOCTYPE}     //select[@id="ddlDocType"]
${CDLI_DOCSUBTYPE}  //select[@id="ddlDocSubType"]

#transmitco
${Transmit_CO_Ref}  //strong[@id="spnTransmittalReference"]
${Forward_DCC_Ref}  //span[@id="spnTransmittalReference"]

#{DC}
${DC_Menu}      //a[@id='150']
${DC_Home}  //a[text()="Document Conversion Home"]
${CRD_Match}    //h5[text()="CRD"]
${Search_Batch}     //*[@id="ViewBatchListCRDTable_filter"]/label/input
${Click_Batch}   //div[@id="ViewBatchListCRDTable_filter"]/following::a[1]
${Reg_book_type_CRD}    //select[@id="RegistryBookTypeName"]
${CDLI_MATCH}   //h5[text()="CDLI"]
${CRD_REG}   //input[@id="registryNumber"]
${CRD_match_search}     //button[@id="search"]
${CRD_Save_cont}        //button[@id="saveAndContinue"]
${CRD_Staging}      //span[text()="Staging Batch ID:"]/following::span[1]
${CRD_Commit_Batch}     //button[@id="commitbatch"]
${CRD_MATCH_OK}     //button[@id="btnSuccessOK"]
${Perform_QA}   //h5[text()="Perform Quality Assurance (QA) Check on Primary CRDs"]
${AcceptMatch}      //button[@id="acceptMatch"]
${AcceptBatch}       //button[@id="AcceptBatch"]
${CRDSuccessOK}    btnSuccessOK

### Document Conversion ###
${dc_link}     xpath=//a[@id='150']
${dc_home}      xpath=//a[text()='Document Conversion Home']
${dc_uploadimage}     xpath=//span[text()='CRD/CDLI']
${dc_choosefile}      xpath=//button[@id='birth-AddImageBtn']
${dc_upload}          xpath=//input[@id='UploadBtn']
${dc_upload_ok}          xpath=//button[@id='AlertButton']
### CRD Match Rework ###
${dc_crd_match/rework}     xpath=//a[@id='CRDCLICK']
${dc_crd_match/rework_search}     xpath=//*[@id="ViewBatchListCRDTable_filter"]/label/input
#${dc_crd_match/rework_click_id}     xpath=//*[@id="ViewBatchListCRDTable"]/tbody/tr/td[3]/a
${select_registry}  xpath=//select[@id='RegistryBookTypeName']/option[2]
${enter_reginumber}  xpath=//input[@id='registryNumber']
${click_submit}  xpath=//button[@id='search']
${saveandcontinueindc}  xpath=//button[@id='saveAndContinue']
${crdcommitbatch}  xpath=//button[@id='commitbatch']
${crdsuccess}  xpath=//button[@id='btnSuccessOK']
### QA pass ###
${crdqachecking}  xpath=//h5[text()='Perform Quality Assurance (QA) Check on Primary CRDs']
${crdacceptmatch}  xpath=//button[@id='acceptMatch']
${lastcrdacceptmatch}  xpath=//button[@id='AcceptBatch']
${qapassedok}  xpath=//button[@id='btnSuccessOK']
#crdMarriage
${Regtype}  //select[@id='ddlDocType']
${CRD_MProv}  //select[@id="PlaceofMarriageProvince"]
${CRD_Mcity}    //select[@id="PlaceofMarriageCity"]
${CRD_Mbarangay}    //select[@id="PlaceofMarriageBarangy"]
${M_Type}   //div[@id="TypeofMarriage"]/select
#CDLI
${LIOPTION_1}     //input[@id='Que_1']
${LIOPTION_2}      //input[@id='Que_4']
${LIOPTION_3}   //input[@id='Que_6']
${LIOPTION_4}   //input[@id='Que_8']
${LI_WizardSearchNextBtn}   //button[@id="WizardSearchNextBtn"]
${LI_wizardSummaryNextBtn}      //a[@id='wizardSummaryNextBtn']
${LI_wizardSummaryNextBtn}      //a[@id='wizardSummaryNextBtn']
${LI_WizardSearchPreviewConfirmBtn}     //button[@id='WizardSearchPreviewConfirmBtn']
${LI_BtnOK}     //button[@id='btnOK']
${LI_BtnPopupYes}       //button[@id='btPopupYes']/following::a[1]
${Create_CDLI_Batch}    //a[@class="bold-text" and text()='Create CDLI Batch']
${Enter_batchNo}    //input[@id='batchNo']
${Enter_CountryName}    //select[@id='CountryName']
${Enter_CityName}   //select[@id='CityName']
${Enter_registrationYear}  //input[@id='registrationYear']
${Enter_MonthName}  //select[@id='MonthName']
${Enter_RegistryBookTypeName}   //select[@id='RegistryBookTypeName']
${Supplement_no}    //select[@id='RegistryBookTypeName']/following::select[1]
${Reg_RegistryStart_no}     //input[@id='txtRegistryStart']
${Reg_RegistryEnd_no}   //input[@id='txtRegistryEnd']
${Enter_actualDocumentCount}    //input[@id='actualDocumentCount']
${Enter_problemDocumentCount}   //input[@id='problemDocumentCount']
${Click_Submit_VEI}     //button[text()='Submit']
${VEI_Popup_OK}     //div[@id='popUpSuccessCallText']/following::i[1]
${VEI_registryNumber}       //input[@id='registryNumber']
${VEI_ddlDocSubType}    //select[@id='ddlDocSubType']
${VEI_ContinueVEIRecord}     //button[@id='ContinueVEIRecord']
${VEI_FatherFname}      //label[text()="Husband's First Name"]/following::input[1]
${VEI_FatherMname}      //label[text()="Husband's First Name"]/following::input[2]
${VEI_FatherLname}   //label[text()="Husband's First Name"]/following::input[3]
${LI_field_1}   //label[text()="Husband's First Name"]/following::input[4]
${LI_Field_2}       //label[text()="Husband's First Name"]/following::input[6]
${LI_Field_3}   //label[text()="Date of Marriage (Day)"]/following::input[1]
${LI_Field_4}   //label[text()="Date of Marriage (Day)"]/following::select[1]
${LI_Field_5}   //label[text()="Date of Marriage (Day)"]/following::input[2]
${LI_field_6}   //select[@id="PlaceOfMarriageLIProvince"]
${LI_Field_7}   //select[@id="PlaceOfMarriageLICity"]
${LI_Field_8}   //select[@id="LIMarriagepromolProvince"]/preceding::input[2]
${LI_Field_9}      //select[@id="LIMarriagepromolProvince"]/preceding::select[2]
${LI_Field_10}      //select[@id="LIMarriagepromolProvince"]/preceding::input[1]
${LI_Field_11}      //select[@id="LIMarriagepromolProvince"]
${LI_field_12}      //select[@id="LIMarriagepromolCity"]
${LI_field_13}   //select[@id="LIMarriagepromolCity"]/following::select[1]
${LI_field_14}      //select[@id="LIMarriagepromolCity"]/following::input[1]
${LI_Field_15}      //select[@id="LIMarriagepromolCity"]/following::select[2]
${LI_Field_16}      //select[@id="LIMarriagepromolCity"]/following::input[2]
${VEI_CDLI_Submit}      //BUTTON[@id="generalBirthSubmit"]
${VEI_CDLI_Alert}       //button[@id="AlertButton"]
${VEI_CDLI_Success}   //button[@id="btnSuccessOK"]
##COURTDECREE
${CD_Field1}    //label[text()="Groom's Sex"]/preceding::input[1]
${CD_Field2}    //div[@id="CDMarriageFormDetailsDiv"]/div/div[3]/div[1]/div/select
${CD_Field3}        //input[@id="chkMarriage2"]
${CD_Field4}    //*[@id="CDMarriageFormDetailsDiv"]/div/div[5]/div[1]/div/input
${CD_Field5}    //*[@id="CDMarriageFormDetailsDiv"]/div/div[5]/div[2]/div/select
${CD_Field6}    //*[@id="CDMarriageFormDetailsDiv"]/div/div[5]/div[3]/div/input
${CD_Field7}    //*[@id="CDMarriageFormDetailsDiv"]/div/div[6]/div[1]/div/input
${CD_Field8}    //*[@id="CDMarriageFormDetailsDiv"]/div/div[6]/div[3]/div/input
${CD_Field9}    //*[@id="CDMarriageFormDetailsDiv"]/div/div[7]/div[1]/div/input
${CD_Field10}       //*[@id="CDMarriageFormDetailsDiv"]/div/div[7]/div[3]/div/input
${CD_Field11}   //*[@id="CDMarriageFormDetailsDiv"]/div/div[8]/div[1]/div/input
${CD_Field12}   //*[@id="CDMarriageFormDetailsDiv"]/div/div[8]/div[2]/div/select
${CD_Field13}   //*[@id="CDMarriageFormDetailsDiv"]/div/div[8]/div[3]/div/input
${CD_Field14}       //select[@id="PlaceOfMarriageCDProvince"]
${CD_Field15}       //select[@id="PlaceOfMarriageCDCity"]
${CD_Field16}   //*[@id="CDMarriageFormDetailsDiv"]/div/div[10]/div[1]/div/input
${CD_Field17}   //*[@id="CDMarriageFormDetailsDiv"]/div/div[10]/div[3]/div/input
${CD_Field18}   //*[@id="CDMarriageFormDetailsDiv"]/div/div[11]/div[1]/div/input
${CD_Field19}   //*[@id="CDMarriageFormDetailsDiv"]/div/div[11]/div[3]/div/input
${CD_Field20}   //*[@id="CDMarriageFormDetailsDiv"]/div/div[12]/div[1]/div/select
${CD_Field21}   //*[@id="CDMarriageFormDetailsDiv"]/div/div[12]/div[2]/div/input
${CD_Field22}   //*[@id="CDMarriageFormDetailsDiv"]/div/div[12]/div[3]/div/input
${CD_Field23}   //SELECT[@id="CDMarriagepromolProvince"]
${CD_Field24}   //SELECT[@id="CDMarriagepromolCity"]


################## Authentication Rejection ####################
${specimen}  xpath=//button[@id='GenSpecimenSignature']
${speci_first_name}  xpath=//input[@id='txtFirstName']
${speci_last_name}  xpath=//input[@id='txtLastName']
${speci_date}  xpath=//input[@id='datepicker']
${speci_search}  xpath=//button[@id='btnSearch']
########################### Releasing #######################
${releasing}  xpath=//*[@id="104"]
${release_certi}  xpath=//*[@id="menuDiv"]/li[5]/ul/li[1]/ul/li[2]/a
${enter_transaction}  xpath=//input[@id='TransNum']
${search_transaction}  xpath=//*[@id="validsearch"]
${click_release_trans}  xpath=//*[@id="tblbody"]/tr/td[2]/a
${print_button}  xpath=//*[@id="divView"]/div[1]/div[2]/button[1]
${select_valid_id}  xpath=//select[@id='ddlclaimentreason']
${proceed}  xpath=//*[@id="proceed"]
${printer_name}  xpath=//*[@id="printers"]/option[3]
${final_print}  xpath=//*[@id="FinalPrint"]
${final_print1}  xpath=//*[@id="FinalPrintButton"]
${yes_continue}  xpath=//*[@id="continue"]
${enter_secpa}  xpath=//*[@id="secpa_0"]
${enter_secpa2}  xpath=//input[@id='secpa_1']
${save_continue}  xpath=//*[@id="saveContinue"]
${print_success}  xpath=//*[@id="printCompletionPopup"]/div/div/div[2]/div[3]/button

############# Walking Request entry and Payment for Birth ###################
${birth_option}  xpath=//option[text()='Choose Transaction Type']/following::option[1]
${birth_number_ofcopy}  xpath=//fieldset[@id='birthFormDetails']//input[@id='noOfCopies']
${b_last_name}  xpath=//input[@id='txtBirthPriLastName']
${b_first_name}  xpath=//input[@id='txtBirthPriFirstName']
${b_middle_name}  xpath=//input[@id='txtBirthPriMiddleName']
${birth_sex}  xpath=//select[@id='txtBirthSex']
${birth_month}  xpath=//select[@id='birthMonth']
${birth_date}  xpath=//input[@id='birthDate']
${birth_year}  xpath=//input[@id='birthYear']
${birth_country}  xpath=//select[@id='birthCountry']
${birth_province}  xpath=//select[@id='birthProvince']
${birth_city}  xpath=//select[@id='birthCity']
${birth_mother_lastname}  xpath=//input[@id='txtBirthAuxLastName']
${birth_mother_firstname}  xpath=//input[@id='txtBirthAuxFirstName']
${birth_mother_middlename}  xpath=//input[@id='txtBirthAuxMiddleName']
${birth_purpose}  xpath=//select[@id='cmbRequestPurpose']
${birth_clear}  xpath=//*[@id="birthFormDetails"]/div/div[17]/div[2]/button[2]

############# Walking Request entry and Payment for Authentication Death ###################
${au_death_option}  xpath=//option[text()='Choose Transaction Type']/following::option[7]
${add_image}  xpath=//button[@id='death-AddImageBtn']
${file_path}  C:/Robot framework/Death.tiff

################ Viewable online Marriage Certificate ############################
${vo_marriage_option}  xpath=//option[text()='Choose Transaction Type']/following::option[11]
${hus_last_name}  xpath=//input[@id='txtMrgPriLastName']
${hus_first_name1}  xpath=//input[@id='txtMrgPriFirstName']
${hus_middle_name}  xpath=//input[@id='txtMrgPriMiddleName']
${wife_last_name}  xpath=//input[@id='txtMrgSecLastName']
${wife_first_name}  xpath=//input[@id='txtMrgSecFirstName']
${wife_middle_name}  xpath=//input[@id='txtMrgSecMiddleName']
${marriage_month}  xpath=//select[@id='mrgMonth']
${marriage_date}  xpath=//*[@id="mrgDate"]
${marriage_year}  xpath=//*[@id="mrgYear"]
${marriage_country}  xpath=//*[@id="marriageCountry"]
${marriage_province}  xpath=//*[@id="marriageProvince"]
${marriage_city}  xpath=//*[@id="marriageCity"]
${marriage_purpose}  xpath=//*[@id="cmbMarriageRequestPurpose"]
${marriage_save}  xpath=//*[@id="marriageFormDetails"]/div/div[15]/div[2]/button[1]
${ma_request_lastname}  xpath=//input[@id='txtReqLastName']
${ma_request_firstname}  xpath=//input[@id='txtReqFirstName']
${ma_request_address1}  xpath=//input[@id='txtAddress']
${ma_request_address2}  xpath=//input[@id='streetAddress']
${ma_request_country}  xpath=//select[@id='cmbChildCountry']
${ma_request_province}  xpath=//select[@id='cmbProvince']
${ma_request_city}  xpath=//select[@id='cmbCity']
${ma_amount}  xpath=//*[@id="TotalAmt"]
${ma_enter_amount}  xpath=//*[@id="txtAmountTendered"]
${ma_edit}  xpath=//*[@id="WalkInRequestSummary"]/tbody/tr/td[9]/i[1]
${validid_yes}  xpath=//button[@id='SubmitModal']

################ Viewable online CENODEATH Certificate ############################
${vo_cenodeath_option}  xpath=//option[text()='Choose Transaction Type']/following::option[13]
${cenod_last}  xpath=//input[@id='txtcenodeathPriLastName']
${cenod_first}  xpath=//input[@id='txtcenodeathPriFirstName']
${cenod_middle}  xpath=//input[@id='txtcenodeathPriMiddleName']
${cenodmotherlastname}  xpath=//input[@id='txtcenodeathAuxLastName']
${cenodmotherfirstname}  xpath=//input[@id='txtcenodeathAuxFirstName']
${cenodmothermiddlename}  xpath=//input[@id='txtcenodeathAuxMiddleName']
${cenodeath_sex}    xpath=//select[@id='txtcenodeathSex']
${cenodeath_month}  xpath=//select[@id='cenodeathMonth']
${cenodeath_date}  xpath=//input[@id='cenodeathDate']
${cenodeath_year}  xpath=//input[@id='cenodeathYear']
${cenodeath_country}  xpath=//select[@id='cenodeathCountry']
${cenodeath_province}  xpath=//select[@id='cenodeathProvince']
${cenodeath_city}  xpath=//select[@id='cenodeathCity']
${cenodeath_purpose}  xpath=//select[@id='cenodeathRequestPurpose']
${cenodeath_save}  xpath=//*[@id="cenodeathFormDetails"]/div/div[17]/div/button[1]
${cenodeath_re_last}  xpath=//input[@id='txtReqLastName']
${cenodeath_re_first}  xpath=//input[@id='txtReqFirstName']
${cenodeath_address1}  xpath=//input[@id='txtAddress']
${cenodeath_rso_search}  xpath=//*[@id="btnCRDQuery"]
${click_rso_search}  xpath=//*[@id="btnCRDQuery"]
${vo_cenodeath_certi}  xpath=//*[@id="idCenodeath"]
${cenodeath_confirm}  xpath=//*[@id="CEYesButton"]

######################### Viewable online CENOMAR Certificate ############################
${vo_cenomar_option}  xpath=//option[text()='Choose Transaction Type']/following::option[12]
${cenom_last}  xpath=//input[@id='txtCmarPriLastName']
${cenod_first}  xpath=//input[@id='txtcenodeathPriFirstName']
${cenod_middle}  xpath=//input[@id='txtcenodeathPriMiddleName']
${cenodmotherlastname}  xpath=//input[@id='txtcenodeathAuxLastName']
${cenodmotherfirstname}  xpath=//input[@id='txtcenodeathAuxFirstName']
${cenodmothermiddlename}  xpath=//input[@id='txtcenodeathAuxMiddleName']
${cenodeath_sex}    xpath=//select[@id='txtcenodeathSex']
${cenodeath_month}  xpath=//select[@id='cenodeathMonth']
${cenodeath_date}  xpath=//input[@id='cenodeathDate']
${cenodeath_year}  xpath=//input[@id='cenodeathYear']
${cenodeath_country}  xpath=//select[@id='cenodeathCountry']
${cenodeath_province}  xpath=//select[@id='cenodeathProvince']
${cenodeath_city}  xpath=//select[@id='cenodeathCity']
${cenodeath_purpose}  xpath=//select[@id='cenodeathRequestPurpose']
${cenodeath_save}  xpath=//*[@id="cenodeathFormDetails"]/div/div[17]/div/button[1]
${cenodeath_re_last}  xpath=//input[@id='txtReqLastName']
${cenodeath_re_first}  xpath=//input[@id='txtReqFirstName']
${cenodeath_address1}  xpath=//input[@id='txtAddress']


################## PA- Birth Certificate ##########################################
#AnnotationwizardChangenamebirth
${Changename_chk1}  Xpath://input[@id='new' and @name='Court Decision']
${Changename_chk2}  Xpath://input[@id='new' and @name='Certificate of Finality']
${Changename_chk3}  Xpath://input[@id='new' and @name='Certificate of Registration of Court Decision/Order']
${Changename_chk4}  Xpath://input[@id='new' and @name='Certificate of Authenticity of the Court Decision/Order ']
${Changename_chk5}  Xpath://input[@id='new' and @name='Certificate of Authenticity of the Court Decision/Order ']/following::input[3]
${Changename_chk6}  xpath://input[@id='new' and @name='Certificate of Live Birth/Report of Birth (Un-annotated -mandatory)']
${WDone}    //button[@id='WizardDonebtn']
${Wsubmit}  //button[@id='WizardSubmitbtn']
#Birthdetails
${Cln}   id:txtBirthPriLastName
${Cfn}   id:txtBirthPriFirstName
${S_ex}     id:txtBirthSex
${B_month}  id:birthMonth
${B_date}   id:birthDate
${B_year}   birthYear
${B_province}  id:birthProvince
${B_city}   birthCity
${B_flame}  txtBirthSecLastName
${B_ffame}  txtBirthSecFirstName
${B_mlame}  txtBirthAuxLastName
${B_mfame}  txtBirthAuxFirstName
${purpose2}  //input[@id='txtBirthAuxMiddleName']/following::select[1]
${Req_ln}    id:txtReqLastName
${Req_fn}    id:txtReqFirstName
${Req_ad}     id:txtAddress
${Req_country}  id:cmbChildCountry
${ref_No}  //th[text()='Converted?' and @aria-controls='WalkInTranDetails']/following::span[1]
#Enprinter
${EncoPrinters}     //select[@id='printers']
${EncoFinalPrint}       //button[@id='FinalPrint']

#PaymentPrinter
${Paymentprinter}   //select[@id='printers' and @class='form-control form-field col-lg-8 col-md-8 col-sm-8']
${PayFinalPrint}    id:FinalPrint
${Sucess}   //button[@id='btnSuccessOK' and @type='button']
${Close_btn}    //h4[text()='Success!']/preceding::button[1]
${Edit}  //th[text()='Action']/following::i[1]
${WebAcessSlip}     id:btnRightCallBack
#AnnotationWizardAnnulmentofMarriage
${AnnualMent_chk1}  Xpath://input[@id='new' and @name='Court Decision']
${AnnualMent_chk2}  Xpath://input[@id='new' and @name='Certificate of Finality']
${AnnualMent_chk3}  Xpath://input[@id='new' and @name='Certificate of Registration of Court Decision/Order']
${AnnualMent_chk4}  Xpath://input[@id='new' and @name='Certificate of Authenticity of the Court Decision/Order ']
${AnnualMent_chk5}  xpath://input[@id='new' and @name='Annotated Certificate of Marriage']
${AnnualMent_chk6}  xpath://input[@id='new' and @name='Certificate of Marriage (Un-annotated)']
${WDone}    //button[@id='WizardDonebtn']
${Wsubmit}  //button[@id='WizardSubmitbtn']
#payment
${P_menu}   //a[text()='Certificate Request Payment']
${Recv_pay}     //a[text()='Receive Payments']
${Select_Tran}  //select[@id='ddlSelectFilter']
${inp_txt}  //input[@id='txtSeatch']
${Sbbtn}    //button[@id='btnSarchPayment']
${Tran_link}    //*[@id="Payment"]/tbody/tr/td[2]/a
${Valid_ID}  id:ddlValidIDPresented
${Amnt}     id:TotalAmt
${Amount_tendr}     Xpath://input[@id='txtAmountTendered']
${Print_Or}    Xpath://button[@id='PrintOR']
${finalprint2}  xpath=//button[@id='finalSubmitbtn']
#AnnotationwizardChangenamebirth
${Changename_chk1}  Xpath://input[@id='new' and @name='Court Decision']
${Changename_chk2}  Xpath://input[@id='new' and @name='Certificate of Finality']
${Changename_chk3}  Xpath://input[@id='new' and @name='Certificate of Registration of Court Decision/Order']
${Changename_chk4}  Xpath://input[@id='new' and @name='Certificate of Authenticity of the Court Decision/Order ']
${Changename_chk5}  Xpath://input[@id='new' and @name='Certificate of Authenticity of the Court Decision/Order ']/following::input[3]
${Changename_chk6}  xpath://input[@id='new' and @name='Certificate of Live Birth/Report of Birth (Un-annotated -mandatory)']
${WDone}    //button[@id='WizardDonebtn']
${Wsubmit}  //button[@id='WizardSubmitbtn']
#Birthdetails
${Cln}   id:txtBirthPriLastName
${Cfn}   id:txtBirthPriFirstName
${S_ex}     id:txtBirthSex
${B_month}  id:birthMonth
${B_date}   id:birthDate
${B_year}   birthYear
${B_province}  id:birthProvince
${B_city}   birthCity
${B_flame}  txtBirthSecLastName
${B_ffame}  txtBirthSecFirstName
${B_mlame}  txtBirthAuxLastName
${B_mfame}  txtBirthAuxFirstName
${purpose2}  //input[@id='txtBirthAuxMiddleName']/following::select[1]
#Enprinter
${EncoPrinters}     //select[@id='printers']/option[3]
${EncoFinalPrint}       //button[@id='FinalPrint']

#PaymentPrinter
${Paymentprinter}   //select[@id='printers' and @class='form-control form-field col-lg-8 col-md-8 col-sm-8']
${PayFinalPrint}    id:FinalPrint
${Sucess}   //button[@id='btnSuccessOK' and @type='button']
#Auth
${file_upload}  //button[@id='marriage-AddImageBtn']

#Proccesing
${Pros_menu}    //a[@id='103']
${Pros_Queue}   //a[@id='103']/following::a[2]
${PLN}  //input[@id='lastName']
${PFN}  //input[@id='firstName']
${Search}   //input[@type='search']
${Ptrns_Link}   //*[@id="ProcessingQueueTable"]/tbody/tr/td/a
${ViewImage}   //th[@class='sorting_disabled' and text()='Action']/following::i[1]
${Issue}    //button[@id='print']
${Icont}    //button[@id='IssueCertificateContinueBtn' and text()='Continue']
${Iyes}     //button[@id='Yesbutton']
${Iok}  //button[@id='AlertButton']
#negativecert
${norecord}  btnSuccessOK

#calender
${Date_Recieved}    id=DateReceived1
${Calendar_Month}   xpath://select[@class='ui-datepicker-month']
${Calendar_Year}    xpath://select[@class='ui-datepicker-year']
${Calendar_Date}    xpath://*[@id="ui-datepicker-div"]/table/tbody/tr[1]/td[6]/a
${CRDRCCDate}   //input[@id='DateReceived1']
#${Calendar_Date}    xpath://a[@class='ui-state-default' and text()=31]
#${Birth_Date}  xpath=//a[@class='ui-state-default'][1]
#CRDRCC
${TrannoPrm}    //input[@id='TransactionNo']
${RCCSave}  //a[@class='btn btn-default' and text()='Cancel']/following::button[1]
#Annotaiontran
${AuLn}  //input[@id='lastName']
${Aufn}  //input[@id='firstName']
${Annotran}  //input[@id='transactionNumber']
${Annosearch}   id:searchTransactionNumber
${Aimg}    //input[@id='imageID']
${AContinue}    id:continueBtn
#signature
${Performsig}   GenSpecimenSignature
${SigConfirm}   //button[@id='Yesbutton']
${SigF}  //input[@id='txtFirstName']
${Sigl}     //input[@id='txtLastName']
${Sigdate}  //input[@id='datepicker']
${Ssearch}      id:btnSearch
${SigView}  //*[@id="tblRole"]/tbody/tr[1]/td[9]/a[1]/i[1]
${SigApprove}      id:AuAccept
${Sigaccpt}     //button[@id='confirm' and text()='Accept']
${SigCon}  //button[@id='AlertButton']
#Release
${CertReleasing}    //a[@id='104']
${ReleaseCert}      //a[@id='104']/following::a[2]
${TransNoKioskNo}   //input[@id='TransNum']
${ReleaseSrch}      //button[@id='validsearch']
${ReleaseTransLink}     //a[@data-bind='text:FormattedTransactionNumber,click:$root.onViewClick']
#${ReleasePrntBtn}       //button[@class='btn btn-primary']
${ReleasePrntBtn}   //button[@data-bind='enable:IsdetailPrintEnabled,click:PrintClick']
${ReleaseValidId}       //select[@id='ddlclaimentreason']
${ReleaseProceed}       //div[@id='proceed']
${ReleasePrinter}       //select[@id='printers']
${RelPrintOk}           //button[@id='FinalPrintButton']
${ReleaseCntnu}     //button[@id='continue']
${SecpaSerial}      //input[@type='text']
${SaveCntnu}        //button[@id='saveContinue']
${ReleaseOk}        //button[@data-bind='click:TransactionSuccessClick']
#more
${More}  //a[@id='103']/following::a[8]
#Annotationhome
${Annoproshome}     //a[@id='131' and text()='Annotation Processing']
#ProcessAnnotation
${ProsAnno}  link:Process Annotation Request
${OrgnlCRD}     //button[@id='OriginalCRDContinueBtn']
${RegBooktype}      //select[@id='ddlRegistryBookType']
${RegNum}       //input[@id='registryNumber']
${AnnProvince}      //select[@id='ddlProvince']
${AnnCity}      //select[@id='ddlCity']
${VEIRecSrch}       //button[@id='VEIRecordSearchBtn']
${VEIRecCntnuBtn}   //button[@id='VEIRecordContinueBtn']
${AnnTempl}     //select[@id='ddlannotationType']
${AnnPosition}      //select[@id='ddlPosition']
${AnnApply}     //button[@id='AnnotationPartialApplyBtn']
${AnnPartialCntnu}      //button[@id='AnnotationPartialContinueBtn']
${AnnSubmit}        //button[@id='TopSheetSubmitBtn']
${Anoprocessok}     //button[@id='AlertButton']
#Approveannotation
${AnnApprDisAppr}       link:Approve / Disapprove Annotation Request
${AnnApprBtn}        //button[@id='AnnotationApproveBtn']
${AAtran}   //input[@id='transactionNumber']
${AASearch}  //button[@id='searchTransactionNumber']
${AAYes}      //button[@id='Yesbutton']
${AAalert}      //button[@id='AlertButton']
${AAprinter}    //select[@id='printers']
${AAfinalprint}     //button[@id='FinalPrint']
${AAapprove}    //button[@id='AlertButton']


###################### Multiple Annotation #################
${select_topsheet}  xpath=//span[text()='Use for Top Sheet']
${ocrg}  xpath=//input[@id='OCRGNumberFld']
${retriveocrg}  xpath=//button[@id='retrieveAnnotationBtn']
${edittext}  xpath=//textarea[@id='txtAnnotationText']

######VEI#################3
${vei}  xpath=//*[@id="141"]
${vei_home}  xpath=//a[@href='javascript:void(0)' and text()='VEI Home']
${lcr_CRD_submission}  xpath=//a[@class='bold-text' and text()='Encode LCR CRD Submission']
${cdli_city}  xpath=//select[@id='LCRCity']
${reg_book_type1}  xpath=//*[@id="ddlRegBookType"]
${docu_type}  xpath=//*[@id="ddlDocType"]
${docu_sub_type}  xpath=//*[@id="ddlDocSubType"]
${registry_no}  xpath=//*[@id="txtRegistryStart"]
${vei_date}  xpath=//*[@id="dtReceived"]
${vei_save}  xpath=//*[@id="btnSave"]
${select_courtdegree}  xpath=//*[@id="Que_1"]
${select_certioffe}  xpath=//*[@id="Que_4"]

############ Create CRD Batch- Death ##################
${select_country}  xpath=//select[@id='LCRCountry']
${select_province}  xpath=//select[@id='LCRProvince']
${select_city}  xpath=//select[@id='LCRCity']
${regi_book_type}  xpath=//select[@id='ddlDocType']
${registry_number_satrt}  xpath=//input[@id='txtRegistryStart']
${registry_number_end}  xpath=//input[@id='txtRegistryEnd']
${no_of_docu}  xpath=//input[@id='txtDocCount']
${date_received}  xpath=//input[@id='dtReceived']
${crd_save}  xpath=//button[@id='btnSave']
${click_no}  xpath=//a[@class='btn btn-default']
${create_crd_batch}  xpath=//a[@class='bold-text' and text()='Create CRD Batch']
${batch_no}  xpath=//input[@id='batchNo']
${crd_country}  xpath=//select[@id='CountryName']
${crd_province}  xpath=//select[@id='ProvinceName']
${crd_city}  xpath=//select[@id='CityName']
${crd_year}  xpath=//input[@id='registrationYear']
${crd_month}  xpath=//select[@id='MonthName']
${crd_regi_type}  xpath=//select[@id='RegistryBookTypeName']
${actual_count}  xpath=//input[@id='actualDocumentCount']
${problem_count}  xpath=//input[@id='problemDocumentCount']
${crd_submit}  xpath=//button[@class='btn btn-primary' and @data-bind='click: AddSearchData']
${crd_ok}  xpath=//div[@id='popUpSuccessCallText' and text()='Record saved.']/following::button[1]
${enter_regi_nu}  xpath=//input[@id='registryNumber']
${docu_sub_type1}  xpath=//div[@id='isDeathCRD']//select[@id='ddlDocSubType']/option[2]
${crd_continue}  xpath=//button[@id="ContinueVEIRecord"]
${crd_death_first}  xpath=//input[@placeholder='Deceased First Name']
${crd_death_middle}  xpath=//input[@placeholder='Deceased Middle Name']
${crd_death_last}  xpath=//input[@placeholder='Deceased Last Name']
${sex_crd}  xpath=//span[@class='form-value view-field' and @data-bind='text:deathFirstName']/following::option[3]
${date_of_death}  xpath=//input[@placeholder='Day (DD)' and @data-bind='value:deathDay']
${date_of_month}  xpath=//span[@class='form-value view-field' and @data-bind='text:deathMonthDesc']/following::option[3]
${date_of_year1}  xpath=//div[@id='deathViewModelDiv']//span[@data-bind='text:deathYear']/following::input[1]
${birth_date1}  xpath=//input[@placeholder='Day (DD)' and @data-bind='value:birthDay']
${birth_month1}  xpath=//span[@class='form-value view-field' and @data-bind='text:birthMonthDesc']/following::option[2]
${birth_year1}  xpath=//div[@id='deathViewModelDiv']//span[@data-bind='text:birthYear']/following::input[1]
${select_age}  xpath=//span[@data-bind='text:DeathAgeDesc' and @class='form-value view-field']/following::option[96]
${place_of_death}  xpath=//span[@data-bind='text:PlaceofdeathDesc' and @class='form-value view-field']/following::option[2]
${death_province}  xpath=//select[@id='Province']
${death_city}  xpath=//select[@id='City']
${select_barangay}  xpath=//select[@id='Barangay']
${civil_status}  xpath=//span[@class='form-value view-field' and  @data-bind='text:CivilStatusDesc']/following::option[2]
${religion}  xpath=//span[@class='form-value view-field' and  @data-bind='text:DeathReligionDesc']/following::option[2]
${citizenship}  xpath=//span[@class='form-value view-field' and  @data-bind='text:CitizenshipDesc']/following::option[2]
${residence_province}  xpath=//select[@id='ResProvince']
${residence_city}  xpath=//select[@id='ResCity']
${residence_barangay}  xpath=//select[@id='ResBarangay']
${occupation}  xpath=//span[@class='form-value view-field' and  @data-bind='text:OccupationDesc']/following::option[2]
${mother_firstname}  xpath=//input[@class='form-control form-field editable-field AlphaNumeric ALTF5' and @data-bind='value:motherFirstName']
${mother_lastname}  xpath=//input[@class='form-control form-field editable-field AlphaNumeric ALTF5' and @data-bind='value:motherLastName']
${manner_of_death}  xpath=//span[@class='form-value view-field' and  @data-bind='text:MannerofDeathDesc']/following::option[2]
${attendent_at_death}  xpath=//span[@class='form-value view-field' and  @data-bind='text:AttendantatDeathDesc']/following::option[2]
${attend_du_date}  xpath=//input[@data-bind='value:AttendantFromDay']
${attend_du_month}  xpath=//span[@class='form-value view-field' and  @data-bind='text:AttendantFromMonthDesc']/following::option[2]
${attend_du_year}  xpath=//div[@class='form-group']//span[@data-bind='text:AttendantFromYear']/following::input[1]
${attend_du_to_date}  xpath=//input[@data-bind='value:AttendantToDay']
${attend_du_to_month}  xpath=//span[@class='form-value view-field' and  @data-bind='text:AttendantToMonthDesc']/following::option[3]
${attend_du_to_year}  xpath=//div[@class='form-group']//span[@data-bind='text:AttendantToYear']/following::input[1]
${certi_of_death}  xpath=//span[@class='form-value view-field' and  @data-bind='text:AttendantatPersonDesc']/following::option[2]
${certi_month}  xpath=//span[@class='form-value view-field' and  @data-bind='text:DeathCertificationMonthDesc']/following::option[4]
${certi_date}  xpath=//input[@data-bind='value:DeathCertificationDay']
${certi_year}  xpath=//div[@class='form-group']//span[@data-bind='text:DeathCertificationYear']/following::input[1]
${disposal}  xpath=//div[@id='CauseofDeathViewModelDiv']//span[@data-bind='text:CorpseDisposalDesc']/following::option[2]
${disposal2}  xpath=//div[@id='CauseofDeathViewModelDiv']//span[@data-bind='text:CorpseDisposalDesc']/following::option[2]
${ceremontaory_province}  xpath=//div[@id='crematoryprovince']//select[@id='CCProvince']
${ceremontaory_city}  xpath=//div[@id='crematorycity']//select[@id='CCCity']
${ceremontaory_barangay}  xpath=//div[@id='crematorybarangay']//select[@id='CCBarangay']
${external_cause}  xpath=//*[@id="CauseofDeathViewModelDiv"]/div[11]/div[2]/div/select
${autospy}  xpath=//*[@id="CauseofDeathViewModelDiv"]/div[15]/div[3]/div/select
${relationship_deceased}  xpath=//*[@id="CauseofDeathViewModelDiv"]/div[16]/div/div/select
${prepared_date}  xpath=//span[@data-bind='text:PreparedDay']/following::input[1]
${prepared_month}  xpath=//span[@data-bind='text:PreparedMonthDesc']/following::option[5]
${prepared_year}  xpath=//span[@data-bind='text:PreparedYear']/following::input[1]
${recived_date}  xpath=//input[@id='ReceivedDate']
${regi_status}  xpath=//*[@id="CauseofDeathViewModelDiv"]/div[18]/div[2]/div/select
${registration_date}  xpath=//input[@id='RegistrationDate']
${death_submit}  xpath=//button[@data-bind='click:SubmitEditData' and @id='generalBirthSubmit']
${1_ok1}  xpath=//button[@id='AlertButton']
${success_death_ok}  xpath=//div[@id='popUpAlertText' and text()='Batch successfully completed']/following::button[1]
${click_back}  xpath=//a[@id='VitalEventsDashBoradMain']

        ################## quality check report########################

${click_quality}  xpath=//a[text()='Quality Check Reports']
${select_report}  xpath=//select[@id='reportType']
${select_continue}  xpath=//button[@id='continue']
${enter_batch}  xpath=//input[@id='batchNumber']
${regi_country}  xpath=//select[@id='CountryName']
${regi_province}  xpath=//select[@id='ProvinceName']
${regi_city}  xpath=//select[@id='CityName']
${regi_year}  xpath=//input[@id='registrationYear']
${regi_booktype1}  xpath=//select[@id='registrationBookType']
${generate_report}  xpath=//button[@id='generatePassReport']
${back_toreport}  xpath=//a[text()='Back to Report Type']
${back_tovei}  xpath=//a[text()='Back to Vital Events Information Home']

      ####### Forward batch to DCC ########################

${forward_todcc}  xpath=//a[text()='Forward Batches to DCC/Concerned Archive Unit']
${select_provinceforcrd}  xpath=//select[@id="ProvinceName"]
${regi_month}  xpath=//select[@id='registrationMonth']
${button_forward_todcc}  xpath=//button[@id='searchForwardDCC']
${search_dcc}  xpath=//div[@id='ForwardBatchResultsDCCTable_filter']//input[@class='form-control input-sm']
${select_checkbox}  xpath=//table[@id='ForwardBatchResultsDCCTable']//input[@type='checkbox']/following::span[1]
${button_select}  xpath=//button[@id='submitForwardDCC']
${select_transmit}  xpath=//div[@id='transmittodropdown']//select[@class='form-control form-field']/option[2]
${transfer_todcc}  xpath=//button[@id='transmitToDCC']
${transfer_todcc_cdli}  xpath=//button[@id='transmitToDCCCDLI']
${transfer_ok}  xpath=//div[@id='customSuccessDialog']//button[@id='CustomSuccessOkBtn']
${transfer_ok_cdli}  xpath=//div[@id='customCDLISuccessDialog']//button[@id='CustomSuccessOkBtn']

    ############# Forward CDLI to DCC ########################
${select_forwardtodcc}  xpath=//a[text()='Forward CDLI to DCC']
${forward_province}  xpath=//select[@id='ProvinceName']
${forward_city}  xpath=//*[@id="CityName"]
${forward_type}  xpath=//select[@id='ddlRegBookType']/option[2]
${forward_type1}  xpath=//select[@id='ddlRegBookType']/option[3]

  ################ Received at DCC ############################

${received_at_dcc}  xpath=//a[text()='Receive Batch/CDLI at DCC']
${enter_transmittal}  xpath=//input[@id='transmittalReferenceNumberDCC']
${transmittal_search}  xpath=//button[@id='searchReceiveDCC']
${receive_save}  xpath=//div[@id='ReceiveBatchSearchResultsDCCCDLIDiv']//button[@id='saveReceiveDCC']
${receive_ok}  xpath=//button[@id='AlertButton']

############### CRD Document Conversion ##################################
${select_dc}  xpath=//a[@id='150']
${select_dc_home}  xpath=//a[text()='Document Conversion Home']
${select_upload}  xpath=//span[text()='CRD/CDLI']
${select_choose}  xpath=//button[@id='birth-AddImageBtn']
${select_match}  xpath=//a[@id='CRDCLICK']//span[text()='Match / Rework']
${enter_search}  xpath=//*[@id="ViewBatchListCRDTable_filter"]/label/input
${select_registry}  xpath=//select[@id='RegistryBookTypeName']/option[2]
${enter_reginumber}  xpath=//input[@id='registryNumber']
${click_submit}  xpath=//button[@id='search']
${saveandcontinue}  xpath=//button[@id='saveAndContinue']
${crdcommitbatch}  xpath=//button[@id='commitbatch']
${crdsuccess}  xpath=//button[@id='btnSuccessOK']
${crdqachecking}  xpath=//h5[text()='Perform Quality Assurance (QA) Check on Primary CRDs']
${crdacceptmatch}  xpath=//button[@id='acceptMatch']
${lastcrdacceptmatch}  xpath=//button[@id='AcceptBatch']
${qapassedok}  xpath=//button[@id='btnSuccessOK']


############### CDLI Document Conversion ##################################

${select_match1}  xpath=//a[@id='CDLICLICK']//span[text()='Match / Rework']

${select_registrycdli}  xpath=//select[@id='RegistryBookTypeName']/option[2]
${select_registrycdli1}  xpath=//select[@id='RegistryBookTypeName']/option[3]
${proper_value}  xpath=//div[@id='divDeathRecords']//input[@id='properseperatorpage']
${attachment_value}  xpath=//div[@id='divDeathRecords']//input[@id='attachmentseperatorpage']
${enter_reginumber}  xpath=//input[@id='registryNumber']
${click_submit}  xpath=//button[@id='search']
${saveandcontinue}  xpath=//button[@id='saveAndContinue']
${crdcommitbatch}  xpath=//button[@id='commitbatch']
${crdsuccess}  xpath=//button[@id='btnSuccessOK']
${crdqachecking}  xpath=//h5[text()='Perform Quality Assurance (QA) Check on Primary CRDs']
${cdliqachecking}  xpath=//h5[text()='Perform Quality Assurance (QA) Check on CDLIs']
${crdacceptmatch}  xpath=//button[@id='acceptMatch']
${lastcrdacceptmatch}  xpath=//button[@id='AcceptBatch']
${qapassedok}  xpath=//button[@id='btnSuccessOK']

############ Piecemeal CRD Birth##############################
${select_piecemeal}  xpath=//a[text()='Encode Piecemeal CRD/CDLI']
${select_piece_city}  xpath=//select[@id='regcity']
${piece_birth}  xpath=//span[@data-bind='text:BookDescription']/following::option[2]
${birth_subtype}  xpath=//span[@data-bind='text:docsubtypeDesc']/following::option[2]
${birth_registry_no}  xpath=//input[@id='registryNumber']
${piecemeal_submit}  xpath=//button[@id='submitrecord']
${birth_firstname}  xpath=//span[@data-bind='text:childFirstName ']/following::input[1]
${birth_middlename}  xpath=//span[@data-bind='text:childMiddleName']/following::input[1]
${birth_lastname}  xpath=//span[@data-bind='text:childLastName']/following::input[1]
${birth_sex1}  xpath=//span[@data-bind='text:sexDesc']/following::option[3]
${birth_dateday}  xpath=//*[@id="childViewModelDiv"]/div[3]/div[1]/div/input
${birth_monthday}  xpath=//*[@id="childViewModelDiv"]/div[3]/div[2]/div/select
${birth_yearday}  xpath=//*[@id="childViewModelDiv"]/div[3]/div[3]/div/input
${place_type}  xpath=//span[@data-bind='text:PlaceTypeDesc']/following::option[2]
${birth_province1}  xpath=//select[@id='PlaceofBirthProvince']
${birth_city1}  xpath=//select[@id='PlaceofBirthCity']
${birthbaragaya}  xpath=//select[@id='PlaceofBirthBarangay']
${typeofbirth}  xpath=//span[@data-bind='text:typeOfBirthDesc']/following::option[2]
${birthorder}  xpath=//span[@data-bind='text:BirthOrderDesc']/following::option[2]
${weight}  xpath=//span[@data-bind='text:weightAtBirth']/following::input[1]
${mothername}  xpath=//span[@data-bind='text:motherFirstName']/following::input[1]
${mothername1}  xpath=//div[@id='FetalDeathDetailsDiv1']//span[@data-bind='text:motherFirstName']/following::input[1]
${mothermiddlename1}  xpath=//span[@data-bind='text:motherMiddleName']/following::input[1]
${mothermiddlename2}  xpath=//div[@id='FetalDeathDetailsDiv1']//span[@data-bind='text:motherMiddleName']/following::input[1]
${motherlastname1}  xpath=//span[@data-bind='text:motherLastName']/following::input[1]
${motherlastname2}  xpath=//div[@id='FetalDeathDetailsDiv1']//span[@data-bind='text:motherLastName']/following::input[1]
${mother_citi1}  xpath=//div[@id='motherViewModelDiv']//span[@data-bind='text:MotherCitizenshipDesc']/following::option[2]
${mother_citizen1}  xpath=//div[@id='wifeViewModelDiv']//span[@data-bind='text:MotherCitizenshipDesc']/following::option[2]
${mother_regi}
${husmother_citizen}  xpath=//div[@id='husbandViewModelDiv']//span[@data-bind='text:MotherCitizenshipDesc']/following::option[2]
${husmother_citizen1}  xpath=//div[@id='husbandViewModelDiv']//span[@data-bind='text:MotherCitizenshipDesc']/following::option[2]
${religion1}  xpath=//span[@data-bind='text:MotherReligionDesc']/following::option[46]
${ethinicity}  xpath=//span[@data-bind='text:MotherEthnicityDesc']/following::option[2]
${bornalive1}  xpath=//span[@data-bind='text:noOfChildBornAliveDesc']/following::option[2]
${stillliving1}  xpath=//span[@data-bind='text:noOfChildStillLivingDesc']/following::option[2]
${nowdead2}  xpath=//span[@data-bind='text:noOfChildBornAliveNowDeadDesc']/following::option[2]
${nowdead1}  xpath=//span[@data-bind='text:noOfChildBornAliveNowDeadDesc']/following::option[3]
${mother_occupation}  xpath=//span[@data-bind='text:MotherOccupationDesc']/following::option[2]
${agetime}  xpath=//span[@data-bind='text:MotherAgeDesc']/following::option[20]
${residenceprovince1}  xpath=//span[@data-bind='text:MotherResidencyProvinceDesc']/following::option[2]
${residencecity1}  xpath=//span[@data-bind='text:MotherResidencyCityDesc']/following::option[2]
${motherbarangay}  xpath=//span[@data-bind='text:MotherResidenceBarangayDesc']/following::option[2]
${marriagemonth1}  xpath=//span[@data-bind='text:marriageMonthDesc']/following::option[2]
${marriage_date1}  xpath=//span[@data-bind='text:marriageDay']/following::input[1]
${marriage_year1}  xpath=//span[@data-bind='text:marriageYear']/following::input[1]
${marriage_province1}  xpath=//select[@id='PlaceofMarriageBirthProvince']
${marriage_province2}  xpath=//select[@id='PlaceofMarriageBirthProvince']
${marriage_city1}  xpath=//select[@id='PlaceofMarriageBirthCity']
${marriage_city2}  xpath=//select[@id='PlaceofMarriageBirthCity']
${ligitimcy}  xpath=//span[@data-bind='text:LegitimacyDesc']/following::option[2]
${attendent}  xpath=//span[@data-bind='text:AttendantDesc']/following::option[2]
${attened_position}  xpath=//span[@data-bind='text:attendantTitle']/following::input[1]
${attened_birth}  xpath=//span[@data-bind='text:attendantMonthDesc']/following::option[5]
${attened_birthday}  xpath=//span[@data-bind='text:attendantDay']/following::input[1]
${attened_year}  xpath=//span[@data-bind='text:attendantYear']/following::input[1]
${relationship}  xpath=//span[@data-bind='text:relationshipDesc']/following::option[6]
${registrationdate1}  xpath=//input[@id='RegistrationDate']
${regi_status2}  xpath=//span[@data-bind='text:RegistrationStatusDesc']/following::option[3]
${submit1}  xpath=//button[@id='generalBirthSubmit']

################### Piecemeal CRD Marriage###############################
${piece_marriage}  xpath=//span[@data-bind='text:BookDescription']/following::option[5]
${husfirstna}  xpath=//span[@data-bind='text:husbandFirstName']/following::input[1]
${husmiddlena}  xpath=//span[@data-bind='text:husbandMiddleName']/following::input[1]
${huslastna}  xpath=//span[@data-bind='text:husbandLastName ']/following::input[1]
${husbirthdate}  xpath=//div[@id='husbandBirthday']//span[@data-bind='text:birthDay']/following::input[1]
${husbirthmonth}  xpath=//div[@id='husbandBirthmonth']//span[@data-bind='text:birthMonthDesc']/following::option[3]
${husbirthyear}  xpath=//div[@id='husbandBirthyear']//span[@data-bind='text:birthYear']/following::input[1]
${select_age1}  xpath=//span[@data-bind='text:HusbandAge']/following::option[33]
${husbirthprovince}  xpath=//select[@id='PlaceofBirthProvince']
${husbirthcity}  xpath=//select[@id='PlaceofBirthCity']
${huscitizenship}  xpath=//span[@data-bind='text:HusbandCitizenshipDesc']/following::option[2]
${husresidenceprovince}  xpath=//select[@id='HusbandsResidenceProvince']
${husresidencecity}  xpath=//select[@id='HusbandsResidenceCity']
${husbarangay}  xpath=//select[@id='HusbandsResidenceBarangy']
${husreligion}  xpath=//span[@data-bind='text:HusbandReligionDesc']/following::option[46]
${husstatus}  xpath=//span[@data-bind='text:huscivilStatusDesc']/following::option[2]
${mothfirstname}  xpath=//*[@id="husbandViewModelDiv"]/div[11]/div[1]/div/input
${mothemiddlename}  xpath=//*[@id="husbandViewModelDiv"]/div[11]/div[2]/div/input
${mothelastname}  xpath=//*[@id="husbandViewModelDiv"]/div[11]/div[3]/div/input
${wifefirstname2}  xpath=//span[@data-bind='text:wifeFirstName']/following::input[1]
${wifemiddlename2}  xpath=//span[@data-bind='text:wifeMiddleName']/following::input[1]
${wifelastname2}  xpath=//span[@data-bind='text:wifeLastName ']/following::input[1]
${wife_birthday}  xpath=//div[@id='wifeBirthday']//span[@data-bind='text:birthDay']/following::input[1]
${wifebirthmonth}  xpath=//div[@id='wifeBirthmonth']//span[@data-bind='text:birthMonthDesc']/following::option[8]
${wifebirthyear}  xpath=//div[@id='wifeBirthyear']//span[@data-bind='text:birthYear']/following::input[1]
${wifeage1}  xpath=//span[@data-bind='text:WifeAge']/following::option[31]
${wifecountryname}  xpath=//span[@data-bind='text:WifecountryDesc']/following::option[197]
${wifeprovincename}  xpath=//span[@data-bind='text:WifeProvinceDesc']/following::option[2]
${wifecityname}  xpath=//span[@data-bind='text:WifeCityMunicipalityDesc']/following::option[2]
${wifecitizen}  xpath=//span[@data-bind='text:WifeCitizenshipDesc']/following::option[2]
${wiferesidenceprovince}  xpath=//select[@id='WifeResidenceProvince']
${wiferesidencecity}  xpath=//select[@id='WifeResidenceCity']
${wifebarangay}  xpath=//select[@id='WifeResidenceBarangy']
${wifereligion}  xpath=//span[@data-bind='text:WifeReligionDesc']/following::option[46]
${wifecivil}  xpath=//span[@data-bind='text:WifecivilStatusDesc']/following::option[2]
${wifemother}  xpath=//*[@id="wifeViewModelDiv"]/div[10]/div[1]/div/input
${wifemothermiddle}  xpath=//*[@id="wifeViewModelDiv"]/div[10]/div[2]/div/input
${wifemotherlast}  xpath=//*[@id="wifeViewModelDiv"]/div[10]/div[3]/div/input
${place_marriage_type}  xpath=//span[@data-bind='text:PlaceTypesMarriageDesc']/following::option[2]
${marriageprovince3}  xpath=//select[@id='PlaceofMarriageProvince']
${marriagecity3}  xpath=//select[@id='PlaceofMarriageCity']
${marriage_barangay}  xpath=//select[@id='PlaceofMarriageBarangy']
${marriage_month2}  xpath=//span[@data-bind='text:marriageMonthDesc']/following::option[8]
${marriagedate2}  xpath=//span[@data-bind='text:marriageDay']/following::input[1]
${marriageyear2}  xpath=//span[@data-bind='text:marriageYear']/following::input[1]
${type_of_marriage}  xpath=//span[@data-bind='text:marriageTypeDesc']/following::option[2]
${officer_religion}  xpath=//span[@data-bind='text:SoleReligionDesc']/following::option[2]
${type_of_ceremoney}  xpath=//span[@data-bind='text:ceremonyDesc']/following::option[2]

####################### Piecemeal for CRD Death / Fetal Death##############################
${piecemeal_death}  xpath=//span[@data-bind='text:BookDescription']/following::option[7]
${Piecemeal_deathsubtype}  xpath=//span[@data-bind='text:docsubtypeDesc']/following::option[3]
${Piecemeal_fetussubtype}  xpath=//span[@data-bind='text:docsubtypeDesc']/following::option[4]
${fetus_firstname}  xpath=//span[@data-bind='text:fetusFirstName']/following::input[1]
${fetus_middlename}  xpath=//span[@data-bind='text:fetusMiddleName']/following::input[1]
${fetus_lastname}  xpath=//span[@data-bind='text:fetusLastName']/following::input[1]
#${fetus_sex}  xpath=//div[@id='generalDeathDetailsDiv1']//span[@data-bind='text:sexDesc']/following::option[3]
${fetus_sex1}  xpath=//div[@id='FetalDeathDetailsDiv1']//span[@class='form-value view-field' and @data-bind='text:sexDesc']/following::option[3]
${delivery_date}  xpath=//span[@data-bind='text:deliveryDay']/following::input[1]
${dateofdelivery}  xpath=//span[@data-bind='text:deliveryMonthDesc']/following::option[4]
${deliveryyear}  xpath=//span[@data-bind='text:DeliveryYear']/following::input[1]
${placetype1}  xpath=//span[@data-bind='text:PlaceTypeDesc']/following::option[2]
${placeofdelivery}  xpath=//div[@id='NameHospital']//span[@data-bind='text:NameofHospital']/following::input[1]
${deliveryprovince}  xpath=//select[@id='PlaceofDeliveryProvince']
${deliverycity}  xpath=//select[@id='PlaceofDeliveryCity']
${deliverybarangay}  xpath=//select[@id='PlaceofDeliveryBarangy']
${typeofdelivery}  xpath=//div[@id='FetalDeathDetailsDiv1']//span[@data-bind='text:TypeofBirthDesc']/following::option[2]
${typeofdelivery1}  xpath=//div[@id='FetalDeathDetailsDiv1']//span[@data-bind='text:TypeofBirthDesc']/following::option[2]
${multipledelivery}  xpath=//select[@id='MultipleBirthID']/option[2]
${methodeofdelivery}  xpath=//span[@data-bind='text:MethodOfDeliveryDesc']/following::option[2]
${methodofdelivery1}  xpath=//div[@id='FetalDeathDetailsDiv1']//span[@data-bind='text:TypeofBirthDesc']/following::option[2]
${fetusgram}  xpath=//span[@data-bind='text:FetusweightAtBirth']/following::input[1]
${condtionoffetus}  xpath=//span[@data-bind='text:MainDiseaseofInfant']/following::input[1]
${otherdisease}  xpath=//span[@data-bind='text:OtherDiseasesofInfant']/following::input[1]
${mainmaternaldisease}  xpath=//span[@data-bind='text:MaternalDiseaseInfant']/following::input[1]
${othermaterneldisease}  xpath=//span[@data-bind='text:OthermeternalDiseasesofInfant']/following::input[1]
${relaventcircum}  xpath=//span[@data-bind='text:OtherrelevantcircumstancesInfant']/following::input[1]
${fetusdied}  xpath=//span[@data-bind='text:FetusDiedDesc']/following::option[2]
${lengthofpregancy}  xpath=//span[@data-bind='text:LengthofPregnencyfetusDesc']/following::option[2]
${attened}  xpath=//span[@data-bind='text:AttendantDesc']/following::option[2]
${certificationofdeath}  xpath=//span[@data-bind='text:IsAttendedDesc']/following::option[2]
${certificationofdeathdate}  xpath=//span[@data-bind='text:CertificationDate']/following::input[1]
${disposal2}  xpath=//div[@id='CauseofDeathViewModelDiv']//span[@data-bind='text:CorpseDisposalDesc']/following::option[2]
${autopsy}  xpath=//div[@id='CauseofDeathViewModelDiv']//span[@data-bind='text:AutopsyDesc']/following::option[2]
${cermatoryprovince}  xpath=//div[@id='crematoryprovince']//select[@id='CCProvince']
${cermatorycity}  xpath=//div[@id='crematorycity']//select[@id='CCCity']
${cermatorybarangay}  xpath=//div[@id='crematorybarangay']//select[@id='CCBarangay']
${relationship1}  xpath=//div[@id='deathViewModelDiv']//span[@data-bind='text:relationshipDesc']/following::option[2]
${preparedby_date}  xpath=//input[@id='PreparedDate']
${receivedby_date}  xpath=//input[@id='ReceivedDatePicker']
${registration1}  xpath=//input[@id='RegistrationDatePicker']
${registatus4}  xpath=//div[@id='deathViewModelDiv']//span[@data-bind='text:RegistrationStatusDesc']/following::option[3]
${fetalmothercitizen}  xpath=//div[@id='FetalDeathDetailsDiv1']//span[@data-bind='text:MotherCitizenshipDesc']/following::option[2]
${fetalmotherreligon}  xpath=//div[@id='FetalDeathDetailsDiv1']//span[@data-bind='text:MotherReligionDesc']/following::option[46]
${fetalmotheroccupation}  xpath=//div[@id='FetalDeathDetailsDiv1']//span[@data-bind='text:MotherOccupationDesc']/following::option[2]
${motherageattime}  xpath=//span[@data-bind='text:motherAgeAtThisBirth']/following::option[28]
${fetalmarriage_province}  xpath=//select[@id='PlaceofMarriageProvince']
${fetalmarriage_city}  xpath=//select[@id='PlaceofMarriageCity']
${lengthofpregency1}  xpath=//div[@id='FetalDeathDetailsDiv1']//span[@data-bind='text:LengthofPregnencyfetusDesc']/following::option[2]
${certideathname}  xpath=//span[@data-bind='text:CertificationName']/following::input[1]
${certideathtitle}  xpath=//span[@data-bind='text:CertificationTitle']/following::input[1]
${fetaldisposal}  xpath=//div[@id='FetalDeathDetailsDiv1']//span[@data-bind='text:CorpseDisposalDesc']/following::option[2]
${fetalautosp}  xpath=//div[@id='FetalDeathDetailsDiv1']//span[@data-bind='text:AutopsyDesc']/following::option[2]
${ceremontaory_province1}  xpath=//div[@id='FetalDeathDetailsDiv1']//select[@id='CCProvince']
${ceremontary_city1}  xpath=//div[@id='FetalDeathDetailsDiv1']//select[@id='CCCity']
${ceremontary_barangy1}  xpath=//div[@id='FetalDeathDetailsDiv1']//select[@id='CCBarangay']
${inform_relation1}  xpath=//div[@id='FetalDeathDetailsDiv1']//span[@data-bind='text:relationshipDesc']/following::option[2]
${fetal_submit}  xpath=//div[@id='FetalDeathDetailsDiv1']//button[@id='generalBirthSubmit']

##################### Search CRD ###########################################
${search_crd}  xpath=//a[text()='Search/Edit Batch']
${search_batch}  xpath=//input[@id='batchNo']
${search_country}  xpath=//select[@id='CountryName']
${search_province}  xpath=//select[@id='ProvinceName']
${search_city}  xpath=//select[@id='CityName']
${search_year}  xpath=//input[@id='year']
${search_month}  xpath=//select[@id='MonthName']/option[9]
${search_doctype}  xpath=//select[@id='RegistryBookTypeName']/option[7]
${search_button}  xpath=//button[@id='search']
${click_link}  xpath=//div[text()='136']
${enode_crd}  xpath=//button[@id='btnEncodeCDLI']

############ Rework #############################
${select_rework}  xpath=//a[text()='Request Rework']
${enter_trans}  xpath=//input[@id='transactionNumber']
${retrive}  xpath=//button[@id='validate']
${select_reason}  xpath=//select[@id='cmbRequesterType']
${so_approve}  xpath=//button[@id='Yesbutton']
${supervisor}  xpath=//a[text()='Supervisor Override']
${disapprove}  xpath=//button[@id='2']
${disapprove_approve_ok}  xpath=//button[@id='SupOvrapproveButton']
${approve}      xpath=//button[@id='1']

##################### CENOMAR ####################################3
${cenomar_child_lastname}       xpath=//input[@id='txtCmarPriLastName']
${cenomar_child_firstname}       xpath=//input[@id='txtCmarPriFirstName']
${cenomar_child_middlename}       xpath=//input[@id='txtCmarPriMiddleName']

${walkinpay_male}         xpath=//select[@id='txtSexCmar']//option[2]
${date_of_birth_month}      xpath=//select[@id='cenomarMonth']//option[2]
${date_of_birth_date}      xpath=//input[@id='cenomarDate']
${date_of_birth_year}      xpath=//input[@id='cenomarYear']
${walkinpay_province}      xpath=//select[@id='cenomarProvince']//option[2]
${walkinpay_city}          xpath=//select[@id='cenomarCity']//option[2]
#${walkinpay_father_lastname}      xpath=//input[@id='txtCmarSecLastName']
#${walkinpay_father_firstname}      xpath=//input[@id='txtCmarSecFirstName']
#${walkinpay_father_middlename}      xpath=//input[@id='txtCmarSecMiddleName']
${cenomar_mother_lastname}      xpath=//input[@id='txtCmarAuxLastName']
${cenomar_mother_firstname}     xpath=//input[@id='txtCmarAuxFirstName']
${cenomar_mother_middlename}    xpath=//input[@id='txtCmarAuxMiddleName']
${walkinpay_purpose_of_request}    xpath=//select[@id='cenomarRequestPurpose']//option[2]
${walkinpay_save}        xpath=//*[@id="cenomarFormDetails"]/div/div[17]/div/button[1]
${walkinpay_requester_lastname}      Xpath=//input[@id='txtReqLastName']
${walkinpay_requester_firstname}     xpath=//input[@id='txtReqFirstName']

${walkinpay_req_address1}     xpath=//input[@id='txtAddress']
${walkinpay_req_address2}     xpath=//input[@id='streetAddress']
${walkinpay_total_amount_due}     xpath=//span[@id='TotalAmt']
${walkinpay_amount_tendered}      xpath=//input[@id='txtAmountTendered']
${walkinpay_print_or}      xpath=//button[@id='finalSubmitbtn']
${cenomar_certi}  xpath=//button[@id='idCenomar']


###########Walking Request Entry -VO CENOMAR###########33
${walkingvo_cenomar_option}  xpath=//*[@id="WalkInTransactiontype"]/option[13]
${walkingdoc_cenomar}  xpath=//*[@id="WalkInTransactiontype"]/option[18]
${mob}  xpath=//input[@id='txtMobile']
${webaccess_yes}  xpath=//*[@id="btnRightCallBack"]
${weaccess_ok}  xpath=//*[@id="btnSuccessOK"]
#################Docprint CENOMAR################33333
${docprint_cenomar_option}  xpath=//option[text()='Choose Transaction Type']/following::option[17]
${doc_trans}  xpath=//input[@id='txtTransactionNo']
${doc_num_copy}  xpath=//fieldset[@id='cenomarFormDetails']//input[@id='noOfCopies']
${doc_save}  xpath=//*[@id="cenomarFormDetails"]/div/div[17]/div/button[1]

############## CI-Marriage- Request entry#######################
${request_entry}  xpath=//a[text()='Request Entry']
${validate}  xpath=//button[@id='validate']
${no}  xpath=//*[@id="confirmPopupCallBack"]/div/div/div[2]/div[2]/button[2]
${skip}  xpath=//button[@id='Skip']
${enter_qtn}  xpath=//input[@id='queueTicketNo']
${type_marriage}  xpath=//*[@id="cmbCertificateType"]/option[4]
${no_of_copy}  xpath=//input[@id='txtNoOfCopies']
${next}  xpath=//button[@id='proceed']
${hus_lastname2}  xpath=//input[@id='txtPriLastName']
${hus_firstname2}  xpath=//input[@id='txtPriFirstName']
${hus_middlename2}  xpath=//input[@id='txtPriMiddleName']
${wife_lastname1}  xpath=//input[@id='txtSecLastName']
${wife_firstname1}  xpath=//input[@id='txtSecFirstName']
${wife_middlename1}  xpath=//input[@id='txtSecMiddleName']
${date_marriage}  xpath=//input[@id='dateofbirth']
${prov-ince_ma}  xpath=//select[@id='cmbProvince']
${city_ma}  xpath=//select[@id='cmbCity']
${purpose_request}  xpath=//select[@id='cmbRequestPurpose']
${cancel1}  xpath=//*[@id="divMain"]/div[9]/button[2]
${click_no}  xpath=//*[@id="confirmPopup"]/div/div/div[2]/div[2]/button[2]
${click_yes}  xpath=//*[@id="confirmPopup"]/div/div/div[2]/div[2]/button[1]
${submit_request}  xpath=//*[@id="divMain"]/div[9]/button[3]
${request_edit}  xpath=//a[@class='fa fa-pencil']
${request_view}  xpath=//i[@class='fa fa-eye']
${second_edit}  xpath=//i[@class='fa fa-pencil-square-o']
${add_request}  xpath=//button[@id='btnAddAnother']
${delete_second}  xpath=//button[@id='btnAddAnother']/preceding::i[1]
${delete_yes}  xpath=//div[@id='popUpConfirmText' and text()='Are you sure you want to delete this request?']/following::button[1]
${Click_next}  xpath=//button[@id='btnReqSummaryProceed']
${confirm_summary}  xpath=//*[@id="confirmsection"]/button
${confirm_no}  xpath=//*[@id="confirm"]/div/div/div[2]/div[3]/button[2]
#${confirm_yes}  xpath=//*[@id="confirm"]/div/div/div[2]/div[3]/button[1]
${second_confirm}  xpath=//button[@id='btnBirthRequestConfirm']
${summary_next}  xpath=//button[@id='btnReqSummaryProceed']
${reque_last}  xpath=//input[@id='txtReqLastName']
${reque_first}  xpath=//input[@id='txtReqFirstName']
${address}  xpath=//input[@id='txtAddress']
${reque_province}  xpath=//select[@id='cmbRequesterProvince']
${reque_city}  xpath=//select[@id='cmbRequesterCity']
${confirm_request}  xpath=//button[@id='btnProceed']
${confirm_final}  xpath=//*[@id="confirmsection"]/button
${confirm_yes2}  xpath=//div[@id='popUpConfirmText' and text()='Are you sure you want to confirm?']/following::button[1]
${confirm_yes3}   //button[@id='Yesbutton']
${take_trans}  xpath=//*[@id="spnFormattedTransactionNo"]
${payment}  xpath=//*[@id="proceedToPaymentBtn"]

################# VO_CENOMAR_request entry###################
${type_vo_cenomar}  xpath=//*[@id="cmbCertificateType"]/option[13]
${cenomar_sex}  xpath=//span[text()='Female']
${dateof_birth}  xpath=//input[@id='dateofbirth']
${motherlastname}  xpath=//input[@id='txtAuxLastName']
${motherfirstname}  xpath=//input[@id='txtAuxFirstName']
${mothermiddlename}  xpath=//input[@id='txtAuxMiddleName']
${cenomar_submit}  xpath=//button[@data-bind='click: function(data, event) { window.EncodingUIContext.SubmitClick(data) }' and text()='Submit']
${cenomar_cancel}  xpath=//button[@data-bind='click: function(data, event) { window.EncodingUIContext.onCancel() }']
${cenomar_no}  xpath=//span[@id='btnLeft' and text()=' No']
${cenomar_yes}  xpath=//span[@id='btnRight' and text()=' Yes']
${ceno_motherlast}  xpath=//input[@id='txtAuxLastName']
${ceno_motherfirst}  xpath=//input[@id='txtAuxFirstName']
${ceno_mothermiddle}  xpath=//input[@id='txtAuxMiddleName']
${ceno_yes}  xpath=//button[@id='Yesbutton']
${confirm_ok}  xpath=//button[@id='btnSuccessOK']
${birthconfirm}  xpath=//button[@id='btnBirthRequestConfirm']
###########Advisory ##############3
${add_selection}  xpath=//a[@id='anchor']
${add_selectsecond}  xpath=//button[@id='ViewSelectionList']/following::a[5]
${click_addselection}  xpath=//button[@id='ViewSelectionList']
${advisory}  xpath=//button[@id='Advisory_Btn_For_Cenos']
################### QTN Generation####################
${select_qms}  xpath=//*[@id="108"]
#${select_qtn}  xpath=/html/body/div[1]/div/div/div[2]/div[2]/a/h5
${select_qtn}  xpath=//a[@id='108']/following::a[6]
${select_regular}  xpath=//*[@id="queueDiv"]/div[2]/div/button
${qms_home}  xpath=//*[@id="menuDiv"]/li[5]/ul/li[12]/ul/li[1]/a
${select_encodepayment}  xpath=//*[@id="EncodingandpaymentBlock"]/div/button
${qtn_nu}  xpath=//*[@id="popUpQTNText"]/b/span

###############RSO +ve certificate ################
${enter_mren}  xpath=//input[@id='MReN']
${enter_dren}  xpath=//input[@id='DrenField']

${ViewImage}   //th[@class='sorting_disabled' and text()='Action']/following::i[1]
${viewimage1}  //th[@class='sorting_disabled' and text()='Action']/following::i[4]
${Issue}    //button[@id='print']
${Icont}    //button[@id='IssueCertificateContinueBtn' and text()='Continue']
${Iyes}     //button[@id='Yesbutton']
${Iok}  //button[@id='AlertButton']

#################### Authentication Marriage ############################

${ReEntryMenu}  //a[@id='101']/following::a[2]
${QTN}  //input[@id='queueTicketNo']
${Skip}  //button[@id='Skip']
${Validate}  //button[@id='validate']
${ReqStart}     //button[@id='proceed']
${PriLn}    //input[@id="txtPriLastName"]
${Prifn}    //input[@id="txtPriFirstName"]
${Secln}    //input[@id="txtSecLastName"]
${Secfn}    //input[@id="txtSecFirstName"]
${Auxln}    //input[@id="txtAuxLastName"]
${Auxfn}    //input[@id="txtAuxFirstName"]
${Rsex}     //span[text()='Female']
${Eventdate}    //input[@id="dateofbirth"]
${Deventdate}   //input[@id="dateofDeath"]
${ReqSub}      //button[@class='btn btn-primary' and text()='Submit']
${ReqCEdit}  //span[@id='editPreview']
${ReqCConfrm}   id:btnBirthRequestConfirm
${ReqLview}     //i[@class='fa fa-eye']
${ReqEdit}  //i[@class='fa fa-pencil-square-o']
${Addanothereq}     //button[@id='btnAddAnother']
${Dltsecrecord}     //button[@id='btnAddAnother']/preceding::i[1]
${DltConfirm}   //div[@id='popUpConfirmText' and text()='Are you sure you want to delete this request?']/following::button[1]
${cancel1}  //button[@class='btn btn-primary' and text()='Submit']/preceding::button[1]
${click_no}  xpath=//*[@id="confirmPopup"]/div/div/div[2]/div[2]/button[2]
${click_yes}  xpath=//*[@id="confirmPopup"]/div/div/div[2]/div[2]/button[1]
${recall}   //button[@id='btnRecall']
${recallconf}   //div[@id='popUpDetails' and text()='The existing entered details (if any) will be lost. Do you want to recall the details of last transaction?']/following::button[1]

########################## Rejection ############################
${click_rejection}  xpath=//button[@data-bind='click:onClickRejectButton,visible:RejectCTC' and  text()='Reject']
${check1}  xpath=//input[@class='checkradiobox' and @value='RSN1']
${check2}  xpath=//input[@class='checkradiobox' and @value='RSN2']
${reject_button}  xpath=//button[@data-bind='click:RejectedbuttonClick1']

##################### VO Birth -Request entry ##############################
${type_vo_birth}  xpath=//*[@id="cmbCertificateType"]/option[10]
${type_doc_birth}  xpath=//*[@id="cmbCertificateType"]/option[15]
${enter_vo_trans}  xpath=//input[@id='txtTransactionNo']

################## Deferred Payment ###############################
${Accounting}  xpath=//a[@id='211']
${billdeff}  xpath=//a[text()='Bill Deferred Payment Clients']
${Cust}  xpath=//select[@id='CustomerName']
${Geninvoice}  xpath=//button[@id='GenerateInvoice' and text()='Generate Invoice']
${Defyes}  xpath=//button[@id='Yesbutton']
${Defsuc}  xpath=//button[@id='btnSuccessOK']
${viewinvoice}  xpath=//button[@id='GenerateInvoice' and text()='View Invoice']
${approproof}  xpath=//a[text()='View Submitted Proof of Payment']
${datafrom}  xpath=//input[@id='dateRangeFrom']
${datato}  xpath=//input[@id='dateRangeTo']
${searchproof}  xpath=//button[@id='viewSubmittedProofSerach']
${defeapprove}  xpath=//table[@id='tblViewSubmittedProofSearchResult']//i[@data-bind='visible: shouldShowAction, click:$root.ApproveClicked']
${deapproveok}  xpath=//button[@id='Yesbutton']
${desuccessok}  xpath=//a[@id='ViewReportCustomSuccessOkBtn']
${deapprove}  xpath=//button[@id='approve']

############## Index Correction ##########################
${perform_indexcorrection}  xpath=//button[@id='indexcorrectionbtn']
${e_motherlast}  xpath=//input[@data-bind='value:BMLastName']
${edit_motherlast}  xpath=//div[@id='divIndexEditDetailsDeath']//input[@data-bind='value:MLastName']
${editmarriagemotherlast}  xpath=//div[@id='divIndexEditDetailsMarriage']//input[@data-bind='value:BMLastName']
${submitindex}  xpath=//button[@id='submitindex']
${yesindex}  xpath=//button[@id='Yesbutton']
${succindex}  xpath=//button[@id='AlertButton']
${selectindex}  xpath=//a[@id='106']
${approveindex}  xpath=//a[text()='Approve / Disapprove Index Correction']
${imagesearch}  xpath=//div[@id='IcxnTable_filter']//input[@type='search']
${clickimage}  xpath=//*[@id="anchor"]
${indexapprove}  xpath=//button[@id='Approve']
${index_back}  xpath=//button[text()='Back']

############ Premium annotation Birth #####################
${selectpa_birth}  xpath=//*[@id="cmbCertificateType"]/option[20]
${documentra}  xpath=//select[@id='documentSubType']
${ra_submit}  xpath=//button[@id='AnnotationWizardSubmitBtn']
${checkpa1}  xpath=//input[@id='Que_1']
${checkpa2}  xpath=//input[@id='Que_4']
${checkpa3}  xpath=//input[@id='Que_7']
${checkpa4}  xpath=//input[@id='Que_10']
${checkpa5}  xpath=//input[@id='Que_13']
${checkpa6}  xpath=//input[@id='Additional_15']
${subnext}  xpath=//button[@id='WizardSearchNextBtn']
${addmore}  xpath=//button[@id='moreAnnotationsBtn']
${moreyes}  xpath=//button[@id='Yesbutton']
${nextsub}  xpath=//a[@id='wizardSummaryNextBtn']
${confirmsu}  xpath=//button[@id='WizardSearchPreviewConfirmBtn']

${checkpa7}  xpath=//input[@id='Que_6']
${checkpa8}  xpath=//input[@id='Que_9']
${checkpa9}  xpath=//input[@id='Que_11']
${chekcl13}  xpath=//input[@id='Que_13']

${checkli14}  xpath=//input[@id='Que_3']
${checkli15}  xpath=//input[@id='Que_5']

${PriLn}    //input[@id="txtPriLastName"]
${Prifn}    //input[@id="txtPriFirstName"]
${Secln}    //input[@id="txtSecLastName"]
${Secfn}    //input[@id="txtSecFirstName"]
${Auxln}    //input[@id="txtAuxLastName"]
${Auxfn}    //input[@id="txtAuxFirstName"]
${Rsex}     //span[text()='Female']
${Eventdate}    //input[@id="dateofbirth"]
${Deventdate}   //input[@id="dateofDeath"]
${ReqSub}      //button[@class='btn btn-primary' and text()='Submit']
${ReqCEdit}  //span[@id='editPreview']
${ReqCConfrm}   id:btnBirthRequestConfirm
${ReqLview}     //i[@class='fa fa-eye']
${ReqEdit}  //i[@class='fa fa-pencil-square-o']
${Addanothereq}     //button[@id='btnAddAnother']
${Dltsecrecord}     //button[@id='btnAddAnother']/preceding::i[1]
${DltConfirm}   //div[@id='popUpConfirmText' and text()='Are you sure you want to delete this request?']/following::button[1]
${cancel1}  //button[@class='btn btn-primary' and text()='Submit']/preceding::button[1]
${click_no}  xpath=//*[@id="confirmPopup"]/div/div/div[2]/div[2]/button[2]
${click_yes}  xpath=//*[@id="confirmPopup"]/div/div/div[2]/div[2]/button[1]

        ##################### EE Ceation #################################3
${Encodeendorsed}   //a[text()='Encode Endorsed CRD']
${EndorsedRegprov}  //select[@id='RegProvince']
${Endorsedregcity}      //select[@id='RegCity']
${Regstatus}    //select[@id='RegCity']/following::select[1]
${Endorsedregdate}  //input[@id='RegistrationDate']
${EndorsedRegbook}  //input[@id='RegistrationDate']/following::select[1]
${EndorsedDocsub}   //input[@id='RegistrationDate']/following::select[2]
${EndorsedReg}      //input[@id='registryNumber']
${Chilfdname}    //input[@id='registryNumber']/following::input[1]
${chilmdname}  //input[@id='registryNumber']/following::input[2]
${ChildLname}   //input[@id='registryNumber']/following::input[3]
${EchildSex}     //input[@id='registryNumber']/following::select[1]
${EncodeDD}      //input[@id='registryNumber']/following::input[4]
${EncodeDM}     //input[@id='registryNumber']/following::SELECT[2]
${EncodeDY}      //input[@id='registryNumber']/following::input[5]
${EncodeBprov}   //select[@id='EEProvinceBirth']
${encodeDeathpro}  xpath=//select[@id='EEProvinceDeath']
${EncodeDcity}   //select[@id='EECityBirth']
${encodedeathcity}  xpath=//select[@id='EECityDeath']
${EncodeMotherFname}         //select[@id='EECityBirth']/following::input[1]
${encodemothermname}  //select[@id='EECityBirth']/following::input[2]
${EncodeMotherLname}     //select[@id='EECityBirth']/following::input[3]
${encodeffirstname}  //span[@data-bind="text:ChildFatherFirstName"]/following::input[1]
${encodefmiddlename}  //span[@data-bind="text:ChildFatherMiddleName"]/following::input[1]
${encodeflastname}  //span[@data-bind="text:ChildFatherLastName"]/following::input[1]
${EncodeSub}    submitrecord
${EncodeOk}     //button[@id='AlertButton']
${EncodeEnd}     //a[@id='133' and text()='Electronic Endorsement']
${EndorsedcreateEE}      //a[text()='Create EE Request']
${RegBookEE}        //a[@id='aMenu1' and text()='VEI Search']/following::select[1]
${RegnoEE}      //input[@id='EERegistryNumber']
${RegcounEE}        //input[@id='EERegistryNumber']/following::Select[1]
${RegcityEE}        //input[@id='EERegistryNumber']/following::Select[2]
${RegProvEE}        //input[@id='EERegistryNumber']/following::Select[3]
${EEsearch}     //input[@id='EERegistryNumber']/following::button[1]
${Rep_soyes}            //button[@id='Yesbutton']
${Supervisor_Override}  xpath=//a[text()='Supervisor Override']
${SO_OK}          //button[@id='SupOvrapproveButton']
${SO_Approve1}      //button[@id='1' and text()='Approve']

########## EE creation for death ##############
${eedeathfirst}  xapth=//span[@data-bind='text:DeceasedFirstName']/following::input[1]
${eedeathfirst1}  xpath=//*[@id="DeathView"]/div/section[1]/div/div[1]/div/input
${eedeathmiddle}  xpath=//span[@data-bind='text:DeceasedMiddleName']/following::input[1]
${eedeathlast}  xpath=//span[@data-bind='text:DeceasedLastName']/following::input[1]
${eedeathsex}  xpath=//span[@data-bind='text:DeceasedsexDesc']/following::option[3]
${eedeathday}  xpath=//span[@data-bind='text:deathDay']/following::input[1]
${eedeathmonth}  xpath=//span[@data-bind='text:deathMonthDesc']/following::option[3]
${eedeathyear}  xpath=//span[@data-bind='text:deathYear']/following::input[1]
${eebirthday}  xpath=//span[@data-bind='text:DeceasedbirthDay']/following::input[1]
${eebirthmonth}  xpath=//span[@data-bind='text:DeceasedbirthMonthDesc']/following::option[2]
${eebirthyear}  xpath=//span[@data-bind='text:DeceasedbirthYear']/following::input[1]
${eedeathprovince}  xpath=//select[@id='EEProvinceDeath']
${eedeathcity}  xpath=//select[@id='EECityDeath']
${eedeathmotherfirst}  xpath=//span[@data-bind="text:DeceasedMotherFirstName"]/following::input[1]
${eedeathmothermiddle}  xpath=//span[@data-bind="text:DeceasedMotherMiddleName"]/following::input[1]
${eedeathmotherlast}  xpath=//span[@data-bind="text:DeceasedMotherLastName"]/following::input[1]
${eedeathfatherfirst}  xpath=//span[@data-bind="text:DeceasedFatherFirstName"]/following::input[1]
${eedeathfathermiddle}  xpath=//span[@data-bind="text:DeceasedFatherMiddleName"]/following::input[1]
${eedeathfatherlast}  xpath=//span[@data-bind="text:DeceasedFatherLastName"]/following::input[1]
${eedeathsubmit}  xpath=//button[@id='submitrecordD']

################ EE for Marriage #######################3
${huseefirstname}  xpath=//span[@data-bind='text:groomFirstName']/following::input[1]
${huseemiddle}  xpath=//span[@data-bind='text:groomMiddleName']/following::input[1]
${huseelastname}  xpath=//span[@data-bind='text:groomLastName']/following::input[1]
${husmotherfirstnameee}  xpath=//span[@data-bind='text:groomMotherFirstName']/following::input[1]
${husmotherlastnameee}  xpath=//span[@data-bind='text:groomMotherLastName']/following::input[1]
${wifefirstnameee}  xpath=//span[@data-bind='text:brideFirstName']/following::input[1]
${wifelastnameee}  xpath=//span[@data-bind='text:brideLastName']/following::input[1]
${wifemotherfirstnameee}  xpath=//span[@data-bind='text:brideMotherFirstName']/following::input[1]
${wifemotherlastnameee}  xpath=//span[@data-bind='text:brideMotherLastName']/following::input[1]
${dateofmarriageee}  xpath=//input[@data-bind='value:marriageDay']
${monthofmarriageee}  xpath=//span[@data-bind='text:marriageMonthDesc']/following::option[5]
${yearofmarriageee}  xpath=//span[@data-bind='text:marriageYear']/following::input[1]
${eeplaceofmarriage}  xpath=//select[@id='EEProvinceMarriage']
${eecityofmarriage}  xpath=//select[@id='EECityMarriage']
${eemarriagesubmit}  xpath=//button[@id='submitrecordM']

########## Client Request - Death #################
${select_type1}  xpath=//*[@id="cmbCertificateType"]
${dren_value}  xpath=//input[@id='txtReN']
${death_submitrequest}  xpath=//div[@id='divMain']//button[@data-bind='click: function(data, event) { window.EncodingUIContext.SubmitClick(data) }']
${deathlastname}  xpath=//input[@id='txtPriLastName']
${deathfirstname1}  xpath=//input[@id='txtPriFirstName']
${deathsex1}  xpath=//span[text()='Female']
${dateofdeath1}  xpath=//input[@id='dateofDeath']

############ REview Linking/ Approvve Unlinking ##########
${select_reviewlink}  xpath=//a[text()='Review Linking']
${select_transaction}  xpath=//div[@id='divReviewLinking']//span[text()='Transaction Number']
${enter_transactionlink}  xpath=//input[@id='transactionNumber']
${search_reviewlink}  xpath=//button[@id='Search']
${select_approvelink}  xpath=//a[text()='Approve Unlinking']
${select_approtrans}  xpath=//div[@id='divApproveUnlinking']//span[text()='Transaction Number']
${click_perform}  xpath=//button[@id='CRDSearch']
${unlink_approve}  xpath=//button[@id='Approve']
${unlink_alert}  xpath=//button[@id='AlertButton']
${linkcrd_submission}  xpath=//button[@id='CRDSearch']


###################### VEI RA9048 batch ###############3333
${cdlisubmission}  xpath=//a[text()='Encode LCR CDLI Submission']
${sucdliprovince}  xpath=//select[@id='LCRProvince']
${cdlideathcity}  xpath=//select[@id='LCRCity']
${cdlimuni}  xpath=//select[@id='LCRCity']/option[16]
${cdlibooktype}  xpath=//select[@id='ddlRegBookType']/option[4]
${cdlidocutype}  xpath=//select[@id='ddlDocType']/option[2]
${cdlidocusubtype}  xpath=//select[@id='ddlDocSubType']/option[3]
${cdlireginum}  xpath=//input[@id='txtRegistryStart']
${cdlidatereceived}  xpath=//input[@id='dtReceived']
${cdlinext}  xpath=//button[@id='btnSave']
${cdliok}  xpath=//button[@id='btnOK']
${cdli_confirmno}  xpath=//p[@id='modaltxt' and text()='Add another submission record?']/following::a[1]
${cdlibatch}  xpath=//a[text()='Create CDLI Batch']
${cdli_submit}       xpath=//button[@class='btn btn-primary' and @data-bind='click: AddSearchCDLIData']
${cdlidocu_sub_type1}  xpath=//div[@id='isCDLI']//select[@id='ddlDocSubType']/option[3]
${cdlipetirelation}  xpath=//div[@id='LIFormDetailsDiv']//span[@data-bind="text:relationshipDesc"]/following::option[2]
${firstcheck}  xpath=//input[@class='checkradioboxadminreasoncnf' and @value='1']
${petitionprovince}  xpath=//div[@id='LIFormDetailsDiv']//select[@id="MothersResidenceProvince"]/option[2]
${petitioncity}  xpath=//div[@id='LIFormDetailsDiv']//select[@id="MothersResidenceCity"]/option[5]
${petiregimonth}  xpath=//div[@id='LIFormDetailsDiv']//span[@data-bind="text:petitionRegMonthDesc"]/following::option[4]
${petiregidate}  xpath=//div[@id='LIFormDetailsDiv']//span[@data-bind="text:petitionRegDay"]/following::input[1]
${petiregiyear}  xpath=//div[@id='LIFormDetailsDiv']//span[@data-bind="text:petitionRegYear"]/following::input[1]
${reginuatbirth}  xpath=//input[@id='RegistryNoBirth']
${cdlifirstname}  xpath=//span[@data-bind='text:childFirstName']/following::input[1]
${cdlimiddlename}  xpath=//span[@data-bind='text:childMiddleName']/following::input[1]
${cdlilastname}  xpath=//span[@data-bind='text:childLastName']/following::input[1]
${cdlibirthday}  xpath=//span[@data-bind='text:birthDay']/following::input[1]
${cdlibirthmonth}  xpath=//span[@data-bind='text:birthMonthDesc']/following::option[2]
${cdlibirthyear}  xpath=//span[@data-bind='text:birthYear']/following::input[1]
${cdligender}  xpath=//span[@data-bind='text:sexDesc']/following::option[3]
${cdlibirthprovince}  xpath=//select[@id='LIPlaceofBirthProvince']/option[2]
${cdlibirthcity}  xpath=//select[@id='LIPlaceofBirthCity']/option[5]
${cdlimotherfirstname}  xpath=//input[@data-bind='value:motherFirstName']
${cdlimothermiddlename}  xpath=//input[@data-bind='value:motherMiddleName']
${cdlimotherlastname}  xpath=//input[@data-bind='value:motherLastName']
${decisionapprove}  xpath=//div[@id='LIFormDetailsDiv']//span[@data-bind='text:PromulgationMonthDesc']/following::option[5]
${decisionday}  xpath=//div[@id='LIFormDetailsDiv']//input[@data-bind='value:PromulgationDay']
${decisionyear}  xpath=//div[@id='LIFormDetailsDiv']//span[@data-bind='text:PromulgationYear']/following::input[1]
${decisionprovince}  xpath=//div[@id='LIFormDetailsDiv']//span[@data-bind='text:PromulgationProvinceDesc']/following::option[2]
${decisioncity}  xpath=//select[@id='AdminBirthpromolCity']/option[5]
${cdliregimonth}  xpath=//div[@id='LIFormDetailsDiv']//span[@data-bind='text:regMonthDesc']/following::option[11]
${cdliregidate}  xpath=//div[@id='LIFormDetailsDiv']//input[@data-bind='value:registartionDay']
${cdliregiyear}  xpath=//div[@id='LIFormDetailsDiv']//span[@data-bind='text:regYear']/following::input[1]
${success_birth_ok}   xpath=//button[@id='btnSuccessOK']

####################### CDLI death court degree ###############33
${cdlibooktypedeath}  xpath=//select[@id='ddlRegBookType']/option[2]
${cdlidocutypedeath}  xpath=//select[@id='ddlDocType']/option[4]
${cdlidocusubtypedeath}  xpath=//select[@id='ddlDocSubType']/option[2]
${cdlideathnext}  xpath=//button[@id='btnSave']
${cdlidocu_sub_type2}  xpath=//div[@id='isCDLI']//select[@id='ddlDocSubType']/option[15]
${information_correction}  xpath=//input[@class='checkradioboxDeath' and @value='1']
${petitioner_relation}  xpath=//div[@id='CDDeath']//span[@data-bind='text:PetitionerRelationshipDesc']/following::option[2]
${petitioner_reason}  xpath=//input[@id='chkDeath1']
${petition_regi}  xpath=//select[@id='MothersResidenceProvince']/option[2]
${petition_regi_city}  xpath=//select[@id='MothersResidenceCity']/option[2]
${petition_month}  xpath=//span[@data-bind='text:petitionRegMonthDesc']/following::option[3]
${petition_day}  xpath=//input[@data-bind='value:petitionRegDay']
${petition_year}  xpath=//span[@data-bind='text:petitionRegYear']/following::input[1]
${reginumber}  xpath=//span[@data-bind='text:registryNoAtDeath']/following::input[1]
${childfirstname1}  xpath=//input[@data-bind='value:deceasedFirstName']
${childmiddlename1}  xpath=//input[@data-bind='value:deceasedMiddleName']
${childlastname1}  xpath=//input[@data-bind='value:deceasedLastName']
${deathprovince1}  xpath=//select[@id='PlaceOfDeathCDProvince']/option[2]
${deathcity2}  xpath=//select[@id='PlaceOfDeathCDCity']/option[4]
${dateday1}  xpath=//input[@data-bind='value:deathDay']
${deathmonth1}  xpath=//span[@data-bind='text:deathMonthDesc']/following::option[2]
${deathyear1}  xpath=//span[@data-bind='text:deathYear']/following::input[1]
${motherfirst}  xpath=//input[@data-bind='value:MotherFirstName']
${mothermiddle}  xpath=//input[@data-bind='value:MotherMiddleName']
${motherlast}  xpath=//input[@data-bind='value:MotherLastName']
${relation_withdeath}  xpath=//span[@data-bind='text:InformantRelationshipDesc']/following::option[2]
${month_pomulgation}  xpath=//div[@id='CDDeathFormDetailsDiv']//span[@data-bind='text:PromulgationMonthDesc']/following::option[4]
${day_pomulgation}  xpath=//div[@id='CDDeathFormDetailsDiv']//input[@data-bind='value:PromulgationDay']
${year_pomulgation}  xpath=//div[@id='CDDeathFormDetailsDiv']//span[@data-bind='text:PromulgationYear']/following::input[1]
${pomulgation_province}  xpath=//select[@id='CDDeathpromolProvince']/option[2]
${pomukgation_city}  xpath=//select[@id='CDDeathpromolCity']/option[4]
${regiday2}  xpath=//div[@id='CDDeathFormDetailsDiv']//input[@data-bind='value:registartionDay']
${regi_month2}  xpath=//div[@id='CDDeathFormDetailsDiv']//span[@data-bind='text:regMonthDesc']/following::option[12]
${regi_year2}  xpath=//div[@id='CDDeathFormDetailsDiv']//span[@data-bind='text:regYear']/following::input[1]
${deathcdli_submit}  xpath=//button[@id='generalBirthSubmit']

########## CDLI Supplement Death ########################################

${supplement_type}  xpath=//select[@id='ddlRegBookType']/option[3]
${su_documentsubtype}  xpath=//select[@id='ddlDocType']/option[9]
${li_registrynu}  xpath=//div[@id='LIparticular']//input[@data-bind='value:RegNumber']
${supplemental_report}  xpath=//*[@id="supplimentalid"]/div/select
${li_enter_regi}  xpath=//input[@id='registryNumber1']
${registry_number_satrt1}  xpath=//div[@id='LIparticular']//input[@id='txtRegistryStart']
${li_cdlidocu_sub_type2}  xpath=//div[@id='isCDLI']//select[@id='ddlDocSubType']/option[13]
${che_firstname}  xpath=//input[@class='checkradioboxDeath' and @value='1']
${certi_reginum}  xpath=//input[@id='RegistryNoDeath']
${dece_firstname}  xpath=//input[@data-bind='value:deceasedFirstName']
${dece_middlename}  xpath=//input[@data-bind='value:deceasedMiddleName']
${dece_lastname}  xpath=//input[@data-bind='value:deceasedLastName']
${dece_province}  xpath=//select[@id='LIPlaceofDeathProvince']/option[2]
${dece_city}  xpath=//select[@id='LIPlaceofDeathCity']/option[2]
${li_dateofdeath}  xpath=//input[@data-bind='value:deathDay']
${li_dateofmonth}  xpath=//span[@data-bind='text:deathMonthDesc']/following::option[4]
${li_deathyear}  xpath=//span[@data-bind='text:deathYear']/following::input[1]
${li_mother_firstname}  xpath=//input[@data-bind='value:MotherFirstName']
${li_mothermiddlename}  xpath=//input[@data-bind='value:MotherMiddleName']
${li_motherlastname}  xpath=//input[@data-bind='value:MotherLastName']
${informant_relation}  xpath=//span[@data-bind='text:InformantRelationshipDesc']/following::option[2]
${li_registration}  xpath=//div[@id='LIDeathFormDetailsDiv']//input[@data-bind='value:registartionDay']
${li_registrationmonth}  xpath=//div[@id='LIDeathFormDetailsDiv']//span[@data-bind='text:regMonthDesc']/following::option[12]
${li_registrationyear}  xpath=//div[@id='LIDeathFormDetailsDiv']//span[@data-bind='text:regYear']/following::input[1]
${li_submit}  xpath=//button[@id='generalBirthSubmit']

########## Transmitted to central office #################3
${select_transmittedcentral_office}  xpath=//a[@id='TransmitCRDsSearch']
${select_liprovince}  xpath=//select[@id='SearchCrdProvince']
${enter_year}  xpath=//input[@id='txtCrdSearchRegYear']
${select_month1}  xpath=//select[@id='SearchddlMonth']/option[11]
${search_cenr_button}  xpath=//button[@id='btnSearchCRD']
${search_intransmit}  xpath=//div[@id='transmitCRDSearchTable_filter']//input[@class='form-control input-sm']
${select_checkbox1}  xpath=//table[@id='transmitCRDSearchTable']//span[@class='text']
${li_ok}  xpath=//button[@id='btnTransmittalOK']
${transmit_to_central}  xpath=//button[@id='btnTransmit']
${print_transmit}  xpath=//div[@id='confirmationId']//button[@class='btn btn-primary']
${print_trans_print}  xpath=//button[@id='btnPrintTransmittal']

#########################  Serbilis site #########################
${serbilis_open}  xpath=//ul[@id='MenuBar']//a[@href='/Account/Login']
${username}  xpath=//input[@id='txtlogin']
${password}  xpath=//input[@id='txtPassword']
${login}  xapth=//input[@value='Login']
${deferred_payment}  xpath=//a[@href='/Census/DeferredPaymentScreen']
${select_deferred}  xpath=//input[@id='checkSingle']/following::span[1]
${continue_deferred}  xpath=//button[@id='DeferredContinueBtn']
${select_bank}  xpath=//select[@id='deferredBankFld']/option[2]
${accountnu}  xpath=//input[@data-bind='value:selectedAccount']
${enteramountde}  xpath=//input[@id='deferredAmountPaidFld']
${de_date}  xpath=//input[@id='deferredDatePaidFld']
${deferred_continue}  xpath=//button[@id='DeferredContinueBtn']
${deferred_submit}  xpath= //button[@id='DeferredSubmitBtn']
${deferred_ok}  xpath=//button[@id='AlertButton']



#########Shabana#####################
#Locators for Request Entry
${URl}      http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tU1NIQUJBTkEtMQ==#!
${Browser}      Chrome
${Open_Counter}        xpath://*[@id="navbar"]/aside[2]/ul/li/label/span
${Ok_Button}        id=AlertButton
${Home_B}           id=dashboard
${Client_Certificate_Menu}      id=101
${Request Entry}        xpath://a[text()='Request Entry']
${QTN}      id=queueTicketNo
${Validate}     id=validate
${Skip}     id=Skip
${TransactionType}      id=cmbCertificateType
${NoOfCopies}       id=txtNoOfCopies
${Next_B}       id=proceed
${C_FName}      id=txtPriLastName
${C_LName}      id=txtPriFirstName
${Sexau}      xpath://Span[text()='Male']
${DOB}      id=dateofbirth
${Country}      id=cmbChildCountry
${Province}
${City}
${M_LName}      id=txtAuxLastName
${M_FName}      id=txtAuxFirstName
${PurposeOfReq}     id=cmbRequestPurpose
${Scroll_D}         window.scrollTo(0,2500)
${Submit}       xpath://button[text()='Cancel']/following::button
${Confirm}      id=btnBirthRequestConfirm
${Nextau}      id=btnReqSummaryProceed
${R_LName}      id=txtReqLastName
${R_FName}      id=txtReqFirstName
${Address1}     id=txtAddress
${Address2}     id=streetAddress
${R_Province}       id=cmbRequesterProvince
${R_City}       id=cmbRequesterCity
${R_Confirm}        id=btnProceed
${S_Confrim}        xpath://button[@class='btn btn-primary' and text()='Confirm']
${Con_Pop_Yes}      xpath://button[@class='btn btn-primary' and text()='Yes']
#Walk-in-Request
${WalkInReq}        xpath://a[text()='Walk-in Request Entry']
${TransactionType_WIR}   id=WalkInTransactiontype
${NoOfCopies_WIR}      xpath://input[@id='txtReN']/preceding::input[1]
${B_LName_WIR}      id=txtBirthPriLastName
${B_FName_WIR}      id=txtBirthPriFirstName
${Sex_WIR}        id=txtBirthSex
${DOB_M}        id=birthMonth
${DOB_D}        id=birthDate
${DOB_Y}         id=birthYear
${County_WIR}    id=birthCountry
${Province_WIR}   id=birthProvince
${City_WIR}       id=birthCity
${M_LName_WIR}     id=txtBirthAuxLastName
${M_FName_WIR}      id=txtBirthAuxFirstName
${PurposeOfReq_WIR}   id=cmbRequestPurpose
${P_Country_WIR}     id=cmbCountryPupose
${OtherPurpose_WIR}    id=txtOtherPurpose
${Clear}     xpath://input[@id='txtComments']/following::button[4]
${Save}      xpath://input[@id='txtComments']/following::button[3]
#Walk-in-Request and Payment (CENOMAR)
${WalkInReq&Payment}   xpath://a[text()='Walk-in Request Entry and Payment']
${NoOfCopies_Cmar}      xpath://input[@id='txtCenomarReN']/preceding::input[1]
${C_LName_Cmar}        id=txtCmarPriLastName
${C_FName_Cmar}      id=txtCmarPriFirstName
${Sex_Cmar}     id=txtSexCmar
${Month_Cmar}       id=cenomarMonth
${Date_Cmar}        id=cenomarDate
${Year_Cmar}        id=cenomarYear
${Country_Cmar}     id=cenomarCountry
${Province_Cmar}    id=cenomarProvince
${City_Cmar}        id=cenomarCity
${M_LName_Cmar}     id=txtCmarAuxLastName
${M_FName_Cmar}     id=txtCmarAuxFirstName
${PurposeOfReq_Cmar}    id=cenomarRequestPurpose
${Save_Cmar}        xpath://input[@id='txtCenomarComment']/following::button[1]
&{Recall_Cmar}      id=btnCmarRecall
${R_LName}      id=txtReqLastName
${R_FName}      id=txtReqFirstName
${Address1}     id=txtAddress
${Address2}     id=streetAddress
${R_Province_Cmar}      id=cmbProvince
${R_City_Cmar}          xpath://select[@id='cmbProvince']/following::select[1]
${paphone}  xpath=//input[@id='txtMobile']
${AmountTender}     id=txtAmountTendered
${PrintOR2}          id=finalSubmitbtn
${Get_Reference}        xpath://th[text()='Estimated Time of Release']/following::span[2]
${Close_PaySuccess}     xpath://h4[text()='Payment Successful']/preceding::button[1]
#To Change the User details
${more}         xpath://img[@class='navbar-more']
${Sys_Admin}        xpath://a[text()='System Administration']
${User_Detail}      xpath://a[text()='User Detail Information']
${Search}       xpath://input[@type='search']
${Edit}         xpath://a[@id='delete']/preceding::a[1]
${Outlet}       id=txtOutletId
${Save_User}        id=btnUserConfirm
#Processing flow
${Process}        id=103
${ProcessingQueue}      xpath://a[text()='Processing Queue']
${Search_Process}       xpath://input[@type='search']
${Trans_link}           xpath://th[text()='Action']/following::span[1]
${P_LastName}       id=lastName
${P_FirstName}      id=firstName
${P_MLName}     id=MotherLastName
${P_MFName}     id=MotherFirstName
${P_Submit}     id=btnCRDQuery
${eye_icon}     xpath://td[text()='ACTIVE']/following::i[1]
${btnSuccessOK}  id=btnSuccessOK
${VEI_Search}   id=idBacktoVei
${Generate_Negative}    id=idCenomar
${CEYesButton}      id=CEYesButton
${Gen_Negative_Cer}     id=idGenNegCert

#Locators for DocPrint
${TransactionNo}        id=txtTransactionNo
#Locators for Release
${more}         xpath://img[@class='navbar-more']
${Cer_Release}      xpath://a[text()='Certificate Releasing']
${Release_Cer}      xpath://a[text()='Release Certificate']
${Rel_TranactionNo}     id=TransNum
${Search_Rel}           id=validsearch
${Checkbox}         xpath://th[text()='Requester']/following::input[1]
${Print}            id=print
${ValidID}      id=ddlclaimentreason
${Proceed}      id=proceed
${Printer}      id=printers
${FinalPrint}   id=FinalPrintButton
${Continue}     id=continue
${Secpa}        id=secpa_0
${Secpa1}       id=secpa_1
${Save_Continue}        id=saveContinue
${OK_Sucess_rel}       xpath://button[@id='ok']/following::button[2]
#Premium Annotation- Death Locators
${DocSubtype}           id=documentSubType
${1_PA_ChangeOfName_Checkbox}       xpath://input[@name='Court Decision' and @class='WizardSelectAll']
${2_PA_ChangeOfName_Checkbox}       xpath://input[@name='Certificate of Finality' and @class='WizardSelectAll']
${3_PA_ChangeOfName_Checkbox}       xpath://input[@name='Certificate of Registration of Court Decision/Order' and @class='WizardSelectAll']
${4_PA_ChangeOfName_Checkbox}       xpath://input[@name='Certificate of Authenticity of the Court Decision/Order ' and @class='WizardSelectAll']
${5_PA_ChangeOfName_Checkbox}       xpath://input[@class='WizardSelectAll' and @name='Annotated Certificate of Death/Report of Death (if ROD, optional)']
${6_PA_ChangeOfName_Checkbox}       xpath://input[@class='WizardSelectAll' and @name='Certificate of Death/Report of Death (Un-annotated-mandatory)']
${Wizard_Done}        id=WizardDonebtn
${Wizard_Submit}      id=WizardSubmitbtn
${D_LName}      id=txtDeathPriLastName
${D_FName}      id=txtDeathPriFirstName
${PA_D_Sex}     id=txtDeathSex
${PA_D_Month}   id=deathMonth
${PA_D_Date}    id=deathDate
${PA_D_Year}    id=deathYear
${PA_D_Province}    id=deathProvince
${PA_D_City}    id=deathCity
${PA_D_MLName}  id=txtDeathAuxLastName
${PA_D_MFName}  id=txtDeathAuxFirstName
${PA_D_PurposeOfReq}    id=cmbDeathRequestPurpose
${PA_D_PurposeCountry}      id=cmbDeathCountryPupose
${PA_D_Save}    xpath://input[@id='txtDeathComments']/following::button[3]
${PA_D_Print}       id=FinalPrint
${PA_GetReferenceNo}    xpath://th[text()='Converted?' and @aria-controls='WalkInTranDetails']/following::span[1]
${PA_Close_PaySuccess}  xpath://h4[text()='Success!']/preceding::button[1]
#Payment
${Cer_Req_Payment}      id=102
${RecievePayments}       xpath://a[text()='Receive Payments']
${Search_Trans}         id=ddlSelectFilter
${Number}       id=txtSeatch
${Submit_Payment}   id=btnSarchPayment
${Reference_link}       xpath://th[@aria-controls='Payment' and text()='Payment Status']/following::a[1]
${ValidID_Presented}    id=ddlValidIDPresented
${PrintOR_Payment}      id=PrintOR
#CRD Submission RCC Locators
${CRS_Submission_RCC}   xpath://a[text()='CRD Submission RCC']
${Create_Batch}         xpath://a[text()='Create Batch']
${BatchType}            id=BatchTypeName
${Unit/Dept}        id=UnitDepartmentName
${Date_Recieved}    id=DateReceived1
${Calendar_Month}   xpath://select[@class='ui-datepicker-month']
${Calendar_Year}    xpath://select[@class='ui-datepicker-year']
${Calendar_Date}    xpath://a[@class='ui-state-default ui-state-highlight' and text()=2]
${Operator}         xpath://input[@id='DateReceived1']/following::input[1]
${Submit_CRD}       xpath://button[text()='Submit']
${Alert_OK1}         id=AlertButton
${TransactionNo_CRD}    id=TransactionNo
${Save_CRD}         xpath://button[text()='Save']
#Encode Endorsed CRD Locators
${VEI}      id=141
${VEI_Home}     xpath://a[text()='VEI Home']
${Encode_Endorsed_CRD}      xpath://a[text()='Encode Endorsed CRD']
${RegProvince}      id=RegProvince
${RegCity}          id=RegCity
${RegStatus}        xpath://select[@id='RegCity']/following::select[1]
${RegDate}          id=RegistrationDate
${RegBooktype}      xpath://input[@id='RegistrationDate']/following::select[1]
${DocSubtype_EECRD}     xpath://input[@id='RegistrationDate']/following::select[2]
${RegistryNo}       id=registryNumber
${D_FName_EECRD}    xpath://input[@id='registryNumber' ]/following::input[32]
${D_LName_EECRD}    xpath://input[@id='registryNumber' ]/following::input[34]
${D_Sex_EECRD}      xpath://input[@id='registryNumber' ]/following::select[10]
${D_DOD_Date_EECRD}      xpath://input[@id='registryNumber' ]/following::input[35]
${D_DOD_Mon_EECRD}  xpath://input[@id='registryNumber' ]/following::select[11]
${D_DOD_Year_EECRD}     xpath://input[@id='registryNumber' ]/following::input[36]
${D_DOB_Date_EECRD}     xpath://input[@id='registryNumber' ]/following::input[37]
${D_DOB_Mon_EECRD}      xpath://input[@id='registryNumber' ]/following::select[12]
${D_DOB_Year_EECRD}     xpath://input[@id='registryNumber' ]/following::input[38]
${D_Province_EECRD}    id=EEProvinceDeath
${D_City_EECRD}        id=EECityDeath
${D_MLName_EECRD}      xpath://input[@id='registryNumber' ]/following::input[39]
${D_MFName_EECRD}       xpath://input[@id='registryNumber' ]/following::input[41]
${Submit_EECRD}     id=submitrecordD
#Premium Annotation-Death Process Locators
${Annotation_Processing}    id=131
${Process_Ann_Req}      xpath://a[text()='Process Annotation Request']
${TransactionNo_PA_Process}     id=transactionNumber
${Search_PA_Process}    id=searchTransactionNumber
${ImageID_PA_Process}   id=imageID
${Continue_PA_Process}  id=continueBtn
${Contintue_Original_PA_Process}    id=OriginalCRDContinueBtn
${RegistryBookType_PA_Process}      id=ddlRegistryBookType
${RegistryNo_PA_Process}    id=registryNumber
${Province_PA_Process}      id=ddlProvince
${City_PA_Process}      id=ddlCity
${VEIRecordSearchBtn_PA_Process}  id=VEIRecordSearchBtn
${VEIRecordContinueBtn_PA_Process}  id=VEIRecordContinueBtn
${AnnotationTemplate_PA_Process}    id=ddlannotationType
${txtAnnotationText_PA_Process}     id=txtAnnotationText
${Position_PA_Process}      id=ddlPosition
${Apply_PA_Process}     id=AnnotationPartialApplyBtn
${Continue_Annotation_PA_Process}   id=AnnotationPartialContinueBtn
${Submit_Topsheet_PA_Process}       id=TopSheetSubmitBtn
${Approve/Disapprove Ann_Req}       xpath://a[text()='Approve / Disapprove Annotation Request']
${Approve_PA_Process}       id=AnnotationApproveBtn
${Disapprove_PA_Process}    id=AnnotationDisapproveBtn
${Yes_PA_Process}       id=Yesbutton
${Print_PA_Process}     id=FinalPrint
#Regular Annotation (Marraige) Locators
${5_RA_ChangeOfName_Checkbox}      xpath://input[@class='WizardSelectAll' and @name='Annotated Certificate of Marriage']
${6_RA_ChangeOfName_Checkbox}      xpath://input[@class='WizardSelectAll' and @name='Certificate of Marriage (Un-annotated)']
${RA_M_HLName}      id=txtMrgPriLastName
${RA_M_HFName}      id=txtMrgPriFirstName
${RA_M_WLName}      id=txtMrgSecLastName
${RA_M_WFName}      id=txtMrgSecFirstName
${RA_M_Month}       id=mrgMonth
${RA_M_Date}        id=mrgDate
${RA_M_Year}        id=mrgYear
${RA_M_Province}    id=marriageProvince
${RA_M_City}        id=marriageCity
${RA_M_Purpose}     id=cmbMarriageRequestPurpose
${RA_M_OtherPurpose}    id=txtMarriageOtherPurpose
${RA_M_Save}        xpath://input[@id='txtmarriageComments']/following::button[3]
${RA_Success_Close}     xpath://h4[@id='PaymentSuccessHeader']/preceding::button[1]
${requestmobile}  xpath=//input[@id='txtMobile']
#ViewableOnline Locators
${No_popup}     xpath://button[@id='Yesbutton']/following::button[1]
${Cancel_Req}   xpath://button[@id='add_more']/following::button[2]
${Yes_Cancel_Pop}   id=btnRight
${No_Cancel_Pop}    xpath://span[@id='btnRight']/following::button[1]
${DOD_ReqEntry}     id=dateofDeath
${Add_CRD}      xpath://button[@id='add_more' and text()='Add CRD']
${ChooseImg}    id=file
${View_Icon}    xpath://i[@class='fa fa-eye']
${Edit_Icon}    xpath://i[@class='fa fa-pencil-square-o']
${Add_Req}      id=btnAddAnother
${Delete}       xpath://th[text()='Actions']/following::i[3]
${Yes_Del}      xpath://*[@id="confirmDelete"]/div/div/div[2]/div[3]/button[1]
${Yes_Confirm}  xpath://*[@id="confirm"]/div/div/div[2]/div[3]/button[1]
${No_Confirm}   xpath://*[@id="confirm"]/div/div/div[2]/div[3]/button[1]/following::button[1]
${ReferenceNumber}  id=spnFormattedTransactionNo
${ProceedPayment}   id=proceedToPaymentBtn
${TotalAmt1}     id=TotalAmt
${Submit_VOB}       id=SearchClick
#Specimen Signature Locators
${Perform_Specimen}     id=GenSpecimenSignature
${SS_Fname}     id=txtFirstName
${SS_Mname}     id=txtMiddleName
${SS_Lname}     id=txtLastName
${SS_Province}  id=ddlProvinces
${SS_City}      id=ddlCities
${SS_Date}      id=datepicker
${SS_Search}    id=btnSearch
${SS_Approve}   id=AuAccept
${SS_Reject}    id=AuReject
${SS_Rej_Reason}    xpath://input[@class='checkradiobox' and @value='RSN1']
${SS_Rej}       xpath://button[@data-bind='click:RejectedbuttonClick1']
${Index_Correction}     id=106
${Appr/Disappr Index Correction}   xpath://a[text()='Approve / Disapprove Index Correction']
${Image_ID}   xpath://button[@id='cropBtn']//preceding::strong[1]
${Search_Index}     xpath://input[@type='search']
${Image_link}   xpath://th[text()='Last Update By']//following::a[1]
${Approve_IndexCorrection}      id=Approve

#Locators for Webaccess Slip
${Access_Code}    xpath://input[@class='form-control' and @placeholder='Access Code']
${Enter_Captcha}   id=Entertext
${btnsubmit}       id=btnsubmit
${Province_WAS}   xpath://label[text()='Place of Birth (Province)']/following::select[1]
${City_WAS}       xpath://label[text()='Place of Birth (Province)']/following::select[2]
#Locators for probono Death
${Request Rework}   xpath://a[text()='Request Rework']
${Rework Reason}    id=cmbRequesterType
${confirm_Req_rework}   xpath://select[@id='cmbRequesterType']/following::button[1]
${Yes_Confirm_Popup}   xpath://div[text()='Are you sure you want to confirm?']/following::button[1]

#Locators for Supervisor Override
${Supervisor_Override}  xpath://a[text()='Supervisor Override']
${SO_Approve1}       id=1
${SO_Disapprove}    id=2
${SO_OK}        id=SupOvrapproveButton
${SO_Cancel}    id=SupOvrCancelButton
${Submit_Process}   id=SearchClick

#Locators for Bill Deferred Clients
${RequesterType}    id=cmbRequesterType
${Customer}         id=cmbCustomer
${Accounting}       id=211
${BillDeferredpayClients}      xpath://a[text()='Bill Deferred Payment Clients']
${Customer_Name}    id=CustomerName
${GenerateInv}       xpath://button[@id='GenerateInvoice' and text()='Generate Invoice']
${ViewInv}          xpath://button[@id='GenerateInvoice' and text()='Generate Invoice']/following::button[1]
${InvNumber}        xpath://span[@id='invoiceNumberHeader']
${DefPayReversal}       xpath://a[text()='Deferred Payment Reversal']
${Reason_Reversal}   id=txtarea
${Reversal_Payment}     xpath://button[@id='ReversePaymentbtn']
${SearchButton1}     xpath://button[@id='btnsearch']
${eye_icon-Processing}      xpath://button[@id='ViewSelectionList']//following::i[2]
${Submit_Index}     id=submitindex
${Perform_IndexCorrection}      id=indexcorrectionbtn




##################### Vijay
##### Authenication Marriage - Walk-in Request Entry and Payment  #################################
${walkinpay_link}    xpath=//a[text()='Walk-in Request Entry and Payment']
${walkinpay_authmarriage}    xpath=//select[@id='WalkInTransactiontype']//option[9]
${walknoc}    xpath=//input[@id='txtMRenReN']/preceding::input[1]
${huslastnameau}     xpath=//input[@id='txtMrgPriLastName']
${husfirstnameau}     xpath=//input[@id='txtMrgPriFirstName']
${wifelastnameau}     xpath=//input[@id='txtMrgSecLastName']
${wifefirstnameau}     xpath=//input[@id='txtMrgSecFirstName']
${marriagemonth}    xpath=//select[@id='mrgMonth']
${marriagedate}    xpath=//input[@id='mrgDate']
${marriageYear}    xpath=//input[@id='mrgYear']
${marriageprovince}    xpath=//select[@id='marriageProvince']
${marriagecity}     xpath=//select[@id='marriageCity']
${mrgcmbRequestPurpose}      xpath=//select[@id='cmbMarriageRequestPurpose']
${addimagemarriage}      xpath=//button[@id='marriage-AddImageBtn']
${authmarriage_save}      xpath=//*[@id="marriageFormDetails"]/div/div[15]/div[2]/button[1]

###### Authentication Processing ############
${mren_value}           xpath=//input[@id='MReN']
${authsubmit_btn}           xpath=//button[@id='btnCRDQuery']

${walkinpay_get_trans_no}       xpath=//*[@id="WalkInPaymentDetails"]/tbody/tr/td[3]/span
${walkinpay_startnewclient}     xpath=//*[@id="confirmPaymentDetails"]/div[2]/div/button[4]
${walkinpay_requester_middleinitial}     xpath=//input[@id='txtReqMiddleName']
${walkinpay_req_province}     xpath=//select[@id='cmbProvince']//option[2]
${walkinpay_req_city}         xpath=//fieldset[@id='requesterDiv']//select[@id='cmbCity']

${transaction_link}     xpath=//*[@id="ProcessingQueueTable"]/tbody/tr/td[1]/a/span
${issue_certificate}    xpath=//button[@id='print']
${ok_confirmation}      xpath=//button[@id="Yesbutton"]
${ok_success}       xpath=//button[@id='AlertButton']

################ EE Request ###############################
${eeview}  xpath=//tbody[@id="VeiBody"]/tr/td[1]/div/label/span[2]
${eeshow}  xpath=//a[text()="More Details"]/following::button[2]
${eechoosefile}  xpath=//input[@id='fileCRDDocument']
${eezoom}  xpath=//input[@id="zoomout"]/following::button[2]
${eereferencesearch}  xpath=//input[@id='EEReferenceNumber']/preceding::span[1]
${enteree}  xpath=//input[@id='EEReferenceNumber']
${eesearchoption}  xpath=//button[@id='EEReferenceSearch']
${eeaction}  xpath=//button[@id='AlertButton']
${selecteereference}  xpath=//h4[@id="assetModalHeader"]/span
${viewee}  xpath=//button[@id='remove']/following::button[1]
${eeselect1}  xpath=//button[@id='remove']/following::button[1]
${eesubmitclick}  xpath=//button[@id='submitClick']
${eealert}  xpath=//button[@id='AlertButton']
${selectvipparty}  xpath=//a[text()='VIP / Party Waiting']
${eereferenceno}  xpath=//input[@id='EEReferenceNumber']/preceding::span[1]
${eereference2}  xpath=//input[@id='EEReferenceNumber']
${eesearch1}  xpath=//button[@id='Search2']
${eepartyyes}  xpath=//tbody[@id="VeiBody"]/tr/td[1]/a
${eesysadmin}  xpath=//a[@id='180' and text()='System Administration']
${eeimageid}  xpath=//span[@data-bind='text:FormattedImageID']
${eeapprove}  xpath=//button[@id='approve']
${eepopup}  xpath=//div[@id='popUpDetails']/following::button[1]
${eeapprovesubmit}  xpath=//button[@id='ApproveSubmit']
${eealertmsg}  xpath=//button[@id='AlertButton']



*** Keywords ***

