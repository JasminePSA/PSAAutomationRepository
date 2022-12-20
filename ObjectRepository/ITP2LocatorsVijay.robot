*** Settings ***
Library     SeleniumLibrary

*** Variables ***
######### Locators - XPaths IDs, CSS, Name, etc of CENODEATH CERTIFICATE ################
########### Open Counter ########################
${open_counter}   xpath=//input[@id='ToggleSlider']
${ok_alret}       xpath=//button[@id='AlertButton']
########### Close Counter #########################
${close_counter}   xpath=//input[@id='ToggleSlider']
${yes}    xpath=//button[@id='Yesbutton']
${yes_ok}    xpath=//button[@id='AlertButton']
############ Home Page ###############################
${application_home}  xpath=//a[@id='dashboard']
######## Client Certificate Request #########
${ccr_link}    xpath=//a[@id=101]
${req_entry_link}    xpath=//a[text()='Request Entry']
${skip}    xpath=//button[@id='Skip']
${transaction_tpye}    xpath=//select[@id='cmbCertificateType']//option[6]
${number_of_copies}     xpath=//input[@id='txtNoOfCopies']
${next}   xpath=//button[@id='proceed']
######### Request Entry ##########
${person_lastname}      xpath=//input[@id='txtPriLastName']
${person_firstname}     xpath=//input[@id='txtPriFirstName']
${person_middlename}    xpath=//input[@id='txtPriMiddleName']
${male}        xpath=//span[text()='Male']
${date_of_birth}   xpath=//input[@id='dateofbirth']
${placeofbirth_province}   xpath=//select[@id='cmbProvince']//option[2]
${placeofbirth_city}        xpath=//select[@id='cmbCity']//option[2]
${father_lastname}      xpath=//input[@id='txtSecLastName']
${father_firstname}      xpath=//input[@id='txtSecFirstName']
${father_middlename}      xpath=//input[@id='txtSecMiddleName']
${mother_lastname}      xpath=//input[@id='txtAuxLastName']
${mother_firstname}     xpath=//input[@id='txtAuxFirstName']
${mother_middlename}    xpath=//input[@id='txtAuxMiddleName']
${purpose_of_request}    xpath=//select[@id='cmbRequestPurpose']//option[2]
${submit}        xpath=//button[text()='Submit']

${confirm}     xpath=//button[@id='btnBirthRequestConfirm']
${next1}        xpath=//button[@id='btnReqSummaryProceed']
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
${tran_no}     xpath=//span[@id='spnFormattedTransactionNo']
######### Receive Payments ######################
${certificate_request_payment}      xpath=//a[@id='102']
${receive_payments}         xpath=//a[text()='Receive Payments']
${search_transactions}      xpath=//select[@id='ddlSelectFilter']//option[6]
${text_box}         xpath=//input[@id='txtSeatch']
${search_button}    xpath=//button[@id='btnSarchPayment']
${click_link}       xpath=//a[@onclick='showReceivePayment(this);']
${validid_present}      xpath=//select[@id='ddlValidIDPresented']//option[2]
${total_amount_due}     xpath=//input[@id='TotalAmt']
${amount_tendered}      xpath=//input[@id='txtAmountTendered']
${print_or}         xpath=//button[@id='PrintOR']
########### Outlet change #############
${more_option}      xpath=//*[@id="menuDiv"]/li[5]/a/img
${system_admin}     xpath=//a[@id='180']
${userdetail_info}      xpath=//a[text()='User Detail Information']
${search_field}         xpath=//input[@type='search']
${edit_name}        xpath=//*[@id="tblUserDetails"]/tbody/tr/td[8]/a[1]/i
${outlet_change002}    xpath=//select[@id='txtOutletId']/option[4]
${outlet_change003}    xpath=//select[@id='txtOutletId']/option[5]
${save}         xpath=//button[@id='btnUserConfirm']

########## Processing Queue - CENODEATH - Advisory on death ###########
${certificate_processing}       xpath=//a[@id='103']
${processing_queue}         xpath=//a[text()='Processing Queue']
${search_textbox}       xpath=//input[@type='search']
${transaction_link}     xpath=//*[@id="ProcessingQueueTable"]/tbody/tr/td[1]/a/span
${dren_value}           xpath=//input[@id='DReN']
${submit1}        xpath=//button[@id='btnCRDQuery']
${add_selectionlist}    xpath=//*[@id="anchor"]/i
${view_selectionlist}   xpath=//*[@id="ViewSelectionList"]
${generate_advisory}    xpath=//button[@id="Advisory_Btn_For_Cenos"]
${yes_confirmation}      xpath=//button[@id='Yesbutton']
${ok_success}      xpath=//button[@id='AlertButton']
################## Releasing ###########################
${more_option}      xpath=//*[@id="menuDiv"]/li[5]/a/img
${certificate_releasing}    xpath=//a[@id='104']
${release_certificate}      xpath=//a[text()='Release Certificate']
${transaction_textbox}      xpath=//input[@id='TransNum']
${seacrh_button}        xpath=//button[@id='validsearch']
${click_transaction_link}      xpath=//*[@id="tblbody"]/tr/td[2]/a
${print-button}         xpath=//*[@id="divView"]/div[1]/div[2]/button[1]
${validid_present_yes}      xpath=//select[@id='ddlclaimentreason']/option[2]
${button_proceed}       xpath=//div[@id='proceed']
${select_printer}       xpath=//select[@id='printers']/option[3]
${final_print}      xpath=//button[@id='FinalPrintButton']
${continue_secpa}       xpath=//button[@id='continue']
${enter_secpa}      xpath=//input[@id='secpa_0']
${saveandcontinue}      xpath=//button[@id='saveContinue']
${final_ok}     xpath=//*[@id="printCompletionPopup"]/div/div/div[2]/div[3]/button

############### VO Cenomar - Request Entry #####################
${transaction_tpye_vocenomar}    xpath=//select[@id='cmbCertificateType']//option[13]
${next_vocenomar}   xpath=//button[@id='proceed']
${child_lastname}   Xpath=//input[@id='txtPriLastName']
${child_firstname}   Xpath=//input[@id='txtPriFirstName']
${child_middlename}   Xpath=//input[@id='txtPriMiddleName']
${male1}        xpath=//span[text()='Male']
${date_of_birth1}   xpath=//input[@id='dateofbirth']
${placeofbirth_province1}   xpath=//select[@id='cmbProvince']//option[2]
${placeofbirth_city1}        xpath=//select[@id='cmbCity']//option[2]
${father_lastname1}      xpath=//input[@id='txtSecLastName']
${father_firstname1}      xpath=//input[@id='txtSecFirstName']
${father_middlename1}      xpath=//input[@id='txtSecMiddleName']
${mother_lastname1}      xpath=//input[@id='txtAuxLastName']
${mother_firstname1}     xpath=//input[@id='txtAuxFirstName']
${mother_middlename1}    xpath=//input[@id='txtAuxMiddleName']
${purpose_of_request1}    xpath=//select[@id='cmbRequestPurpose']//option[2]
${submit2}        xpath=//button[text()='Submit']

