*** Settings ***
Library  SeleniumLibrary
Library  String
Library  Process

*** Variables ***
############ CRS Home Page ######################
${CRS_Homepage}	http://ustr-erl2-3644.na.uis.unisys.com:9205/AdminMaster/DashboardNew?userId=UJ1#!
${open_counter}	xpath=//*[@id="ToggleSlider"]
${ok_button}    xpath=//*[@id="AlertButton"]
${home_dashboard}	xpath=//*[@id="dashboard"]
${Client_Cert_Req}  xpath=//*[@id="101"]
${wre_Link}     xpath=//*[@id="menuDiv"]/li[2]/ul/li[4]/a

######## Walkin Request Entry Page CI-Death End to end flow###########
#${number_of_copies}     xpath=//fieldset[@id='deathFormDetails']//input[@id='noOfCopies']
${number_of_copies}     id:noOfCopies
${qtn}  xpath=//*[@id="queueTicketNo"]
${trans_type}   xpath=//*[@id="WalkInTransactiontype"]
${d_last_name}  xpath=//input[@id='txtDeathPriLastName']
${d_firstname}  xpath=//input[@id='txtDeathPriFirstName']
${d_middlename}  xpath=//input[@id='txtDeathPriMiddleName']
${death_sex}    xpath://*[@id="txtDeathSex"]
${death_month}  xpath://*[@id="deathMonth"]
${death_date}   xpath://*[@id="deathDate"]
${death_year}   xpath://*[@id="deathYear"]
${country}  xpath=//*[@id="deathCountry"]
${province}     xpath://*[@id="deathProvince"]
${city}     xpath://*[@id="deathCity"]
${fa_lastname}  xpath=//*[@id="txtDeathSecLastName"]
${fa_firstname}  xpath=//*[@id="txtDeathSecFirstName"]
${fa_middlename}  xpath=//*[@id="txtDeathSecMiddleName"]
${ma_lastname}      xpath=//*[@id="txtDeathAuxLastName"]
${ma_firstname}     xpath=//*[@id="txtDeathAuxFirstName"]
${ma_middlename}    xpath=//*[@id="txtDeathAuxMiddleName"]
${purpose}  xpath=//*[@id="cmbRequestPurpose"]
${comments}     xpath=//*[@id="txtDeathComments"]
${save_button}  xpath://*[@id="deathFormDetails"]/div/div[17]/div[2]/button[1]
${save_button_new}      xpath=//*[@id="birthFormDetails"]/div/div[17]/div[2]/button[1]

######## Requesters Details#############################
${requester_lastname}   xpath=//*[@id="txtReqLastName"]
${requester_firstname}  xpath=//*[@id="txtReqFirstName"]
${requester_middlename}     xpath=//*[@id="txtReqMiddleName"]
${requester_address1}   xpath=//*[@id="txtAddress"]
${requester_address2}   xpath=//*[@id="streetAddress"]
${requester_country}    xpath://*[@id="cmbChildCountry"]
${requester_province}   xpath://*[@id="cmbProvince"]
${requester_city}   xpath=//select[@id="cmbCity"]
${requester_mobile}     xpath://*[@id="txtMobile"]

########## Final Submission ########
${final_submit}    xpath=//*[@id="finalSubmitbtn"]
${get_trans_no}     //*[@id="WalkInPaymentDetails"]/tbody/tr/td[3]/span
${close}    xpath=//*[@id="WalkInTranDeatilsModel"]/div/div/div[1]/button


##################### Change Outlet to 002 ############################################
${more_option}  //img[@class="navbar-more"]
${sys_admin}  xpath=//*[@id="180"]
${user_detail_info}  xpath=//*[@id="menuDiv"]/li[5]/ul/li[6]/ul/li[2]/a
${search}  xpath=//*[@id="tblUserDetails_filter"]/label/input
${edit}  xpath=//*[@id="tblUserDetails"]/tbody/tr[1]/td[8]/a[1]/i
${secondary_backoffice}  xpath=//select[@id='txtOutletId']
${save}  xpath=//*[@id="btnUserConfirm"]/i
${Central_office}  xpath=//*[@id="txtOutletId"]
${outlet_save}  //button[@id="btnUserConfirm"]

                ### Change outlet code to 002 (Jasmine)   ###
${systemadmin_menu}                xpath=//a[contains(text(),'System Administration')]
${userdetails_information_menu}     xpath=//a[contains(text(),'User Detail Information')]
${userdetails_search_text}      xpath=//input[@type='search']
${userdetails_edit_button}      xpath=//th[text()='Action']/following::i[1]
${userdetails_outlet_dropdown}      xpath=//select[@id='txtOutletId']
${userdetails_save_button}      xpath=//button[@id='btnUserConfirm']
######################## Close Counter #####################################
${click_counter}   xpath=//*[@id="navbar"]/aside[2]/ul/li/label/span
${confirm_yes}  xpath=//button[@id='Yesbutton']
${ok_button}    xpath=//button[@id='AlertButton']

##################### Processing Queue#######################################
${certi_processing}  xpath=//a[text()='Certificate Processing']
${processing_queue}  xpath=//a[text()='Processing Queue']
${tran_no_search}  xpath=//*[@id="ProcessingQueueTable_filter"]/label/input
${click_trans}  xpath=//*[@id="ProcessingQueueTable"]/tbody/tr[1]/td[1]/a/span
${click_search1}  xpath=//*[@id="SearchClick"]

${norecord_ok}  xpath=//*[@id="btnSuccessOK"]
${search_vei}  xpath=//*[@id="idBacktoVei"]
${alert_ok}  xpath=//*[@id="btnSuccessOK"]
${negative}  xpath=//*[@id="idGenNegCert"]
${confirm_yes}  xpath=//*[@id="Yesbutton"]
${success_ok}  xpath=//*[@id="AlertButton"]


########################### Releasing #######################
${releasing}  xpath=//*[@id="104"]
${release_certi}  xpath=//*[@id="menuDiv"]/li[5]/ul/li[1]/ul/li[2]/a
${enter_transaction}  xpath=//input[@id='TransNum']
${search_transaction}  //button[@id="validsearch"]

${click_release_trans}  xpath=//*[@id="tblbody"]/tr/td[2]/a
${print_button}  xpath=//*[@id="divView"]/div[1]/div[2]/button[1]
${select_valid_id}  xpath=//select[@id='ddlclaimentreason']
${proceed}  xpath=//*[@id="proceed"]
${printer_name}  //*[@id="printers"]/option[3]
${final_print}  xpath=//*[@id="FinalPrint"]
${yes_continue}  xpath=//*[@id="continue"]
${enter_secpa}  xpath=//*[@id="secpa_0"]
${save_continue}  xpath=//*[@id="saveContinue"]
${print_success}  xpath=//*[@id="printCompletionPopup"]/div/div/div[2]/div[3]/button


###########################Verify Walkin Request RA Death end to end flow#####################
######## docsubtypes and Checkboxes ####
${docsubtype}   xpath=//*[@id="documentSubType"]
${done_button}  xpath=//*[@id="WizardDonebtn"]
${submit_button_cb}     xpath=//*[@id="WizardSubmitbtn"]

${court_decision}       xpath=//td[text()='Court Decision']
${court_decisionnew}       xpath=//input[@id='new' and @name='Court Decision']
${certificateof_finality}       xpath=//input[@id='new' and @name='Certificate of Finality']
${certificateof_authenticity}   xpath=//*[@name="Certificate of Authenticity of the Court Decision/Order "]
${annotatedcertof_deathreport}    xpath=//*[@name="Annotated Certificate of Death/Report of Death (if ROD, optional)"]
${certof_deathreport}   xpath://*[@name="Certificate of Death/Report of Death (Un-annotated-mandatory)"]
${certof_regcourtorder}     xpath=//input[@id='new' and @name='Certificate of Registration of Court Decision/Order']

# VEI LCR CDLI Submission ##
${more_vei}     xpath=//*[@id="141"]
${vei_home}     xpath=//*[@id="menuDiv"]/li[5]/ul/li[7]/ul/li/a
#${lcr_cdlisubmission}   xpath=/html/body/div[1]/div/div/div[1]/div[1]/ul/li[3]/a
#${lcr_cdli_province}    xpath=//*[@id="LCRProvince"]
#${lcr_cdli_city}    xpath=//*[@id="LCRCity"]
#${lcr_cdli_reg_year}    xpath=//*[@id="txtYear"]
#${lcr_cdli_registration_month}   xpath=//*[@id="ddlMonth"]
#${lcr_cdli_registrybooktype}    xpath=//*[@id="ddlRegBookType"]
#${lcr_cdli_documenttype}    xpath=//*[@id="ddlDocType"]
#${lcr_cdli_docsubtype}  xpath=//*[@id="ddlDocSubType"]
#${lcr_cdli_registrynumber}  xpath=//*[@id="txtRegistryStart"]
#${lcr_cdli_datereceived}    xpath=//*[@id="dtReceived"]
#${lcr_cdli_nextbutton}  xpath=//*[@id="btnSave"]
${lcr_crdsubmission}  //a[@class="bold-text" and text()='Encode LCR CRD Submission']
${lcr_crd_province}    //*[@id="LCRProvince"]
${lcr_crd_city}    //*[@id="LCRCity"]
${lcr_crd_reg_year}   //*[@id="txtYear"]
${lcr_crd_reg_month}    //*[@id="ddlMonth"]
${lcr_crd_registrybooktype}     //*[@id="ddlDocType"]
${lcr_crd_range_start_regnum}      //*[@id="txtRegistryStart"]
${lcr_crd_range_end_regnum}       //*[@id="txtRegistryEnd"]
${noofdocs}     //*[@id="txtDocCount"]
${lcr_crd_datereceived}    //*[@id="dtReceived"]
${lcr_crd_save}     //*[@id="btnSave"]
${lcr_crdsubmission_no}   //a[@class="btn btn-default" and text()="No"]
${lcr_crd_batchcreate}  //a[@class="bold-text" and text()='Create CRD Batch']
${lcr_crd_batchnumber}  //*[@id="batchNo"]
${lcr_crd_batchcountry}     //*[@id="CountryName"]
${lcr_crd_batchprovince}    //*[@id="ProvinceName"]
${lcr_crd_batchcity}    //*[@id="CityName"]
${lcr_crd_batch_regyear}    //*[@id="registrationYear"]
${lcr_crd_batch_regmonth}    //*[@id="MonthName"]
${lcr_crd_batch_reg_booktype}   //*[@id="RegistryBookTypeName"]
${lcr_crdbatch_range_start_regnum}      //*[@id="txtRegistryStart"]
${lcr_crdbatch_range_end_regnum}       //*[@id="txtRegistryEnd"]
${crd_batch_actdoccount}    //*[@id="actualDocumentCount"]
${crd_batch_probdoccount}    //*[@id="problemDocumentCount"]
${crd_batch_submit}    //button[@class="btn btn-primary" and text()="Submit"]
${crd_batch_success_ok}    //button[@class="btn btn-primary" and text()="Ok"]
${encodecrd_bacthnumb}  //*[@id="registryNumber"]
${lcr_crd_batch_continue}   //*[@id="ContinueVEIRecord"]
${lcrcrd_batch_childfn}     //*[@id="childViewModelDiv"]/div[1]/div[1]/div/input
${lcrcrd_batch_childmn}     //*[@id="childViewModelDiv"]/div[1]/div[2]/div/input
${lcrcrd_batch_childln}     //*[@id="childViewModelDiv"]/div[1]/div[3]/div/input
${lcrcrd_batch_sex}     //select[@data-bind="options:genderList,value:sex,optionsText:'Description',optionsValue:'ID',optionsCaption:'Select Gender'"]
${lcrcrd_batch_dobday}      //*[@id="childViewModelDiv"]/div[3]/div[1]/div/input
${lcrcrd_batch_dobmonth}    //select[@class="form-control form-field editable-field AlphaNumeric"]
${lcrcrd_batch_dobyear}     //*[@id="childViewModelDiv"]/div[3]/div[3]/div/input
${lcrcrd_batch_placetype}   //select[@data-bind="options:placeTypeList,value:PlaceType,optionsText:'Description' ,optionsValue:'ID',optionsCaption:'Select Place Type'"]
${batch_country}     //select[@data-bind="options:countryList,value:country,optionsText:'Description',optionsValue:'Code',optionsCaption:'Select Country', event: { change:  PlaceCountryChange }"]
${batch_province}   //select[@id="PlaceofBirthProvince"]
${batch_city}       //select[@id="PlaceofBirthCity"]
${batch_pobbarangay}    //select[@id="PlaceofBirthBarangay"]
${batch_typeofbirth}    //*[@id="childViewModelDiv"]/div[7]/div[1]/div/select
${batch_birthorder}     //*[@id="childViewModelDiv"]/div[7]/div[3]/div/select
${batch_weightatbirth}     //input[@data-bind="value:weightAtBirth"]
${batch_motherfn}   //input[@placeholder="Mother's First Name"]
${batch_mothermn}   //*[@id="motherViewModelDiv"]/div[1]/div[2]/div/input
${batch_motherln}   //*[@id="motherViewModelDiv"]/div[1]/div[3]/div/input
${batch_mother_citizenship}     //*[@id="motherViewModelDiv"]/div[2]/div[1]/div/select
${batch_motherreligion}     //*[@id="motherViewModelDiv"]/div[2]/div[2]/div/select
${batch_motherethnicity}    //*[@id="motherViewModelDiv"]/div[2]/div[3]/div/select
${batch_total_childrenalive}    //*[@id="motherViewModelDiv"]/div[3]/div[1]/div/select
${batch_total_childrenstilliving}   //*[@id="motherViewModelDiv"]/div[3]/div[2]/div/select
${batch_total_childrennowdead}   //*[@id="motherViewModelDiv"]/div[3]/div[3]/div/select
${batch_motheroccupation}     //*[@id="motherViewModelDiv"]/div[4]/div[1]/div/select
${batch_motherage}      //*[@id="motherViewModelDiv"]/div[4]/div[2]/div/select
${batch_nameofhsptl}    //*[@id="NameHospital"]/div/input
${batch_mthprovince}    //*[@id="MothersResidenceProvince"]
${batch_mthcity}        //*[@id="MothersResidenceCity"]
${batch_mth_pobbarangay}    //*[@id="MothersResidenceBarangay"]
${batch_dom_month}     //*[@id="marriageParentsViewModelDiv"]/div[4]/div[1]/div/select
${batch_dom_day}    //*[@id="marriageParentsViewModelDiv"]/div[4]/div[2]/div/input
${batch_dom_year}   //*[@id="marriageParentsViewModelDiv"]/div[4]/div[3]/div/input
${batch_pom_country}    //*[@id="marriageParentsViewModelDiv"]/div[5]/div[1]/div/select
${batch_pom_province}   //*[@id="PlaceofMarriageBirthProvince"]
${batch_pom_city}   //*[@id="PlaceofMarriageBirthCity"]
${batch_legitimacy}     //*[@id="marriageParentsViewModelDiv"]/div[8]/div/div/select
${batch_attendant}  //*[@id="marriageParentsViewModelDiv"]/div[10]/div[1]/div/select
${batch_attendant_title}    //input[@placeholder="Attendant - Title or Position"]
${cert_attendant_month}     //*[@id="marriageParentsViewModelDiv"]/div[11]/div[1]/div/select
${cert_attendant_day}       //*[@id="marriageParentsViewModelDiv"]/div[11]/div[2]/div/input
${cert_attendant_year}       //*[@id="marriageParentsViewModelDiv"]/div[11]/div[3]/div/input
${batch_informant}      //*[@id="marriageParentsViewModelDiv"]/div[12]/div/div/select
${dateofregistration}   //*[@id="RegistrationDate"]
${registration_status}  //*[@id="marriageParentsViewModelDiv"]/div[16]/div[3]/div/select
${batch_submit}     //*[@id="generalBirthSubmit"]
${batch_submit_ok}  //button[@id="AlertButton" and text()="Ok"]
${batchsuccess_save_ok}     //button[@id="btnmdAlertOK" and text()="Ok"]