${confirm3}     xpath=//button[@id='btnBirthRequestConfirm']
${next2}        xpath=//button[@id='btnReqSummaryProceed']
######### Processing VOCENOMAR #############
${transaction_link_vocenomar}     xpath=//*[@id="ProcessingQueueTable"]/tbody/tr/td[1]/a/span
${mren_value}           xpath=//input[@id='MReN']
${submit_vocenomar}        xpath=//*[@id="btnCRDQuery"]
${add_selectionlist1}     xpath=//*[@id="anchor"]
${view_selectionlist1}    xpath=//*[@id="ViewSelectionList"]
${generate_advisory1}     xpath=//button[@id="Advisory_Btn_For_Cenos"]
${yes_confirmation1}      xpath=//button[@id='Yesbutton']
${ok_success1}      xpath=//button[@id='AlertButton']

########## Walkin Request Entry and Payment - VoCenomar ###################
${walkinpay_link}    xpath=//a[text()='Walk-in Request Entry and Payment']
${walkinpay_vocenomar}    xpath=//select[@id='WalkInTransactiontype']//option[13]
${walkinpay_child_lastname}       xpath=//input[@id='txtCmarPriLastName']
${walkinpay_child_firstname}       xpath=//input[@id='txtCmarPriFirstName']
${walkinpay_child_middlename}       xpath=//input[@id='txtCmarPriMiddleName']

${walkinpay_male}         xpath=//select[@id='txtSexCmar']//option[2]
${date_of_birth_month}      xpath=//select[@id='cenomarMonth']//option[2]
${date_of_birth_date}      xpath=//input[@id='cenomarDate']
${date_of_birth_year}      xpath=//input[@id='cenomarYear']
${walkinpay_province}      xpath=//select[@id='cenomarProvince']//option[2]
${walkinpay_city}          xpath=//select[@id='cenomarCity']//option[2]
#${walkinpay_father_lastname}      xpath=//input[@id='txtCmarSecLastName']
#${walkinpay_father_firstname}      xpath=//input[@id='txtCmarSecFirstName']
#${walkinpay_father_middlename}      xpath=//input[@id='txtCmarSecMiddleName']
${walkinpay_mother_lastname}      xpath=//input[@id='txtCmarAuxLastName']
${walkinpay_mother_firstname}     xpath=//input[@id='txtCmarAuxFirstName']
${walkinpay_mother_middlename}    xpath=//input[@id='txtCmarAuxMiddleName']
${walkinpay_purpose_of_request}    xpath=//select[@id='cenomarRequestPurpose']//option[2]
${walkinpay_save}        xpath=//*[@id="cenomarFormDetails"]/div/div[17]/div/button[1]

########### Walk-in and payment Requester details #################
${walkinpay_requester_lastname}      Xpath=//input[@id='txtReqLastName']
${walkinpay_requester_firstname}     xpath=//input[@id='txtReqFirstName']
${walkinpay_requester_middleinitial}     xpath=//input[@id='txtReqMiddleName']
${walkinpay_req_address1}     xpath=//input[@id='txtAddress']
${walkinpay_req_address2}     xpath=//input[@id='streetAddress']
${walkinpay_req_province}     xpath=//select[@id='cmbProvince']
${walkinpay_req_city}         xpath=//fieldset[@id='requesterDiv']//select[@id='cmbCity']

${walkinpay_total_amount_due}     xpath=//span[@id='TotalAmt']
${walkinpay_amount_tendered}      xpath=//input[@id='txtAmountTendered']
${walkinpay_print_or}      xpath=//button[@id='finalSubmitbtn']

${wlakinpay_validid_submit}     xpath=//button[@id='SubmitModal']
${walkinpay_selectprinter}      xpath=//select[@id='printers']//option[3]
${walkinpay_finalprint}         xpath=//button[@id='FinalPrint']
${walkinpay_get_trans_no}       xpath=//*[@id="WalkInPaymentDetails"]/tbody/tr/td[3]/span
${walkinpay_startnewclient}     xpath=//*[@id="confirmPaymentDetails"]/div[2]/div/button[4]

##### Copy Issuance Birth - Walk-in Request Entry and Payment #################################
${walkinpay_cibirth}    xpath=//select[@id='WalkInTransactiontype']//option[2]
${walkinpay_noofcopies}   xpath=//input[@id='txtReN']/preceding::input[1]
${txtBirthPriLastName}     xpath=//input[@id='txtBirthPriLastName']
${txtBirthPriFirstName}     xpath=//input[@id='txtBirthPriFirstName']
${txtBirthSex}       xpath=//select[@id='txtBirthSex']//option[2]
${birthMonth}    xpath=//select[@id='birthMonth']//option[2]
${birthDate}    xpath=//input[@id='birthDate']
${birthYear}    xpath=//input[@id='birthYear']
${birthProvince}    xpath=//select[@id='birthProvince']//option[2]
${birthCity}     xpath=//select[@id='birthCity']//option[2]
${txtBirthSecLastName}    xpath=//input[@id='txtBirthSecLastName']
${txtBirthSecFirstName}     xpath=//input[@id='txtBirthSecFirstName']
${txtBirthAuxLastName}     xpath=//input[@id='txtBirthAuxLastName']
${txtBirthAuxFirstName}    xpath=//input[@id='txtBirthAuxFirstName']
${cmbRequestPurpose}      xpath=//select[@id='cmbRequestPurpose']//option[2]
${cibirth_Save}      xpath=//*[@id="birthFormDetails"]/div/div[17]/div[2]/button[1]

######### Processing Queue - Copy Issuance Birth / Authentication pos ###########
${certificate_processing}       xpath=//a[@id='103']
${processing_queue}         xpath=//a[text()='Processing Queue']
${search_textbox}       xpath=//input[@type='search']
${transaction_link}     xpath=//*[@id="ProcessingQueueTable"]/tbody/tr/td[1]/a/span
${bren_value}           xpath=//input[@id='BrenField']
${submit_btn}           xpath=//button[@id='SearchClick']
${view_image}           xpath=//*[@id="PreliminarySearchTable"]/tbody/tr/td[7]/a
${issue_certificate}    xpath=//button[@id='print']
${continue}         xpath=//button[@id='IssueCertificateContinueBtn']
${ok_confirmation}      xpath=//button[@id="Yesbutton"]
${ok_success}       xpath=//button[@id='AlertButton']

###### Authenication Marriage - Walk-in Request Entry and Payment  #################################
#${walkinpay_authmarriage}    xpath=//select[@id='WalkInTransactiontype']//option[9]
#${walknoc}    xpath=//input[@id='txtMRenReN']/preceding::input[1]
#${huslastname}     xpath=//input[@id='txtMrgPriLastName']
#${husfirstname}     xpath=//input[@id='txtMrgPriFirstName']
#${wifelastname}     xpath=//input[@id='txtMrgSecLastName']
#${wifefirstname}     xpath=//input[@id='txtMrgSecFirstName']
#${marriagemonth}    xpath=//select[@id='mrgMonth']//option[2]
#${marriagedate}    xpath=//input[@id='mrgDate']
#${marriageYear}    xpath=//input[@id='mrgYear']
#${marriageprovince}    xpath=//select[@id='marriageProvince']//option[2]
#${marriagecity}     xpath=//select[@id='marriageCity']//option[2]
#${mrgcmbRequestPurpose}      xpath=//select[@id='cmbMarriageRequestPurpose']
#${addimage}      xpath=//button[@id='marriage-AddImageBtn']
#${authmarriage_save}      xpath=//*[@id="marriageFormDetails"]/div/div[15]/div[2]/button[1]
####### Authentication Processing ############
#${mren_value}           xpath=//input[@id='MReN']
#${authsubmit_btn}           xpath=//button[@id='btnCRDQuery']