#CDLI Submission#
${lcr_cdli_submission}  //a[@class="bold-text" and text()="Encode LCR CDLI Submission"]
${lcr_cdli_city}    //*[@id="LCRCity"]
${lcr_cdli_month}   //*[@id="ddlMonth"]
${lcr_cdli_regbooktype}    //*[@id="ddlRegBookType"]
${lcr_cdli_doctype}     //*[@id="ddlDocType"]
${lcr_cdli_docsubtype}     //*[@id="ddlDocSubType"]
${lcr_cdli_regnumber}   //*[@id="LIparticular"]/div/input
${lcr_cdli_daterecevd}  //*[@id="dtReceived"]
${lcr_cdli_next}    //*[@id="btnSave"]
${cdli_wiz_AffofSupReport}    //input[@id="Que_1"]
${cdli_wiz_AnnCertofLivBirth}     //input[@id="Que_3"]
${cdli_wiz_certoflivbirthunan}  //input[@id="Que_5"]
${cdli_wiz_certofmrgofparnt}    //input[@id="Que_7"]
${cdli_wiz_ltrofaprofcrg}   //input[@id="Que_10"]
${cdli_wiz_next}    //button[@id="WizardSearchNextBtn"]
${cdli_wiz_summarynext}     //*[@id="wizardSummaryNextBtn"]
${cdli_wiz_confirm}     //button[@id="WizardSearchPreviewConfirmBtn"]
${cdli_wiz_success}     //button[@id="btnOK"]
${cdli_addrecord_no}    //a[@class="btn btn-default" and text()="No"]
${lcr_cdli_batchcreate}  //a[@href="#" and text()="Create CDLI Batch"]
${lcr_cdli_batchnumber}  //input[@id="batchNo"]
${cdli_batch_country}   //select[@id="CountryName"]
${cdli_batch_city}      //select[@id="CityName"]
${batchcreate_regyear}  //input[@id="registrationYear"]
${batchcreate_regmonth}     //select[@id="MonthName"]
${batchcreate_regbooktype}     //select[@id="RegistryBookTypeName"]
${batch_rangefrom}  //input[@id="txtRegistryStart"]
${batch_rangeto}    //input[@id="txtRegistryEnd"]
${batch_actualdoc}  //input[@id="actualDocumentCount"]
${batch_probdoc}    //input[@id="problemDocumentCount"]
${batchcreate_submit}   //button[@data-bind="click: AddSearchCDLIData" and text()="Submit"]
${suppreport_yesorno}   //*[@id="supplimentalid"]/div/select
${batchcreate_ok}   //button[@id="btnSuccessOK" and text()="Ok"]
${encodecdli_registrynumber}    //input[@id="registryNumber"]
${encodecdli_docsubtype}    //select[@id="ddlDocSubType"]
${encodecdli_continue}      //button[@id="ContinueVEIRecord" and text()="Continue"]
${encodecdli_others}    //input[@id="LIBirthTypeOther"]
${encodecdli_informationadded}  //*[@id="LIBirthPetiontypeOtherstoshow"]/div/input
${encode_regplaceprovince}  //select[@id="MothersResidenceProvince"]
${encode_regplacecity}  //select[@id="MothersResidenceCity"]
${encode_regmonth}      //*[@id="LIFormDetailsDiv"]/div/div[3]/div[1]/div/select
${encode_regday}  //*[@id="LIFormDetailsDiv"]/div/div[3]/div[2]/div/input
${encode_regyear}    //*[@id="LIFormDetailsDiv"]/div/div[3]/div[3]/div/input
${encode_regnumberatbirth}      //*[@id="RegistryNoBirth"]
${Encode_cfn}   //*[@id="LIFormDetailsDiv"]/div/div[5]/div[1]/div/input
${Encode_cln}   //*[@id="LIFormDetailsDiv"]/div/div[5]/div[1]/div/input
${batch_dob}    //*[@id="LIFormDetailsDiv"]/div/div[6]/div[1]/div/input
${batch_dobmonth}   //*[@id="LIFormDetailsDiv"]/div/div[6]/div[2]/div/select
${batch_dobyear}    //*[@id="LIFormDetailsDiv"]/div/div[6]/div[3]/div/input
${batch_gender}     //*[@id="LIFormDetailsDiv"]/div/div[7]/div/div/select
${batch_cdli_pobprovince}   //select[@id="LIPlaceofBirthProvince"]
${batch_cdli_pobcity}   //select[@id="LIPlaceofBirthCity"]
${batch_motherfn}   //*[@id="LIFormDetailsDiv"]/div/div[10]/div[1]/div/input
${batch_motherln}   //*[@id="LIFormDetailsDiv"]/div/div[10]/div[3]/div/input
${batch_regmonth}   //*[@id="LIFormDetailsDiv"]/div/div[12]/div[1]/div/span[1]
${batch_regday}  //*[@id="LIFormDetailsDiv"]/div/div[12]/div[2]/div/input
${batch_regyear}    //*[@id="LIFormDetailsDiv"]/div/div[12]/div[3]/div/input
${batch_submit}     //button[@id="generalBirthSubmit"]
${batch_recordsaveok}   }//button[@id="AlertButton"]
${batch_successok}  //button[@id="btnSuccessOK"]
${qualitycheckreporthome}     //a[@class="bold-text" and text()="Quality Check Reports"]
${qcr_reporttype}   //select[@id="reportType"]
${qcr_continue}     //button[@id="continue"]
${certpassreportbatchnumber}   //input[@id="batchNumber"]
${certpassreport_regcountry}    //select[@id="CountryName"]
${certpassreport_regprovince}   //select[@id="ProvinceName"]
${certpassreport_regcity}       //select[@id="CityName"]
${certpassreport_regyear}   //input[@id="registrationYear"]
${certpassreport_regbooktype}   //select[@id="registrationBookType"]
${certpassreport_genertatereport}   //button[@id="generatePassReport"]
${transmitcrdcdli}  //a[@id="TransmitCRDsSearch"]
${transmitcrdcdli_regprovince}  //select[@id="SearchCrdProvince"]
${transmitcrdcdli_regyear}  //input[@id="txtCrdSearchRegYear"]
${transmitcrdcdli_regmonth}     //select[@id="SearchddlMonth"]
${transmitcrdcdli_search}   //button[@id="btnSearchCRD"]
${transmitcrdcdli_checkbox}     //*[@id="transmitCRDSearchTable"]/tbody/tr/td[1]/div/label/span
${transmitcrdcdli_searchbox}    //*[@id="transmitCRDSearchTable_filter"]/label/input
${transmitcrdcdli_ok}   //button[@id="btnTransmittalOK"]
${ReceiveCRD/CDLIBatches}   //a[@class="bold-text" and text()="Receive CRD/CDLI Batches"]
${Receive_transmittalnumb}  //input[@id="transmittalReferenceNumber"]
${transmittalnumb_search}  //button[@id="generalBirthSubmit"]
${ForwardBatchestoDCC}     //a[@class="bold-text" and text()="Forward Batches to DCC/Concerned Archive Unit"]
${ForwardBatchestoDCC_regyear}  //input[@id="registrationYear"]
${ForwardBatchestoDCC_regmonth}     //select[@id="registrationMonth"]
${ForwardBatchestoDCC_search}   //button[@id="searchForwardDCC"]
${transmittocentraloffice}  //button[@id="btnTransmit"]
${viewtransmittalreport}    //*[@id="confirmationId"]/div/div/div[2]/div[2]/button
${Transmit_CO_Ref}  //*[@id="spnTransmittalReference"]