##### Viewable Online death- Walk-in Request Entry and Payment  #################################
${walkinpay_vodeath}    xpath=//select[@id='WalkInTransactiontype']//option[11]
${deceasedslastname}     xpath=//input[@id='txtDeathPriLastName']
${deceasedsfirstname}     xpath=//input[@id='txtDeathPriFirstName']
${txtdeathsex}       xpath=//select[@id='txtDeathSex']//option[2]
${deathmonth}    xpath=//select[@id='deathMonth']//option[2]
${deathdate}    xpath=//input[@id='deathDate']
${deathyear}    xpath=//input[@id='deathYear']
${dateprovince}    xpath=//select[@id='deathProvince']//option[2]
${deathcity}     xpath=//select[@id='deathCity']//option[2]
${deathlastname}     xpath=//input[@id='txtDeathAuxLastName']
${deathfirstname}     xpath=//input[@id='txtDeathAuxFirstName']
${deathpurpose}      xpath=//select[@id='cmbDeathRequestPurpose']//option[2]
${vodeath_save}      xpath=//*[@id="deathFormDetails"]/div/div[17]/div[2]/button[1]

########## VO-Death Processing ############
${vodren_value}           xpath=//input[@id='DrenField']     #//*[@id="DrenField"]
${vodeathsubmit}           xpath=//button[@id='SearchClick']
${vodeath_viewimage}         xpath=//*[@id="PreliminarySearchTable"]/tbody/tr/td[6]/a

######### Doc-print - Death ###############
${walkinpay_dpdeath}    xpath=//select[@id='WalkInTransactiontype']//option[16]
${vo_processed_tranno}     xpath=//input[@id='txtTransactionNo']
${dpdeath_noofcopy}       xpath=//input[@id='txtDRenReN']/preceding::input[1]
${dpdeath-Save}         xpath=//*[@id="deathFormDetails"]/div/div[17]/div[2]/button[1]

######### VO-CENODEATH / CENODEATH - Walk-in Request Entry Payment and Walk-in Request Entry #####################
${vo_cenodeath_option}  xpath=//select[@id='WalkInTransactiontype']//option[14]

${cenod_last}  xpath=//input[@id='txtcenodeathPriLastName']
${cenod_first}  xpath=//input[@id='txtcenodeathPriFirstName']
${cenodeathsex}       xpath=//select[@id='txtcenodeathSex']//option[2]
${cenodmonth}    xpath=//select[@id='cenodeathMonth']//option[2]
${cenoddate}    xpath=//input[@id='cenodeathDate']
${cenodyear}    xpath=//input[@id='cenodeathYear']
${cenodprovince}    xpath=//select[@id='cenodeathProvince']//option[2]
${cenodcity}     xpath=//select[@id='cenodeathCity']//option[2]
${cenodlastname}     xpath=//input[@id='txtcenodeathAuxLastName']
${cenodfirstname}     xpath=//input[@id='txtcenodeathAuxFirstName']
${cenodpurpose}      xpath=//select[@id='cenodeathRequestPurpose']//option[2]
${cenod_save}       xpath=//*[@id="cenodeathFormDetails"]/div/div[17]/div/button[1]

########## VO-CENODEATH Processing / CENODEATH - Walk-in Request Entry and Payment ############
${vocenodeath_lastname}      xpath=//input[@id='lastName']
${vocenodeath_firstname}     xpath=//input[@id='firstName']
${vocenodeathsubmit}         xpath=//button[@id='btnCRDQuery']
${vocenodeath_ok1}           xpath=//button[@id='btnSuccessOK']
${vocenomar_veisearch}       xpath=//button[@id='idBacktoVei']
${vocenodeath_ok2}           xpath=//button[@id='btnSuccessOK']
${generate_cenodeath}        xpath=//button[@id='idCenodeath']
${vocenodeath_okcon}         xpath=//button[@id='CEYesButton']
${vocenodeath_oksuc}         xpath=//button[@id='AlertButton']

######### Doc-print - CENODEATH ##############
${qtn}      xpath=//input[@id='queueTicketNo']
${walkinpay_cenodeath}    xpath=//select[@id='WalkInTransactiontype']//option[19]
${cenodeath_processed_tranno}     xpath=//input[@id='txtTransactionNo']
${cenodeath_noofcopy}       xpath=//input[@id='txtCenodeathReN']/preceding::input[1]
${cenodeath-Save}         xpath=//*[@id="cenodeathFormDetails"]/div/div[17]/div/button[1]

######### CENODEATH - Walk-in Request Entry and Payment #####################
${qtn}      xpath=//input[@id='queueTicketNo']
${cenodeath_option}  xpath=//select[@id='WalkInTransactiontype']//option[6]
${cenodeath_noofcopy}       xpath=//input[@id='txtCenodeathReN']/preceding::input[1]

########## CENODEATH -  Walkin Request Entry ###################
${walkin_link}    xpath=//a[text()='Walk-in Request Entry']
${walkin_cenodeath}    xpath=//select[@id='WalkInTransactiontype']//option[6]
${cenodeath_noofcopy}       xpath=//input[@id='txtCenodeathReN']/preceding::input[1]
${mobile_no}        xpath=//input[@id='txtMobile']

${walkin_submit}        xpath=//button[@id='finalSubmitbtn']
${walkin_get_trans_no}       xpath=//*[@id="WalkInTranDetails"]/tbody/tr/td[2]/span
${walkin_startnewclient}     xpath=//*[@id="confirmDetails"]/div[2]/div/button[2]