## CRD Submission ##
${more_crdsubmissionrcd}    xpath=//*[@id="130"]
${crdsubmission_rcdhome}    xpath=//*[@id="menuDiv"]/li[5]/ul/li[5]/ul/li[1]/a
${crd_createbatch}  xpath=//*[@id="CreateBatch"]/h5
${CRDRCCDate}   xpath=//input[@id='DateReceived1']
#//*[@id="menuDiv"]/li[5]/ul/li[5]/ul/li[1]/a

## calender ##
${Date_Recieved}    id=DateReceived1
${Calendar_Month}   xpath://select[@class='ui-datepicker-month']
${Calendar_Year}    xpath://select[@class='ui-datepicker-year']
${Calendar_Date}    xpath://*[@id="ui-datepicker-div"]/table/tbody/tr[1]/td[6]/a
${TrannoPrm}    //input[@id='TransactionNo']
${RCCSave}  //a[@class='btn btn-default' and text()='Cancel']/following::button[1]

## Annotation ##
#more
${More}  //a[@id='103']/following::a[8]
${Accounting}   //a[@id='211' and text()='Accounting']
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
${Annotran}     xpath=//*[@id="transactionNumber"]
${Annosearch}   xpath=//*[@id="searchTransactionNumber"]
${Aimg}     xpath=//*[@id="imageID"]
${AContinue}    xpath=//*[@id="continueBtn"]

## LongQueue Authentication Birth Positive Certificate ##
${child_last_name}  xpath=//*[@id="txtBirthPriLastName"]
${child_firstname}  xpath=//*[@id="txtBirthPriFirstName"]
${child_middlename}  xpath=//*[@id="txtBirthPriMiddleName"]
${birth_sex}      xpath=//*[@id="txtBirthSex"]
${birth_month}	xpath=//*[@id="birthMonth"]
${birth_date}	xpath=//*[@id="birthDate"]
${birth_year}	xpath=//*[@id="birthYear"]
${birth_country}    xpath=//*[@id="birthCountry"]
${birth_province}   xpath=//*[@id="birthProvince"]
${birth_city}   xpath=//*[@id="birthCity"]
${add_image}    //button[@id='birth-AddImageBtn']
${birth_motherlastname}		xpath=//*[@id="txtBirthAuxLastName"]
${birth_motherfirstname}	xpath=//*[@id="txtBirthAuxFirstName"]
${birth_mothermiddlename}	xpath=//*[@id="txtBirthAuxMiddleName"]
#Authentication-Birth-WalkinReqEntryPayment
${Req_BirthLN}     id:txtBirthPriLastName
${Req_BirthFN}     id:txtBirthPriFirstName
${Req_BirthMN}     id:txtBirthPriMiddleName
${Req_BirthMLN}     id:txtBirthAuxLastName
${Req_BirthMFN}     id:txtBirthAuxFirstName
#${AddImgBirth}    //button[@id='birth-AddImageBtn']
${SexBirth}      //select[@id='txtBirthSex']
${Req_BirthMonth}   //select[@id='birthMonth']
${Req_BirthDate}     id:birthDate
${Req_BirthYear}     id:birthYear
${Req_BirthPrvnc}     //select[@id='birthProvince']
${Req_BirthCity}      //select[@id='birthCity']
${Req_BirthPurp}        //select[@id='cmbRequestPurpose']
${ReqstrtxtAddress}	//*[@id="txtAddress"]
${ReqstrstreetAddress}	//*[@id="streetAddress"]
${ReqstrChildCountry}	//*[@id="cmbChildCountry"]

#Authentication_Processing-Positive Certificate
${Pros_menu}    //a[@id='103']
${Pros_Queue}   //a[@id='103']/following::a[2]
${PLN}  //input[@id='lastName']
${PFN}  //input[@id='firstName']
${Ptrns_Link}   //*[@id='ProcessingQueueTable']/tbody/tr/td/a
${ViewImage}   //th[@class='sorting_disabled' and text()='Action']/following::i[1]
${Issue}    //button[@id='print']
${Icont}    //button[@id='IssueCertificateContinueBtn' and text()='Continue']
${Iyes}     //button[@id='Yesbutton']
${Iok}  //button[@id='AlertButton']


##### Accounting Monitor RCD ####
${rcd_export_excel}	xpath=//*[@id="mdlexcel"]/div/div/div[2]/div[2]/button
${rcd_export_okbtn}	xpath=//*[@id="AlertButton"]
${export_pdf}	xpath=//*[@id="mdlexcel"]/div/div/div[2]/div[3]/button
${generate_viewreport}	xpath=//*[@id="search"]
#${view_report}	xpath=//*[@id="tblCollectionsDeposit"]/tbody/tr[1]/td[6]/a
${view_report}  id:tblCollectionsDeposit
${rcd_export}	xpath=//*[@id="export"]
${rcd_print}	xpath=//*[@id="print"]
${final_printer}	xpath=//*[@id="FinalPrint"]
${rcd_printer_success}	xpath=//*[@id="btnSuccessOK"]
${rcd_ordate}   xpath=//*[@id="dtTranDate"]
${generatebutton_yes}   id:Yesbutton
${accounting_rcd}   xpath=//*[@id="211"]
${accounting_home}  xpath=//*[@id="menuDiv"]/li[5]/ul/li[8]/ul/li[1]/a
${accounting_report_home}       //h5[text()='Accounting Report Home']
${rcd_reports}      //h5[text()='Report of Collections and Deposits']
${rcd_printer}    //*[@id="printers"]
${final_printer_yes}	xpath=//*[@id="PrintOK"]/div/div/div[2]/div[3]/button[1]


##### Encode Endorsed CRD ####
${Encodeendorsed}   //a[text()='Encode Endorsed CRD']
${EndorsedRegprov}  //select[@id='RegProvince']
${Endorsedregcity}      //select[@id='RegCity']
${Regstatus}    //select[@id='RegCity']/following::select[1]
${Endorsedregdate}  //input[@id='RegistrationDate']
${EndorsedRegbook}  //input[@id='RegistrationDate']/following::select[1]
${EndorsedDocsub}   //input[@id='RegistrationDate']/following::select[2]
${EndorsedReg}      //input[@id='registryNumber']
${Endorsed_hfn}     //*[@id="MarriageView"]/div/section[1]/div/div[1]/div/input
${Endorsed_hln}     //*[@id="MarriageView"]/div/section[1]/div/div[3]/div/input
${Endorsed_hmfn}     //*[@id="MarriageView"]/div/section[3]/div/div[1]/div/input
${Endorsed_hmln}    //*[@id="MarriageView"]/div/section[3]/div/div[3]/div/input
${Endorsed_wifefn}      //*[@id="MarriageView"]/div/section[4]/div/div[1]/div/input
${Endorsed_wifeln}      //*[@id="MarriageView"]/div/section[4]/div/div[3]/div/input
${Endorsed_wifemfn}     //*[@id="MarriageView"]/div/section[6]/div/div[1]/div/input
${Endorsed_wifemln}     //*[@id="MarriageView"]/div/section[6]/div/div[3]/div/input
${Endorsed_dateofmrgday}   //*[@id="MarriageView"]/div/section[7]/div/div[1]/div/input
${Endorsed_dateofmrg_mnth}  //*[@id="MarriageView"]/div/section[7]/div/div[2]/div/select
${Endorsed_dateofmrg_year}  //*[@id="MarriageView"]/div/section[7]/div/div[3]/div/input
${endorsed_pom_country}     //*[@id="MarriageView"]/div/section[8]/div/div[1]/div/select
${endorsed_pom_province}    //*[@id="EEProvinceMarriage"]
${endorsed_pom_city}    //*[@id="EECityMarriage"]
${endorsed_submit}  //button[@id="submitrecordM" and text()="Submit"]
${EncodeOk}     xpath=//*[@id="AlertButton"]
${EncodeEnd}     //a[@id='133' and text()='Electronic Endorsement']
${EndorsedcreateEE}      //a[text()='Create EE Request']
${RegBookEE}        //a[@id='aMenu1' and text()='VEI Search']/following::select[1]
${RegnoEE}      //input[@id='EERegistryNumber']
${RegcounEE}        //input[@id='EERegistryNumber']/following::Select[1]
${RegcityEE}        //input[@id='EERegistryNumber']/following::Select[2]
${RegProvEE}        //input[@id='EERegistryNumber']/following::Select[3]
${EEsearch}     //input[@id='EERegistryNumber']/following::button[1]
${createEE_continue}    //*[@id="continue" and text()="Continue"]
${Rep_soyes}    //button[@id='Yesbutton']
${Supervisor_Override}  xpath://a[text()='Supervisor Override']
${SO_Approve}       id=1
${SO_Disapprove}    id=2
${SO_OK}        id=SupOvrapproveButton
${SO_Cancel}    id=SupOvrCancelButton
${Submit_Process}   id=SearchClick

#Continue to Encode Endorsed CRD-Birth #
#Encodeendorsed
${Encodeendorsed}   //a[text()='Encode Endorsed CRD']
${EndorsedRegprov}  //select[@id='RegProvince']
${Endorsedregcity}      //select[@id='RegCity']
${Regstatus}    //select[@id='RegCity']/following::select[1]
${Endorsedregdate}  //input[@id='RegistrationDate']
${EndorsedRegbook}  //input[@id='RegistrationDate']/following::select[1]
${EndorsedDocsub}   //input[@id='RegistrationDate']/following::select[2]
${EndorsedReg}      //input[@id='registryNumber']
${Chilfdname}    //input[@id='registryNumber']/following::input[1]
${ChildLname}   //input[@id='registryNumber']/following::input[3]
${EchildSex}     //input[@id='registryNumber']/following::select[1]
${EncodeDD}      //input[@id='registryNumber']/following::input[4]
${EncodeDM}     //input[@id='registryNumber']/following::SELECT[2]
${EncodeDY}      //input[@id='registryNumber']/following::input[5]
${EncodeBprov}   //select[@id='EEProvinceBirth']
${EncodeDcity}   //select[@id='EECityBirth']
${EncodeMotherFname}         //select[@id='EECityBirth']/following::input[1]
${EncodeMotherLname}     //select[@id='EECityBirth']/following::input[3]
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




## Import PhilCRIS File ##
${vei_import}    //a[@class="bold-text" and text() = "Import"]
${import_province}   //*[@id="ProvinceName"]
${import_city}      //*[@id="CityName"]
${import_year}  //*[@id="ImportPhilCRIS"]/div[1]/div[3]/div/input
${import_month}     //*[@id="MonthName"]
${import_search}    xpath=//button[@id='search']
${importbutton}     //button[@id="Import"]