########## VO-CENOMAR -  Walkin Request Entry ###################
${walkin_vocenomar}    xpath=//select[@id='WalkInTransactiontype']
${walkin_vocenomar_child_latsname}    xpath=//input[@id='txtCmarPriLastName']
${walkin_vocenomar_child_firstname}    xpath=//input[@id='txtCmarPriFirstName']
${walkin_vocenomar_male}    xpath=//select[@id='txtSexCmar']
${walkin_vocenomar_month}    xpath=//select[@id='cenomarMonth']
${walkin_vocenomar_date}    xpath=//input[@id='cenomarDate']
${walkin_vocenomar_year}    xpath=//input[@id='cenomarYear']
${walkin_vocenomar_pob_province}    xpath=//select[@id='cenomarProvince']
${walkin_vocenomar_pob_city}    xpath=//select[@id='cenomarCity']
${walkin_vocenomar_mother_latsname}    xpath=//input[@id='txtCmarAuxLastName']
${walkin_vocenomar_mother_firstname}    xpath=//input[@id='txtCmarAuxFirstName']
${walkin_vocenomar_purpose}    xpath=//select[@id='cenomarRequestPurpose']
${walkin_vocenomar_save}    xpath=(//button[text()='Save'])[5]

${walkin_wasprint_yes}      xpath=//button[@id='Yesbutton']
${walkin_printer_select}    xpath=//select[@id='printers']/option[3]
${walkin_print_was}         xpath=//button[text()='Print']
${walkin_ok_confrm}         xpath=//button[@id='btnSuccessOK']

########## Accouting ### Subsidiary Ledger Report ###########
${accounting}       xpath=//a[@id='211']
${acc_reporthome}       xpath=//a[text()='Accounting Report Home']
${subsidiary_ledger_report}     xpath=//h5[text()='Subsidiary Ledger Report']
${select_outlet}        xpath=//*[@id="SLSearchDataDiv"]/div[1]/div[1]/div/select/option[5]
${select_month}     xpath=//select[@id='IdMonth']
${select_year}      xpath=//*[@id="SLSearchDataDiv"]/div[1]/div[3]/div/select/option[4]
${generate_reportbtn}    xpath=//*[@id="SLSearchDataDiv"]/div[1]/div[4]/button
${view}     xpath=//a[text()='View']
${print_report}     xpath=//button[@id='print']
${select_printername}       xpath=//select[@id='printers']/option[3]
${print_report1}      xpath=//button[@id='FinalPrint']
${click_yes}        xpath=//*[@id="PrintOK"]/div/div/div[2]/div[3]/button[1]
${click_ok}         xpath=//button[@id="btnSuccessOK"]

${click_export}     xpath=//button[text()='Export']
${click_export_excel}     xpath=//button[text()='EXCEL']
${click_export_excel_ok}     xpath=//button[@id='AlertButton']
${click_export_pdf}     xpath=//button[text()='PDF']

######## Accouting ### List of Deposited Collections ###########
${report_of_collections_and_deposits}     xpath=//h5[text()='Report of Collections and Deposits']
${rcd_or_date}     xpath=//input[@id='dtTranDate']
${generate/view_reportbtn}    xpath=//button[@id='search']
${generate/view_reportbtn_yes}    xpath=//button[@id='Yesbutton']
${view_rcd}     xpath=(//a[text()='View'])[4]

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
${reg_month}    xpath=//select[@id='MonthName']
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
${vei_dom_month}     xpath=//*[@id="marriageParentsViewModelDiv"]/div[4]/div[1]/div/select
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
${vei_view_edit_crd}     xpath=//a[text()='Search/Edit CRD/CDLI']
${vei_search_batchno}          xpath=//input[@id='batchNumber']
${vei_search_countryname}          xpath=//select[@id='registrationCountryForBatch']/option[119]
${vei_search_year}       xpath=//input[@id='registrationYear']
${vei_search_regbook}      xpath=//select[@id='registryBookTypeForBatch']/option[5]
${vei_searchbtn}        xpath=//select[@id='registryBookTypeForBatch']/following::button[1]
${vei_reg_hyperlink}        xpath=//*[@id="VeiBody"]/tr/td[4]/a/span
${vei_edit}         xpath=//button[@id="EditVEIRecord"]
${vei_editsubmit}       xpath=//button[@id="generalBirthSubmit"]
${vei_okeditsuccess}        xpath=//button[@id="AlertButton"]
### Quality check reports/Certification Pass Report ###
${vei_pass_quality_check_report}      xpath=//a[text()='Quality Check Reports']
${vei_pass_report_type}      xpath=//select[@id='reportType']/option[4]
${vei_continue}         xpath=//button[@id='continue']
${vei_pass_search_batchno}          xpath=//input[@id='batchNumber']
${vei_pass_search_countryname}      xpath=//select[@id='CountryName']/option[119]
${vei_search_year}       xpath=//input[@id='registrationYear']
${vei_pass_search_regbook_marriage}      xpath=//select[@id='registrationBookType']/option[5]
${vei_generate_report}          xpath=//button[@id='generatePassReport']

######### PremiumMultipleAnnotationMarriage #####################
${transaction_tpye_mulannomarriage}    xpath=//select[@id='cmbCertificateType']//option[22]
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
${payment_refnum}        xpath=//input[@id='PmtRefNo']
${check_date}            xpath=//input[@id='ChkDate']
${issuer_bank}           xpath=//input[@id='txtSource']
${check_amount}          xpath=//input[@id='txtTotalCheckAmount']
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

##### VEI- RegularSubmissionCRD - Birth #######
${crd_reg_city}     xpath=//select[@id='LCRCity']/option[2]
${crd_regbooktype}     xpath=//select[@id='ddlDocType']/option[2]
### Create CRD Batch ###
${crd_reg_country_batch}     xpath=//select[@id='CountryName']/option[197]
${crd_reg_city_batch}        xpath=//select[@id='CityName']/option[2]
${crd_reg_booktype_batch}     xpath=//select[@id='RegistryBookTypeName']/option[2]
### Birth form fields ###
${crd_child_firstname}    xpath=//*[@id="childViewModelDiv"]/div[1]/div[1]/div/input
${crd_child_middlename}    xpath=(//input[contains(@placeholder,'Middle Name')])[1]
${crd_child_lastname}     xpath=//*[@id="childViewModelDiv"]/div[1]/div[3]/div/input
${crd_sex}                xpath=//*[@id="childViewModelDiv"]/div[2]/div/div/select/option[2]
${crd_dateofbirth_day}     xpath=//*[@id="childViewModelDiv"]/div[3]/div[1]/div/input
${crd_dateofbirth_month}    xpath=//*[@id="childViewModelDiv"]/div[3]/div[2]/div/select/option[2]
${crd_dateofbirth_year}     xpath=//*[@id="childViewModelDiv"]/div[3]/div[3]/div/input
${crd_placetype}     xpath=//*[@id="childViewModelDiv"]/div[4]/div[1]/div/select/option[2]
${crd_nameofhospital}     xpath=//*[@placeholder="Name of Hospital/Clinic/Institution"]
${crd_pob_province}     xpath=//select[@id='PlaceofBirthProvince']/option[2]
${crd_pob_city}     xpath=//select[@id='PlaceofBirthCity']/option[2]
${crd_pob_barangay}     xpath=//select[@id='PlaceofBirthBarangay']/option[2]
${crd_typeofbirth}      xpath=//*[@id="childViewModelDiv"]/div[7]/div[1]/div/select/option[2]
${crd_birthorder}      xpath=//*[@id="childViewModelDiv"]/div[7]/div[3]/div/select/option[2]
${crd_weight}      xpath=//*[@id="childViewModelDiv"]/div[8]/div/div/input
${crd_mother_firstname}       xpath=//input[@placeholder="Mother's First Name"]
${crd_mother_lastname}        xpath=//input[@placeholder="Mother's Last Name"]
${crd_mother_Citizenship}     xpath=//*[@id="motherViewModelDiv"]/div[2]/div[1]/div/select/option[2]
${crd_mother_religion}        xpath=//*[@id="motherViewModelDiv"]/div[2]/div[2]/div/select/option[46]
${crd_mother_ethnicity}       xpath=//*[@id="motherViewModelDiv"]/div[2]/div[3]/div/select/option[2]
${crd_totalno_child_alive}       xpath=//*[@id="motherViewModelDiv"]/div[3]/div[1]/div/select/option[2]
${crd_noofchild_stillalive}      xpath=//*[@id="motherViewModelDiv"]/div[3]/div[2]/div/select/option[2]
${crd_child_nodead}      xpath=//*[@id="motherViewModelDiv"]/div[3]/div[3]/div/select/option[2]
${crd_mother_occupation}       xpath=//*[@id="motherViewModelDiv"]/div[4]/div[1]/div/select/option[2]
${crd_mother's_age}           xpath=//*[@id="motherViewModelDiv"]/div[4]/div[2]/div/select//option[17]
${crd_mother's_residence_province}     xpath=//select[@id='MothersResidenceProvince']/option[2]
${crd_mother's_residence_city}     xpath=//select[@id='MothersResidenceCity']/option[2]
${crd_mother's_barangay}     xpath=//select[@id='MothersResidenceBarangay']/option[2]
${crd_dom_month}      xpath=//*[@id="marriageParentsViewModelDiv"]/div[4]/div[1]/div/select
${crd_dom_day}      xpath=//*[@id="marriageParentsViewModelDiv"]/div[4]/div[2]/div/input
${crd_dom_year}      xpath=//*[@id="marriageParentsViewModelDiv"]/div[4]/div[3]/div/input
${crd_pom_province}      xpath=//select[@id='PlaceofMarriageBirthProvince']/option[2]
${crd_pom_city}      xpath=//select[@id='PlaceofMarriageBirthCity']/option[2]
${crd_legitimacy_status}      xpath=//*[@id="marriageParentsViewModelDiv"]/div[8]/div/div/select/option[3]
${crd_attendant}      xpath=//*[@id="marriageParentsViewModelDiv"]/div[10]/div[1]/div/select/option[2]
${crd_attendant_title}      xpath=//input[@placeholder='Attendant - Title or Position']
${crd_cert_attendant_month}      xpath=//*[@id="marriageParentsViewModelDiv"]/div[11]/div[1]/div/select
${crd_cert_attendant_day}      xpath=//*[@id="marriageParentsViewModelDiv"]/div[11]/div[2]/div/input
${crd_cert_attendant_year}      xpath=//*[@id="marriageParentsViewModelDiv"]/div[11]/div[3]/div/input
${crd_informant}      xpath=//*[@id="marriageParentsViewModelDiv"]/div[12]/div/div/select/option[2]
${crd_dateofreg}      xpath=//input[@id='RegistrationDate']
${crd_reg_status}      xpath=//*[@id="marriageParentsViewModelDiv"]/div[16]/div[3]/div/select/option[3]
${crd_batch_submit}      xpath=//button[@id='generalBirthSubmit']
${crd_alert_ok}       xpath=//button[@id='AlertButton']
${crd_batch_ok}       xpath=//div[@id='popUpAlertText' and text()]/following::button[1]
### Quality check reports/Certification Pass Report ###
${vei_pass_search_countryname_peru}      xpath=//select[@id='CountryName']/option[197]
${vei_pass_search_countryname_phli}      xpath=//select[@id='CountryName']/option[198]
${vei_pass_search_provincename}      xpath=//select[@id='ProvinceName']/option[2]
${vei_pass_search_cityname}      xpath=//select[@id='CityName']/option[2]
${vei_search_year}       xpath=//input[@id='registrationYear']
${vei_pass_search_regbook_birth}      xpath=//select[@id='registrationBookType']/option[2]
${vei_pass_search_regbook_ra9255}      xpath=//select[@id='registrationBookType']/option[17]   ### for cdli pass report
${vei_generate_report}          xpath=//button[@id='generatePassReport']
${back_to_report_type}          xpath=//a[text()='Back to Report Type']
${back_to_report_type}          xpath=//a[text()='Back to Report Type']

${back_vei_home}                 xpath=//a[text()='Back to Vital Events Information Home']
${tran_crd_transmit_to_co}       xpath=//a[@id='TransmitCRDsSearch']
${tran_crd_transmit_co_regyear}     xpath=//input[@id='txtCrdSearchRegYear']
${tran_crd_transmit_co_regmonth}      xpath=//select[@id='SearchddlMonth']
${tran_crd_transmit_co_search}       xpath=//button[@id='btnSearchCRD']
${tran_crd_transmit_co_search_textbox}      xpath=//div[@id='transmitCRDSearchTable_filter']//input
${tran_crd_transmit_co_select_chkbox}       xpath=//div[@id="transmitCRDSearchTable_filter"]/following::span[1]
${tran_crd_transmit_co_clickok}       xpath=//button[@id='btnTransmittalOK']
${tran_crd_transmit_co_button}       xpath=//button[@id='btnTransmit']
${tran_crd_transmit_co_view_tran_report}       xpath=//button[text()='View Transmittal Report']
${tran_crd_transmit_co_copy_tran_report_num}       xpath=//strong[@id='spnTransmittalReference']
${tran_crd_transmit_co_print_tran_report}       xpath=//button[@id='btnPrintTransmittal']
${back_to_vei_home_in_transmitto_co}    xpath=//*[@id="divCRDSubmissionSearchResult"]/h5/a
 ### Changing work unit to DPU ###
${office_change_dpu}    xpath=//select[@id='txtOfficeId']/option[6]
${save_userdetails}     xpath=//button[@id='btnUserConfirm']
### Receive CRD Batchs ####
${crd_receive_crd_batch}       xpath=//a[text()='Receive CRD/CDLI Batches']
${crd_search_tran_reference_num}     xpath=//input[@id='transmittalReferenceNumber']
${crd_tran_ref_search}     xpath=//button[@id='generalBirthSubmit']
${crd_receive_batch_date}      xpath=//input[@placeholder='MM/DD/YYYY']
${crd_receive_batch_save}      xpath=//button[@id='saveReceiveDCC']
${crd_receive_batch_save_ok}      xpath=//button[@id='AlertButton']
${crd_receive_batch_backtosearch}      xpath=//a[text()='Back to Search']

### Forward Batches to DCC ###
${crd_forward_batchs_dcc}      xpath=//a[text()='Forward Batches to DCC/Concerned Archive Unit']
${crd_forward_batchs_dcc_regyear}     xpath=//input[@id='registrationYear']
${crd_forward_batchs_dcc_regmonth}      xpath=//select[@id='registrationMonth']
${crd_forward_batchs_dcc_search}      xpath=//button[@id='searchForwardDCC']
${crd_forward_batchs_dcc_search_textbox}      xpath=//*[@id="ForwardBatchResultsDCCTable_filter"]/label/input
${crd_forward_batchs_dcc_select_chkbox}       xpath=//*[@id="ForwardBatchResultsDCCTable"]/tbody/tr/td[1]/div/label/span
${crd_forward_batchs_dcc_submit}       xpath=//button[@id='submitForwardDCC']
### for CDLI RA 9255 ###
${cdli_forward_batchs_dcc_submit_preview}       xpath=//*[@id="assetModalBody"]/div[3]/div[1]/div[2]/div/textarea
${cdli_forward_batchs_dcc_submit_preview_select}       xpath=//*[@id="transmittodropdown"]/div/select//option[2]
${cdli_forward_batchs_dcc_transmitto_archiveunit}       xpath=//button[@id='transmitToDCCCDLI']
${cdli_forward_batchs_dcc_transmitto_archiveunit_ok}       xpath=(//button[@id='CustomSuccessOkBtn'])[2]

${crd_forward_batchs_dcc_transmit_to_dcc_btn}       xpath=//button[@id='transmitToDCC']
${crd_forward_batchs_dcc_suc_ok}       xpath=(//button[@id='CustomSuccessOkBtn'])[1]
${crd_forward_batchs_copy_ref_num}       xpath=//span[@id='spnTransmittalReference']
 ### Changing work unit to Document capture center ###
${office_change_dcc}    xpath=//select[@id='txtOfficeId']/option[4]
${save_userdetails}     xpath=//button[@id='btnUserConfirm']
### Receive CRD Batch at DCC final ###
${crd_receive_crd_batch_dcc}       xpath=//a[text()='Receive Batch/CDLI at DCC']
${crd_search_tran_reference_num_dcc}     xpath=//input[@id='transmittalReferenceNumberDCC']
${crd_receive_crd_batch_dcc_search}     xpath=//button[@id='searchReceiveDCC']
${crd_receive_crd_batch_dcc_search_save}     xpath=(//button[@id='saveReceiveDCC'])[1]
${crd_receive_crd_batch_dcc_search_save_ok}     xpath=//button[@id='AlertButton']

### Document Conversion CRD###
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

### Document Conversion CDLI ###
### CDLI Match Rework ###
${dc_cdli_match/rework}     xpath=//a[@id='CDLICLICK']
${dc_cdli_match/rework_search}     xpath=//*[@id="ViewBatchListCRDTable_filter"]/label/input
${select_cdli_registry}     xpath=//select[@id='RegistryBookTypeName']/option[5]
${select_cdli_registry_search}     xpath=//button[@id='search']
${select_cdli_proper}     xpath=(//input[@id='properseperatorpage'])[1]
${select_cdli_attachment}     xpath=(//input[@id='attachmentseperatorpage'])[1]
${select_cdli_saveandcontinue}     xpath=//button[@id='saveAndContinue']
### QA pass ###
${cdliqachecking}  xpath=//h5[text()='Perform Quality Assurance (QA) Check on CDLIs']
${cdliacceptmatch}  xpath=//button[@id='acceptMatch']
${lastcdliacceptmatch}  xpath=//button[@id='AcceptBatch']
${qapassedok}  xpath=//button[@id='btnSuccessOK']

### Data Staging ####
${datastaging_link}     xpath=//a[@id='153']
${datastaging_home}      xpath=//a[text()='Data Staging Home']
${datastaging_monitor_datastaging}     xpath=//h5[text()='Monitor Data Staging']
${datastaging_monitor_searchbtn}      xpath=//button[@id='DataStagingSearchBtn']

###### Copy Issuance - CENOMAR ##########
${transaction_tpye_cenomar}    xpath=//select[@id='cmbCertificateType']
${no_of_copies}        xpath=//input[@id='txtNoOfCopies']
${cenomar_ornum}      xpath=//*[@id="Payment"]/tbody/tr/td[2]
### Reverse OR ###
${reverse_payment}     xpath=//a[text()='Reverse Payment']
${reverse_ornum_txt}        xpath=//input[@id='txtSeatch']
${reverse_ornum_saecrh_btn}      xpath=//button[@id='btnsearch']
${reverse_ornum_search_reason}      xpath=//textarea[@id='txtarea']
${reverse_pay_btn}      xpath=//button[@id='ReverseButton']
${reversepay_yes}      xpath=//button[@id='Yesbutton']
${reversepay_withdraw}      xpath=//button[@id='SupOvrCancelButton']
${reversepay_withdraw_ok}      xpath=//button[@id='AlertButton']
${reversepay_soapprove_ok}      xpath=//button[@id='SupOvrapproveButton']
${reversepay_soapprove_finalok}      xpath=//button[@id='AlertButton']
##### SO approval screen #####
${supervisor_override}      xpath=//a[text()='Supervisor Override']
${approve_so}      xpath=//button[@id='1']

##### Encode Endorsed CRD and EE Approve ####
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
${EEsearch_selectrdbtn}     xpath=//tbody[@id="VeiBody"]/tr/td[1]/div/label/span[2]
${createEE_continue}     xpath=//*[@id="continue" and text()="Continue"]
${createEE_choosefile}     xpath=//input[@id='fileCRDDocument']
${createEE_choosefile_ctn}     xpath=//input[@id="zoomout"]/following::button[2]
${createEE_choosefile_ctn_selectrdo}     xpath=//input[@id='EEReferenceNumber']/preceding::span[1]
${createEE_inputrandomno}     xpath=//input[@id='EEReferenceNumber']
${createEE_inputrandomno_search}     xpath=//button[@id='EEReferenceSearch']
${createEE_inputrandomno_search_ok}     xpath=//button[@id='AlertButton']
${createEE_clk_autogeneratebtn}     xpath=(//button[@id='Search'])[2]
${createEE_clk_autogeneratebtn_copyno}     xpath=//h4[@id="assetModalHeader"]/span
${createEE_clk_autogeneratebtn_submit}     xpath=//button[@id='remove']/following::button[1]
${createEE_clk_autogeneratebtn_submit2}     xpath=//button[@id='submitClick']
${createEE_clk_autogeneratebtn_submit2_ok}     xpath=//button[@id='AlertButton']
${createEE_vip_party}     xpath=//a[text()='VIP / Party Waiting']
${createEE_vip_party_selectrdobtn}     xpath=//input[@id='EEReferenceNumber']/preceding::span[1]
${createEE_vip_party_selectrdobtn_entereeno}     xpath=//input[@id='EEReferenceNumber']
${createEE_vip_party_selectrdobtn_entereeno_serach}     xpath=//button[@id='Search2']
${createEE_vip_party_selectrdobtn_entereeno_serach_clk}     xpath=//tbody[@id="VeiBody"]/tr/td[1]/a
${Rep_soyes}    //button[@id='Yesbutton']
${EE_approvebtn}     xpath=//button[@id='approve']
${EE_approvebtn_yes}     xpath=//*[@id="confirmPopup"]/div/div/div[2]/div[2]/button[1]
${EE_approvebtn_yes_text}     xpath=//textarea[@id='approversComments']
${EE_approvebtn_yes_sbumit}     xpath=//button[@id='ApproveSubmit']
${EE_approvebtn_yes_sbumit_ok}     xpath=//button[@id='AlertButton']

#### link and Unlnik ###
${rso_lastname}     xpath=//input[@id='lastName']
${rso_firstname}     xpath=//input[@id='firstName']
${rso_mother_lasttname}     xpath=//input[@id='MotherLastName']
${rso_mother_firsttname}     xpath=//input[@id='MotherFirstName']
${rso_addselectionlist1}     xpath=(//a[@id='anchor'])[1]
${rso_addselectionlist2}     xpath=(//a[@id='anchor'])[2]
### Link MreN ####
${rso_select_radiobtn}     xpath=(//input[@id='marriage'])[1]
${rso_mren_link}     xpath=//button[@id='btnMReNLink']
${rso_mren_link_reason}     xpath=//select[@id='b_reasonList']
${rso_mren_link_reason_ok}     xpath=//button[@id='b_addReasonLink']
${rso_mren_link_reason_ok_confirm}     xpath=//button[@id='b_btnMModalConfirm']
#//button[@id='AlertButton']
${rso_mren_link_reason_success_ok}     xpath=(//button[@id='submitdone'])[3]

##### Review Linking #####
${rso_review_linking}     xpath=//a[text()='Review Linking']
${rso_review_linking_selectradiobtn}     xpath=//span[text()='Transaction Number']
${rso_review_linking_enter_trannum}     xpath=//input[@id='transactionNumber']
${rso_review_linking_searchbtn}     xpath=//Button[@id='Search']
${rso_review_linking_click_trannum}     xpath=//*[@id="reviewLinkingTable"]/tbody/tr/td[1]/a
${rso_review_linking_performcrd_cdli_seacrh}     xpath=//button[@id='CRDSearch']
${rso_review_linking_valid}     xpath=//button[@id='Approve']
${rso_review_linking_valid_ok}     xpath=//button[@id='AlertButton']
#### Unlink MreN ####
${rso_mren_unlink}     xpath=//button[@id='btnMReNUnLink']
${rso_mren_unlink_reason}     xpath=//input[@id='brenUnlinkingReasonTxt']
${rso_mren_unlink_reason_ok}     xpath=//button[@id='brenAddReason_Btn']
${rso_mren_unlink_reason_ok_confirm}     xpath=//button[@id='btnmdAlertOK']
${rso_mren_unlink_reason_ok_confirm_suspend_yes}     xpath=//button[@id='Yesbutton']
${rso_mren_unlink_reason_ok_confirm_suspend_yes_ok}     xpath=//button[@id='insert_Birth_Request_Btn']

#### Approve Unlinking ####
${rso_approve_unlinking}     xpath=//a[text()='Approve Unlinking']
${rso_MreN_unlinking}     xpath=(//a[text()='MREN Unlinking'])[1]

#### Generate An Advisory  ####
${rso_add_selectionlist}    xpath=(//*[@id="anchor"])[1]
${rso_view_selectionlist}   xpath=//*[@id="ViewSelectionList"]
${rso_generate_advisory}    xpath=//button[@id="Advisory_Btn_For_Cenos"]
${yes_confirmation}      xpath=//button[@id='Yesbutton']
${ok_success}      xpath=//button[@id='AlertButton']

### Request entry # Encoding of CENOMAR # Exact Match Exists > Trigger SO > Approve SO ########
${reqentry_ce_BReN}      xpath=//input[@id='txtReN']
${reqentry_ce_BReN_purpose_of_request}    xpath=//select[@id='cmbRequestPurpose']//option[2]
${reqentry_ce_BReN_submit}      xpath=//button[text()='Submit']
${reqentry_ce_rso_nopdve/vei_data_ok}    xpath=//button[@id='btnSuccessOK']
${reqentry_ce_rso_vei_search}    xpath=//button[@id='idBacktoVei']
${reqentry_ce_rso_generate_no_marriage_cert}    xpath=//button[@id='idCenomar']
${reqentry_ce_rso_generate_no_marriage_cert_yes}    xpath=//button[@id='CEYesButton']
${reqentry_ce_rso_generate_no_marriage_cert_yes_ok}    xpath=//button[@id='AlertButton']

### 258552 # Regular Submission  - RA-9255 Premium Annotation-Birth ### Request Entry ########
### Encode LCR CDLI Submission ###
${encode_lcr_cdli_submission}     xpath=//a[text()='Encode LCR CDLI Submission']
${cdli_reg_city}     xpath=//select[@id='LCRCity']/option[2]
${cdli_regbooktype}     xpath=//select[@id='ddlRegBookType']
${cdli_doc_type}     xpath=//select[@id='ddlDocType']//option[2]
${cdli_docsub_type}     xpath=//select[@id='ddlDocSubType']//option[2]
${cdli_registry_no}     xpath=//input[@id='txtRegistryStart']
${cdli_datereceived}     xpath=//input[@id='dtReceived']
${cdli_save}        xpath=//button[@id='btnSave']
${cdli_chkbox1}     xpath=//input[@id='Que_1']
${cdli_chkbox6}     xpath=//input[@id='Que_6']
${cdli_chkbox8}     xpath=//input[@id='Que_8']
${cdli_chkbox11}    xpath=//input[@id='Que_11']
${cdli_chkbox14}    xpath=//input[@id='Que_14']
${cdli_chkbox16}    xpath=//input[@id='Que_16']
${cdli_next}      xpath=//button[@id='WizardSearchNextBtn']
${cdli_wizardnext}      xpath=//a[@id='wizardSummaryNextBtn']
${cdli_confirm}      xpath=//button[@id='WizardSearchPreviewConfirmBtn']
${cdli_confirm_ok}      xpath=//button[@id='btnOK']
${cdli_confirm_ok_no}      xpath=//p[@id='modaltxt' and text()='Add another submission record?']/following::a[1]
#//p[@id='modaltxt' and text()='Add another submission record?']/following::a[1]
#//*[@id="submissionconf"]/div/div/div[2]/div[2]/a
### CDLI Batch ###
${cdli_batch}     xpath=//a[text()='Create CDLI Batch']
${cdli_batchno}     xpath=//input[@id='batchNo']
${cdli_batch_country_name}     xpath=//select[@id='CountryName']
${cdli_batch_city_name}     xpath=//select[@id='CityName']
${cdli_batch_registration_year}     xpath=//input[@id='registrationYear']
${cdli_batch_registration_month}     xpath=//select[@id='MonthName']
${cdli_batch_regbooktype}     xpath=//select[@id='RegistryBookTypeName']
${cdli_batch_registry_no_start}     xpath=(//input[@id='txtRegistryStart'])[1]
${cdli_batch_registry_no_end}     xpath=//input[@id='txtRegistryEnd']
${cdli_batch_actualcount}     xpath=//input[@id='actualDocumentCount']
${cdli_batch_problemcount}     xpath=//input[@id='problemDocumentCount']
${cdli_batch_submit}      xpath=//button[text()='Submit']
${cdli_batch_submit_ok}      xpath=(//button[@id='btnSuccessOK'])[1]

${cdli_batch_regno}      xpath=//input[@id='registryNumber']
${cdli_batch_docsubtype}      xpath=//select[@id='ddlDocSubType']//option[2]
${cdli_batch_continue}      xpath=//button[@id='ContinueVEIRecord']

${cdli_batch_Petition_reg_province}      xpath=//select[@id='MothersResidenceProvince']
${cdli_batch_Petition_reg_city}      xpath=//select[@id='MothersResidenceCity']
${cdli_batch_Petition_reg_month}      xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[2]/div[1]/div/select
${cdli_batch_Petition_reg_day}      xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[2]/div[2]/div/input
${cdli_batch_Petition_reg_year}      xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[2]/div[3]/div/input
${cdli_batch_regno_birth}      xpath=//input[@id='RegistryNoBirth']
${cdli_batch_child_firstname}      xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[4]/div[1]/div/input
${cdli_batch_child_middlename}      xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[4]/div[2]/div/input
${cdli_batch_child_lastname}       xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[4]/div[3]/div/input
${cdli_batch_dob_day}       xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[5]/div[1]/div/input
${cdli_batch_dob_month}       xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[5]/div[2]/div/select
${cdli_batch_dob_year}       xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[5]/div[3]/div/input
${cdli_batch_sex}      xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[6]/div/div/select
${cdli_batch_pob_province}    xpath=//select[@id='LIPlaceofBirthProvince']
${cdli_batch_pob_city}    xpath=//select[@id='LIPlaceofBirthCity']
${cdli_batch_mother_fn}    xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[8]/div[1]/div/input
${cdli_batch_mother_ln}    xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[8]/div[3]/div/input
${cdli_batch_father_fn}    xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[9]/div[1]/div/input
${cdli_batch_father_ln}    xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[9]/div[3]/div/input
${cdli_batch_regdate_month}    xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[10]/div[1]/div/select
${cdli_batch_regdate_day}    xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[10]/div[2]/div/input
${cdli_batch_regdate_year}    xpath=//*[@id="RABirthFormDetailsDiv"]/div/div[10]/div[3]/div/input
${cdli_batch_final_submit}    xpath=//button[@id='generalBirthSubmit']
${cdli_batch_final_submit_ok}    xpath=//button[@id='AlertButton']
${cdli_batch_final_submit_success}    xpath=//button[@id='btnSuccessOK']
###########
### Encode LCR CDLI Submission - CDLI Marriage for PA-M ###
${encode_lcr_cdli_mrg_submission}     xpath=//a[text()='Encode LCR CDLI Submission']
${cdli_mrg_reg_city}     xpath=//select[@id='LCRCity']/option[2]
${cdli_mrg_regbooktype}     xpath=//select[@id='ddlRegBookType']
${cdli_mrg_doc_type}     xpath=//select[@id='ddlDocType']
${cdli_mrg_docsub_type}     xpath=//select[@id='ddlDocSubType']
${cdli_mrg_registry_no}     xpath=//input[@id='txtRegistryStart']
${cdli_mrg_datereceived}     xpath=//input[@id='dtReceived']
${cdli_mgr_next}        xpath=//button[@id='btnSave']
${cdli_mrg_chkbox1}     xpath=//input[@id='Que_1']
${cdli_mrg_chkbox4}     xpath=//input[@id='Que_4']
${cdli_mrg_chkbox6}     xpath=//input[@id='Que_6']
${cdli_mrg_chkbox9}     xpath=//input[@id='Que_9']
${cdli_mrg_chkbox11}     xpath=//input[@id='Que_11']
${cdli_mrg_chkbox13}     xpath=//input[@id='Que_13']
${cdli_mrg_next}      xpath=//button[@id='WizardSearchNextBtn']
${cdli_mrg_wizardnext}      xpath=//a[@id='wizardSummaryNextBtn']
${cdli_mrg_confirm}      xpath=//button[@id='WizardSearchPreviewConfirmBtn']
${cdli_mrg_confirm_ok}      xpath=//button[@id='btnOK']
${cdli_mrg_confirm_ok_no}      xpath=//p[@id='modaltxt' and text()='Add another submission record?']/following::a[1]
### CDLI Batch ###
${cdli_mrg_batch}     xpath=//a[text()='Create CDLI Batch']
${cdli_mrg_batchno}     xpath=//input[@id='batchNo']
${cdli_mrg_batch_country_name}     xpath=//select[@id='CountryName']
${cdli_mrg_batch_city_name}     xpath=//select[@id='CityName']
${cdli_mrg_batch_registration_year}     xpath=//input[@id='registrationYear']
${cdli_mrg_batch_registration_month}     xpath=//select[@id='MonthName']
${cdli_mrg_batch_regbooktype}     xpath=//select[@id='RegistryBookTypeName']
${cdli_mrg_batch_registry_no_start}     xpath=(//input[@id='txtRegistryStart'])[1]
${cdli_mrg_batch_registry_no_end}     xpath=//input[@id='txtRegistryEnd']
${cdli_mrg_batch_actualcount}     xpath=//input[@id='actualDocumentCount']
${cdli_mrg_batch_problemcount}     xpath=//input[@id='problemDocumentCount']
${cdli_mrg_batch_submit}      xpath=//button[text()='Submit']
${cdli_mrg_batch_submit_ok}      xpath=(//button[@id='btnSuccessOK'])[1]

${cdli_mrg_batch_regno}      xpath=//input[@id='registryNumber']
${cdli_mrg_batch_docsubtype}      xpath=//select[@id='ddlDocSubType']//option[24]
${cdli_mrg_batch_continue}      xpath=//button[@id='ContinueVEIRecord']

${cdli_mrg_batch_infocorrected}      xpath=//*[@id="InformationCorrectedtoshow"]/div[2]/div[1]/div/input
${cdli_mrg_batch_Petitioners_Relationship}      xpath=//*[@id="CDMarriageFormDetailsDiv"]/div/div[3]/div[1]/div/select/option[2]
${cdli_mrg_batch_Petition's Reasons/Grounds}      xpath=//input[@id='chkMarriage2']
${cdli_mrg_batch_Registration_date_day}      xpath=//*[@id="CDMarriageFormDetailsDiv"]/div/div[5]/div[1]/div/input
${cdli_mrg_batch_Registration_date_month}      xpath=//*[@id="CDMarriageFormDetailsDiv"]/div/div[5]/div[2]/div/select
${cdli_mrg_batch_Registration_date_year}      xpath=//*[@id="CDMarriageFormDetailsDiv"]/div/div[5]/div[3]/div/input
${cdli_mrg_batch_groomsFN}      xpath=//*[@id="CDMarriageFormDetailsDiv"]/div/div[6]/div[1]/div/input
${cdli_mrg_batch_groomsLN}      xpath=//*[@id="CDMarriageFormDetailsDiv"]/div/div[6]/div[3]/div/input
${cdli_mrg_batch_bridesFN}      xpath=//*[@id="CDMarriageFormDetailsDiv"]/div/div[7]/div[1]/div/input
${cdli_mrg_batch_bridesLN}      xpath=//*[@id="CDMarriageFormDetailsDiv"]/div/div[7]/div[3]/div/input
${cdli_mrg_batch_dom_day}      xpath=//*[@id="CDMarriageFormDetailsDiv"]/div/div[8]/div[1]/div/input
${cdli_mrg_batch_dom_month}      xpath=//*[@id="CDMarriageFormDetailsDiv"]/div/div[8]/div[2]/div/select
${cdli_mrg_batch_dom_year}      xpath=//*[@id="CDMarriageFormDetailsDiv"]/div/div[8]/div[3]/div/input
${cdli_mrg_batch_pom_pro}      xpath=//*[@id="PlaceOfMarriageCDProvince"]
${cdli_mrg_batch_pom_city}      xpath=//*[@id="PlaceOfMarriageCDCity"]
${cdli_mrg_batch_groomsmotherFN}      xpath=//*[@id="CDMarriageFormDetailsDiv"]/div/div[10]/div[1]/div/input
${cdli_mrg_batch_groomsmotherLN}      xpath=//*[@id="CDMarriageFormDetailsDiv"]/div/div[10]/div[3]/div/input
${cdli_mrg_batch_bridesmotherFN}      xpath=//*[@id="CDMarriageFormDetailsDiv"]/div/div[11]/div[1]/div/input
${cdli_mrg_batch_bridesmotherLN}      xpath=//*[@id="CDMarriageFormDetailsDiv"]/div/div[11]/div[3]/div/input
${cdli_mrg_batch_Dateofpromulgation_M}      xpath=//*[@id="CDMarriageFormDetailsDiv"]/div/div[12]/div[1]/div/select
${cdli_mrg_batch_Dateofpromulgation_D}      xpath=//input[@data-bind='value:promulgationDay']
${cdli_mrg_batch_Dateofpromulgation_Y}      xpath=//span[@data-bind='text:promulgationYear']/following::input[1]
${cdli_mrg_batch_placeofpromulgation_pro}      xpath=//select[@id='CDMarriagepromolProvince']
${cdli_mrg_batch_placeofpromulgation_city}      xpath=//select[@id='CDMarriagepromolCity']
${cdli_mrg_batch_final_submit}    xpath=//button[@id='generalBirthSubmit']
${cdli_mrg_batch_final_submit_ok}    xpath=//button[@id='AlertButton']
${cdli_mrg_batch_final_submit_success}    xpath=//button[@id='btnSuccessOK']

### RA-9255 Premium Annotation-Birth ### Request Entry ########
${transaction_tpye_PA_RA9255}    xpath=//select[@id='cmbCertificateType']
${doc_subtype_PA_RA9255}      xpath=//select[@id='documentSubType']//option[28]
${PA_RA9255_Chkbox_1}     xpath=//input[@id='Que_1']
${PA_RA9255_Chkbox_6}     xpath=//input[@id='Que_6']
${PA_RA9255_Chkbox_8}     xpath=//input[@id='Que_8']
${PA_RA9255_Chkbox_11}     xpath=//input[@id='Que_11']
${PA_RA9255_Chkbox_14}     xpath=//input[@id='Que_14']
${PA_RA9255_Chkbox_16}     xpath=//input[@id='Que_16']
### Tag as Positive in CRS ###
${tagas_positive_in_crs}     xpath=//select[@id='tagOptionDdl']
${tagas_positive_in_crs_yes}    xpath=//button[@id='Yesbutton']
${tagas_positive_in_crs_yes_ok}    xpath=//button[@id='AlertButton']