##### Premium ANnotation Birth ####
${PA_birthsubtype}      //select[@id="documentSubType"]
${PA_Wizard_done}       //button[@id="WizardDonebtn"]
${PA_Wizard_submit}       //button[@id="WizardSubmitbtn"]
#--------------------------------------------------------
*** Variables ***
${AlertButton}  //button[@id='AlertButton']/i
${dashboard}    //a[@id='dashboard']
${Homebutton}   //a[@id='101']
${WalkInTransactiontype1}  //select[@id='WalkInTransactiontype']
${noofcopies1}   //input[@id='txtReN']/preceding::input[1]
${txtBirthPriLastName}  //input[@id='txtBirthPriLastName']
${txtBirthPriFirstName}  //input[@id='txtBirthPriFirstName']
${txtBirthSex1}  id=txtBirthSex
${birthMonth1}  //select[@id='birthMonth']
${birthDate1}   //input[@id='birthDate']
${birthYear1}   //input[@id='birthYear']
${birthProvince1}   //select[@id='birthProvince']
${birthCity1}   //select[@id='birthCity']
${txtBirthSecLastName1}  //input[@id='txtBirthSecLastName']
${txtBirthSecFirstName1}    //input[@id='txtBirthSecFirstName']
${txtBirthAuxLastName1}  //input[@id='txtBirthAuxLastName']
${txtBirthAuxFirstName1}    //input[@id='txtBirthAuxFirstName']
${cmbRequestPurpose1}   //select[@id='cmbRequestPurpose']
${Save}  //button[text()='Save']
${pa_save}  //button[@data-bind="click:birthSaveClick"]
${txtReqLastName1}  //input[@id='txtReqLastName']
${txtReqFirstName1}  //input[@id='txtReqFirstName']
${txtAddress1}  //input[@id='txtAddress']
${streetAddress1}  //input[@id='streetAddress']
${cmbChildCountry}  //select[@id='cmbChildCountry']
${cmbProvince1}  //select[@id='cmbProvince']
${cmbCity1}  //select[@id='cmbCity']
${finalSubmitbtn1}   //button[@id='finalSubmitbtn']
${RequestNo1}   //span[@data-bind='text: RequestNo']
${button1}   //button[@id='RetryButtonforRANotificationForm']/following::button
${CRP}  //a[text()='Certificate Request Payment']
${ddlSelectFilter1}  //select[@id='ddlSelectFilter']
${txtSeatch1}  //input[@id='txtSeatch']
${btnSarchPayment1}  //button[@id='btnSarchPayment']
${showReceivePayment1}   //a[@onclick='showReceivePayment(this);']
${ddlValidIDPresented1}  //select[@id='ddlValidIDPresented']
#${read_amount}  //input[@id='TotalAmt']
${txtAmountTendered1}    //input[@id='txtAmountTendered']
${PrintOR1}  //button[@id='PrintOR']
#${Cancelbtn1}   link:Cancel
#To Change the User details
${more}         xpath://img[@class='navbar-more']
${Sys_Admin}        xpath://a[text()='System Administration']
${User_Detail}      xpath://a[text()='User Detail Information']
${Search}       xpath://input[@type='search']
${Edit}         xpath://a[@id='delete']/preceding::a[1]
${Outlet}       id=txtOutletId
${Save_User}        id=btnUserConfirm
#${Nobutton}  //button[@onclick='onClickLeftButtonCallBack();']
${Close_btn}    //h4[text()='Success!']/preceding::button[1]
${EncoPrinters}     //select[@id='printers']
${EncoFinalPrint}       //button[@id='FinalPrint']

#annotation Tag as feedback
${annotation_tagasfeedback}     //select[@id="tagOptionDdl"]
${feedback_yes}     //button[@id="Yesbutton"]
${feedback_ok}      //button[@id="AlertButton"]

#Unconverted MV
${SaveOuteltId}     //button[@id='btnUserConfirm']
${UserDetInfo}      //a[@id='180']/following::a[2]
${SrchUserid}       //input[@type='search']
${EditUsrInfo}      //a[@id='delete']/preceding::a[1]


#CRD Backend Rework Copy Issuance (Paid Transaction)
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
${cideath_submit}   //button[@data-bind="click: function(data, event) { window.EncodingUIContext.SubmitClick(data) }" and text() ="Submit"]
${cideath_confirm}  //button[@id="btnBirthRequestConfirm"]
${cideath_next}     //button[@id="btnReqSummaryProceed"]
${cideath_Reqconfirm}   //button[@id="btnProceed"]
${cidrework_reason}     //select[@id="cmbRequesterType"]
${cid_rewrk_confrim}    //button[@value="Confirm"]
${rewrk_confrimyes}     //*[@id="confirm"]/div/div/div[2]/div[3]/button[1]
${rewrk_confrimyes2}    //*[@id="btnRightCallBack"]


############## CI-Marriage- Request entry#######################
${request_entry}  xpath=//a[text()='Request Entry']
${validate}  xpath=//button[@id='validate']
${no}  xpath=//*[@id="confirmPopupCallBack"]/div/div/div[2]/div[2]/button[2]
${skip}  xpath=//button[@id='Skip']
${enter_qtn}  xpath=//input[@id='queueTicketNo']
${type_marriage}  xpath=//*[@id="cmbCertificateType"]/option[4]
${no_of_copy}  xpath=//input[@id='txtNoOfCopies']
${next}  xpath=//button[@id='proceed']
${hus_lastname1}  xpath=//input[@id='txtPriLastName']
${hus_firstname1}  xpath=//input[@id='txtPriFirstName']
${hus_middlename1}  xpath=//input[@id='txtPriMiddleName']
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
${SO_Approve1}      //button[@id='1' and text()='Approve']
${application_home}     xpath=//a[@id='dashboard']
${ccr_Link}     xpath=//a[text()='Client Certificate Request']
${ReleaseOk}        //button[@data-bind='click:TransactionSuccessClick']


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
${batch_name}   00101202210CB0123142R

#-------------------------------------------------------------------------------------------------#

#VEI CRD batch
${lcrcrd_batch_dobday}  //*[@id="childViewModelDiv"]/div[3]/div[1]/div/input
${lcrcrd_batch_dobmonth}    //select[@class="form-control form-field editable-field AlphaNumeric"]
${lcrcrd_batch_dobyear}     //*[@id="childViewModelDiv"]/div[3]/div[3]/div/input
${lcrcrd_batch_placetype}   //select[@data-bind="options:placeTypeList,value:PlaceType,optionsText:'Description' ,optionsValue:'ID',optionsCaption:'Select Place Type'"]
${batch_nameofhsptl}    //*[@id="NameHospital"]/div/input


#CDI Annotation wizard RA9048 Birth
${Wiz1}     //input[@id='Que_1']
${Wiz2}     //input[@id='Que_4']
${Wiz3}     //input[@id='Que_7']
${Wiz4}     //input[@id='Que_10']
${Wiz5}     //input[@id='Que_13']
${RegCntry}      //select[@id='CountryName']
${RegCity}       //select[@id='CityName']
${RegYear}       //input[@id='registrationYear']
${RegMnth}       //select[@id='MonthName']
${CDLI_RegBookType}          //select[@id='RegistryBookTypeName']
${CDLI_RegNoStart}        //select[@id='RegistryBookTypeName']/following::input[1]
${CDLI_RegNoEnd}         //select[@id='RegistryBookTypeName']/following::input[2]
${CDLI_ActualDoc}         //input[@id='actualDocumentCount']
${CDLI_BatchSub}         //input[@id='problemDocumentCount']
${CDLI_BtchCnfrm}        //input[@id='problemDocumentCount']/following::button[2]
${TramittalRefNo}       //span[@id='spnTransmittalReference']
${Transmit_CO_Ref}      //strong[@id="spnTransmittalReference"]
${Enco_Wiz1}        //input[@id='new' and @name ='Approved Petition for Correction of Clerical Error (CCE) with the C/MCR decision']
${Enco_Wiz2}        //input[@id='new' and @name ='Certificate of Finality']
${Enco_Wiz3}        //input[@id='new' and @name ='Action Taken by the Civil Registrar General (CRG)']
${Enco_Wiz4}        //input[@id='new' and @name ='Annotated Certificate of Live Birth']
${Enco_Wiz5}        //input[@id='new' and @name ='Certificate of Live Birth (Un-annotated)']

#Quality Check Reports
${QualityCheck_Result}      //span[@data-bind='text:CertificationPassStatus']

### CRD Match Rework ###
${dc_link}     xpath=//a[@id='150']
${dc_home}      xpath=//a[text()='Document Conversion Home']
${dc_crd_match/rework}     xpath=//a[@id='CRDCLICK']
${dc_crd_match/rework_search}     xpath=//*[@id="ViewBatchListCRDTable_filter"]/label/input
#${dc_crd_match/rework_click_id}     xpath=//*[@id="ViewBatchListCRDTable"]/tbody/tr/td[3]/a
${select_registry}  xpath=//select[@id='RegistryBookTypeName']/option[2]
${enter_reginumber}  xpath=//input[@id='registryNumber']
${click_submit}  xpath=//button[@id='search']
${saveandcontinueindc}  xpath=//button[@id='saveAndContinue']
${crdcommitbatch}  xpath=//button[@id='commitbatch']
${crdsuccess}  xpath=//button[@id='btnSuccessOK']

### DC QA pass ###
${crdqachecking}  xpath=//h5[text()='Perform Quality Assurance (QA) Check on Primary CRDs']
${crdacceptmatch}  xpath=//button[@id='acceptMatch']
${lastcrdacceptmatch}  xpath=//button[@id='AcceptBatch']
${qapassedok}  xpath=//button[@id='btnSuccessOK']
${cdliqachecking}  xpath=//h5[text()='Perform Quality Assurance (QA) Check on CDLIs']


#### Accounting Cash Balancing Report ####

${Payment_MiscAmnt}       //span[@class='form-value' and @data-bind='text: NetCashCollection().toFixed(2)']
${Payment_getmiscamt}        //span[@id='spTotalCashDrawerAmount']/preceding::input[1]
${Payment_Submit}        //button[@id='btnsave' and @type='submit']
${EncoPrinters}     //select[@id='printers']
${EncoFinalPrint}       //button[@id='FinalPrint']
${Iyes}     //button[@id='Yesbutton']
${ProcessSuccessOK}      //button[@id='btnSuccessOK']

##Remit to VA

${Payment_RemitVA}        //button[@id='btnRemitToVA']
${Payment_RemitVA1}         //button[@class='btn btn-primary' and @onclick='OnSubmitClick();']
${Payment_RemitVA2}         //button[@class='btn btn-primary' and @onclick='RemitCollection();']
${Payment_RemitVA3}         //button[@class='btn btn-primary' and @onclick='Waitingalert();']

                ######## Premium Annotation to Regular Annotation Marriage ########
#AnnotationWizardReqentry
${ReqAnnoDropdwn}   //select[@id='documentSubType']
${Reqannsub}    //button[@id='AnnotationWizardSubmitBtn']
${Chkbox_1}     //input[@id='Que_1']
${Chkbox_2}     //input[@id='Que_4']
${Chkbox_3}     //input[@id='Que_6']
${Chkbox_4}     //input[@id='Que_9']
${Chkbox_5}     //input[@id='Que_11']
${Chkbox_6}     //input[@id='Que_13']
${Wizbtn}   //button[@id='WizardSearchNextBtn']
${Wizpopupbutton}   //a[@id='wizardSummaryNextBtn']
${Wizardbck}    //button[@id='WizardSearchPreviewBackBtn']
${Wizconf}  //button[@id="WizardSearchPreviewConfirmBtn"]


${Tran_link}    //*[@id="Payment"]/tbody/tr/td[2]/a
${Valid_ID}  id:ddlValidIDPresented
${Amnt}     id:TotalAmt
${Amount_tendr}     Xpath://input[@id='txtAmountTendered']
${Print_Or}    Xpath://button[@id='PrintOR']
${proceedtopayment}  //button[@id='proceedToPaymentBtn']
${Reprint_pay}     //a[text()='Reprint OR']

${Client_Request_WA}    Xpath://a[@id='101']
${WA_Marriage_Save}     Xpath://input[@id='txtmarriageComments']/following::button[3]
${WA_Birth_Save}    Xpath://input[@id='txtComments']/following::button[3]
${Submit_button1}   Xpath://button[@id='finalSubmitbtn' and text()='Submit']
${Close_overlay}    //div[@class='modal-header']/following::button[@onclick='modelCloseClick()']
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
${No_of_copies}     //input[@id="txtReN"]/preceding::input[1]
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
${TransNoKioskNo}   //input[@id='TransNum']
${Sbbtn}    //button[@id='btnSarchPayment']
${Select_Tran}  //select[@id='ddlSelectFilter']
${inp_txt}  //input[@id='txtSeatch']
${Sbbtn}    //button[@id='btnSarchPayment']
${Tran_link}    //*[@id="Payment"]/tbody/tr/td[2]/a
${Valid_ID}  id:ddlValidIDPresented
${Recv_pay}     //a[text()='Receive Payments']
${P_menu}   //a[text()='Certificate Request Payment']

## Unconverted MV Processing ##
${Tag_MV}   //input[@id="manualVerification"]
${MV_reson}     //select[@id="ddlMVReasons"]
${MV_text}  //textarea[@id="txtReason"]
${MV_Submit}    //button[@type='submit' and text()="Submit"]
${MV_Submit_ok}     //div[@id="popUpDetails"]/following::button[1]
${MV_Req_final}  //button[@id="btnSuccessOK"]



######### Premium AnnotationMarriage #####################
${transaction_tpye_pamarriage}    xpath=//select[@id='cmbCertificateType']//option[22]
${doc_subtype1}      xpath=//select[@id='documentSubType']/option[2]
${doc_subtype_submit}       xpath=//button[@id='AnnotationWizardSubmitBtn']
${Chkbox_1}     //input[@id='Que_1']
${Chkbox_2}     //input[@id='Que_4']
${Chkbox_3}     //input[@id='Que_6']
${Chkbox_4}     //input[@id='Que_9']
${Chkbox_5}     //input[@id='Que_11']
${Chkbox_6}     //input[@id='Que_13']
${doc_next1}        xpath=//button[@id='WizardSearchNextBtn']
${more_annotation}      xpath=//button[@id='moreAnnotationsBtn']
${doc_subtype2}      xpath=//select[@id='documentSubType']/option[3]
${doc_next2}         xpath=//a[@id='wizardSummaryNextBtn']
${doc_confirm}       xpath=//button[@id='WizardSearchPreviewConfirmBtn']
${marriage_hus_lastname}       xpath=//input[@id='txtPriLastName']
${marriage_hus_firstname}      xpath=//input[@id='txtPriFirstName']
${marriage_wife_lastname}      xpath=//input[@id='txtSecLastName']
${marriage_wife_firstname}     xpath=//input[@id='txtSecFirstName']
${date_of_marriage}            xpath=//input[@id='dateofbirth']
${plc_of_marriage_Province}     xpath=//select[@id='cmbProvince']/option[2]
${plc_of_marriage_city}         xpath=//select[@id='cmbCity']/option[2]
${purpose_of_request3}          xpath=//select[@id='cmbRequestPurpose']/option[2]
${printer_select}               xpath=//select[@id='printers']/option[3]
${print_transmittalslip_and_cert}        xpath=//button[text()='Print']
${yes_confrm}            xpath=//button[@id='onClickofPrintTransmittalSlip']
${ok_confrm}             xpath=//button[@id='btnSuccessOK']
########## Receive Payment ##########
${paymentmode_pmo}       xpath=//select[@id='ddlPaymentMode']/option[4]
${payment_cash}     //*[@id="ddlPaymentMode"]
${cashamount}   //input[@id="txtAmountTendered"]
${payment_refnum}        xpath=//input[@id='PmtRefNo']
${check_date}            xpath=//input[@id='ChkDate']
${issuer_bank}           xpath=//input[@id='txtSource']
${check_amount}          xpath=//input[@id='txtTotalCheckAmount']
${amount_cash}      //*[@id="txtAmountTendered"]
#### CRD submission RCC ####
${CRDSubRCC}        xpath=//a[@id='130']
${CreateBatch}    xpath=//a[@id='130']/following::a[2]
${Batchtype}      xpath=//select[@id='BatchTypeName']
${UnitDep}      xpath=//select[@id='UnitDepartmentName']
${Date_Rcvd}     xpath=//input[@id='DateReceived1']
#${Calendar_Month}   xpath=//select[@class='ui-datepicker-month']
#${Calendar_Year}    xpath://select[@class='ui-datepicker-year']
#${Calendar_Date}    xpath://*[@id="ui-datepicker-div"]/table/tbody/tr[1]/td[6]/a
#${RcvdbySection_date}       //input[@data-bind='value:DateReceived']
${Operator}     xpath=//input[@data-bind='value:Operator1']
${RCCBtchSbmt}      xpath=//button[@data-bind='click: SubmitData']
${RCCBtchSbmt_ok}      xpath=(//button[@id='AlertButton'])[1]
#CRDRCCSave
${TrannoPrm}     xpath=//input[@id='TransactionNo']
${Trannoprm_textarea}    xpath=(//textarea[@id='Remarks'])[1]
${RCCSave}     xpath=(//button[text()='Save'])[1]

########## Annotation Processing ##################
${anno_processing_link}     xpath=//a[@id='131']
${process_anno_req_link}               xpath=//a[text()='Process Annotation Request']
${tran_num}         xpath=//input[@id='transactionNumber']
${search_btn}       xpath=//button[@id='searchTransactionNumber']
${image_id}         xpath=//input[@id='imageID']
${coninue_btn}      xpath=//button[@id='continueBtn']

${originalcrd_continue}     xpath=//button[@id='OriginalCRDContinueBtn']
${select_topsheet}          xpath=//*[@id="divVEIRecord"]/div/div[1]/div/label/span
#//input[@id="chkIsTopSheet"]
#//*[@id="divVEIRecord"]/div/div[1]/div/label/span[text()='Use for Top Sheet']
${select_reg_booktype}      xpath=//select[@id='ddlRegistryBookType']/option[2]
${registry_num}             xpath=//input[@id='registryNumber']
${reg_province}             xpath=//select[@id='ddlProvince']/option[2]
${reg_city}                 xpath=//select[@id='ddlCity']/option[2]
${vei_rec_search}           xpath=//button[@id='VEIRecordSearchBtn']

${vei_rec_continue1}     xpath=//button[@id='VEIRecordContinueBtn']
${anno_template}        xpath=//select[@id='ddlannotationType']/option[2]
${anno_template_possition}        xpath=//select[@id='ddlPosition']/option[2]
${anno_template_apply}          xpath=//button[@id='AnnotationPartialApplyBtn']

${anno_one_continue}     xpath=//button[@id='AnnotationPartialContinueBtn']

${vei_rec_continue2}       xpath=//button[@id='VEIRecordContinueBtn']
${anno_two_continue}    xpath=//button[@id='AnnotationPartialContinueBtn']
${anno_submit}       xpath=//div[@id='divTopSheet' and text()]/following::button[2]
${anno_ok}          xpath=//button[@id='AlertButton']

######## Approve / Disapprove Annotation Request ###########
${anno_approve_disapp_link}        xpath=//a[text()='Approve / Disapprove Annotation Request']
${anno_disapprove}          xpath=//button[@id='AnnotationDisapproveBtn']
${anno_disappr_yes}         xpath=//button[@id='Yesbutton']
${anno_comments}            xpath=//textarea[@id='comments']
${anno_disappr_ok}          xpath=//button[@id='DisapprovePartialOkBtn']
${anno_disappr_ok_yes}      xpath=//button[@id='AlertButton']
##### processing page after disapprove  #######
${anno_submit_after_disapprove}     xpath=//div[@id='divApproverComments' and text()]/following::button[2]
${anno_ok}          xpath=//button[@id='AlertButton']
##### Approve ########
${anno_approve}      xpath=//button[@id='AnnotationApproveBtn']
${anno_appr_ok}     xpath=//button[@id='Yesbutton']
${anno_appr_ok_yes}      xpath=//button[@id='AlertButton']
${anno_final_print}     xpath=//button[@id='AlertButton']



## Request Entry ##
${Requestentry_next}    //button[@id="proceed"]
${Requestentry_submit}  //*[@id="divMain"]/div[9]/button[3]
${req_entry_link}    xpath=//a[text()='Request Entry']
${next_vocenomar}   xpath=//button[@id='proceed']
${submit}        xpath=//button[text()='Submit']
${confirm}     xpath=//button[@id='btnBirthRequestConfirm']
${next1}        xpath=//button[@id='btnReqSummaryProceed']




######### Receive Payments ######################
${certificate_request_payment}      xpath=//a[@id='102']
${receive_payments}         xpath=//a[text()='Receive Payments']
${search_transactions}      xpath=//select[@id='ddlSelectFilter']//option[6]
${text_box}         xpath=//input[@id='txtSeatch']
${search_button}    xpath=//button[@id='btnSarchPayment']
${click_link}       xpath=//a[@onclick='showReceivePayment(this);']
${validid_present}      xpath=//select[@id='ddlValidIDPresented']//option[2]
${total_amount_due}     xpath=//input[@id='TotalAmt']

########### Requester details #################
${requester_lastname}      Xpath=//input[@id='txtReqLastName']
${requester_firstname}     xpath=//input[@id='txtReqFirstName']
${requester_middleinitial}     xpath=//input[@id='txtReqMiddleName']
${req_address1}     xpath=//input[@id='txtAddress']
${req_address2}     xpath=//input[@id='streetAddress']
${req_province}     xpath=//select[@id='cmbRequesterProvince']//option[2]
${req_city}         xpath=//select[@id='cmbRequesterCity']//option[2]
${confirm1}         xpath=//button[@id='btnProceed']
${confirm2}         xpath=//button[text()='Confirm']
${ok_alert2}        xpath=//*[@id='confirm']/div/div/div[2]/div[3]/button[1]

































