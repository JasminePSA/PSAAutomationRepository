*** Settings ***
Library     SeleniumLibrary

*** Variables ***
##### Locators - Copy Issuance Birth Certificate Recall Function #####

                                    #### Open Counter ####
${open_button}    css=#ToggleSlider[type='checkbox']
#${open_button}      xpath=//input[@id='ToggleSlider']
${ok_button}        xpath=//button[@id='AlertButton']
                                ###Close counter ###
${closecounter_yes_button}      xpath=//button[@id='Yesbutton']
${closecounter_ok_button}       xpath=//button[@id='AlertButton']
                                   ### Click on Home ####
${home_menu}        xpath=//a[@id='dashboard']

                                   #### Home Page ####

${menu_clientcertificaterequest}        xpath=//a[text()='Client Certificate Request']
${menu_walkinrequestentry}      xpath=//a[(text()='Walk-in Request Entry')]

                                   #### Form CI Birth-Walkin Request Entry ####
${qtn_text}     xpath=//input[@id='queueTicketNo']
${transaction_typedropdown}     xpath=//select [@id='WalkInTransactiontype']
${Select_dropdown-CI-B}     xpath=//option[@value="CI-B"]
${no_of_copies_text}    xpath=//fieldset[@id='birthFormDetails']//input[@id='noOfCopies']
${childlastname_text}   xpath=//input[@id='txtBirthPriLastName']
${childfirstname_text}  xpath=//input[@id='txtBirthPriFirstName']
${sex_dropdown}         xpath=//select[@id='txtBirthSex']
${dateofbirth_month}        xpath=//fieldset[@id='birthFormDetails']//select[@id='birthMonth']
${dateofbirth_date}     xpath=//fieldset[@id='birthFormDetails']//input[@id='birthDate']
${dateofbirth_year}     xpath=//input[@id='birthYear']
${province}     xpath=//select[@id='birthProvince']
${city}     xpath=//select[@id='birthCity']
${mother_lastname}      xpath=//input[@id='txtBirthAuxLastName']
${mother_firstname}     xpath=//input[@id='txtBirthAuxFirstName']
${request_purpose}      xpath=//select[@id='cmbRequestPurpose']
${save_button}      xpath=//fieldset[@id='birthFormDetails']//button[(text()='Save')]
${recall_button}    xpath=//button[@id='btnBirthRecall']

                   #### Form Cenodeath -Walkin Request Entry -Request Deatils ####
${cenodeath_no_of_copies_text}      xpath=//fieldset[@id='cenodeathFormDetails']//input[@id='noOfCopies']
${cenodeath_personlastname_text}    xpath=//input[@id='txtcenodeathPriLastName']
${cenodeath_personfirstname_text}   xpath=//input[@id='txtcenodeathPriFirstName']
${cenodeath_sex_dropdown}   xpath=//select[@id='txtcenodeathSex']
${cenodeath_dateofbirth_month}  xpath=//fieldset[@id='cenodeathFormDetails']//select[@id='cenodeathMonth']
${cenodeath_dateofbirth_date}    xpath=//fieldset[@id='cenodeathFormDetails']//input[@id='cenodeathDate']
${cenodeath_dateofbirth_year}    xpath=//input[@id='cenodeathYear']
${cenodeath_province}     xpath=//select[@id='cenodeathProvince']
${cenodeath_city}     xpath=//select[@id='cenodeathCity']
${cenodeath_mother_lastname}      xpath=//input[@id='txtcenodeathAuxLastName']
${cenodeath_mother_firstname}     xpath=//input[@id='txtcenodeathAuxFirstName']
${cenodeath_request_purpose}      xpath=//select[@id='cenodeathRequestPurpose']
${cenodeath_save_button}      xpath=//fieldset[@id='cenodeathFormDetails']//button[(text()='Save')]



                    ### Requester Deatils###
${reqlastname}      xpath=//input[@id='txtReqLastName']
${reqfirstname}     xpath=//input[@id='txtReqFirstName']
${reqaddress}       xpath=//input[@id='txtAddress']
${reqcountry}       xpath=//select[@id='cmbChildCountry']
${reqprovince}      xpath=//select[@id='cmbProvince']
${reqcity}      xpath=//select[@id='cmbCity']
${submit_button}        xpath=//button[@id='finalSubmitbtn']
${encoding_success_message}     xpath=//h4[contains(text(),'Success!')]
${transaction_number}       xpath=//span[@data-bind='text: RequestNo']

                              #### Form CI Birth-Walkin Request Entry and Payment ####
${menu_walkinrequestentryandpayment}        xpath=//a[(text()='Walk-in Request Entry and Payment')]
${amounttendered}       xpath=//input[@id='txtAmountTendered']
${printor}      xpath=//button[text()='Print OR']
${OR_numebr}    xpath=//span[@data-bind='text: FormattedPSAORNo']
${print}     xpath=//cr-button[contains(text(),'Print')]
${printone}     xpath=//*[@id="sidebar"]//print-preview-button-strip//div/cr-button[1]/text()
${trannofromprintpreview}       xpath=/html/body/div/table/tbody/tr[8]/td
${tran_no}  xpath=//span[@data-bind='text: FormattedTransactionNumber']
                            #### Form CI-Death-Walkin Request Entry ####
${death_noofcopies}         xpath=//fieldset[@id='deathFormDetails']//input[@id='noOfCopies']
${deceased_lastname}        xpath=//input[@id='txtDeathPriLastName']
${deceased_firstname}       xpath=//input[@id='txtDeathPriFirstName']
${sex_death_dropdown}       xpath=//select[@id='txtDeathSex']

${dateofdeath_month}        xpath=//fieldset[@id='deathFormDetails']//select[@id='deathMonth']
${dateofdeath_date}     xpath=//fieldset[@id='deathFormDetails']//input[@id='deathDate']
${dateofdeath_year}     xpath=//input[@id='deathYear']
${death_province}            xpath=//select[@id='deathProvince']
${death_city}       xpath=//select[@id='deathCity']
${deceased_mothers_lastname}        xpath=//input[@id='txtDeathAuxLastName']
${deceased_mothers_firstname}        xpath=//input[@id='txtDeathAuxFirstName']
${death+requestpurpose}     xpath=//select[@id='cmbDeathRequestPurpose']
${death_savebutton}     xpath=//fieldset[@id='deathFormDetails']//button[(text()='Save')]
${close_popup}      xpath=//button[@class='close']
${startaclient_button}  xpath=//button[text()='Start a New Client']


                            #### Form RA Birth-Multilple Walkin Request Entry and Payment####
${select_doctype}       xpath=//select[@id='documentSubType']
${court_decision}       xpath=//td[text()='Court Decision']
${court_decisionnew}       xpath=//input[@id='new' and @name='Court Decision']
${certificateof_finality}       xpath=//input[@id='new' and @name='Certificate of Finality']
${certificateofregistration}        xpath=//input[@id='new' and @name='Certificate of Registration of Court Decision/Order']
${certificateof_authenticity}       xpath=//input[@id='new' and @name='Certificate of Authenticity of the Court Decision/Order ']
${certificateof_livebirth}      xpath=//input[@type='checkbox' and @class='WizardSelectAll' and @name='Certificate of Live Birth/Report of Birth (Un-annotated -mandatory)']
${certificateof_livebirth_marriage}     xpath=//input[@id='new' and @name='Certificate of Live Birth/Certificate of Marriage (Un-annotated)']
${done_button}      xpath=//button[@id='WizardDonebtn']
${wizard_submit_button}        xpath=//button[@id='WizardSubmitbtn']

                #### More Menus ####
${more_menu}      xpath=//img[@src='/Common/Content/images/more-icon.svg']
${more_option}    xpath=//li[@class='dropdown nav-top-li'][4]
${menu_queuemanagementsystem}       xpath=//a[text()='Queue Management System']
${submenu_queueticketingsystem}     xpath=//a[text()='Queue Ticketing System']
${regular_button}       xpath=//button[contains(text(),'REGULAR')]
${qtn_value}    xpath=//span[@data-bind='text:QueueTicketNumber']
${encodingandpayment_button}    xpath=//button[contains(text(),'ENCODING AND PAYMENT')]

                            ## Receive Payment With Cash ###
${certificate_request_payment_menu}     xpath=//a[@id='102']
${receive_payments_menu}        xpath=//a[contains(text(),'Receive Payments')]
${serachtransaction_dropdown}   xpath=//select[@id='ddlSelectFilter']
${Payment_qtn_text}   xpath=//input[@id='txtSeatch']
${payment_search_submit_button}     xpath=//button[@id='btnSarchPayment']
${payment_qtn_link}     xpath=//td/a
${payment_validid_dropdown}     xpath=//select[@id='ddlValidIDPresented']
${payment_amounttendered}   xpath=//input[@id='txtAmountTendered']
${payment_changeamount_label}      xpath=//label[contains(text(),'Change')]
#${payment_printor_button}   xpath=//*[@id="finalSubmitbtn"]
${payment_printor_button}   xpath=//button[@id='PrintOR']
${payment_amountduevalidation_ok_button}        //button[@id='AlertButton']
${payment_printpreview_print_button}    xpath=//cr-button[@class='action-button']
${payment_ornumber_value}       xpath=//td[2]

                ### Change outlet code to 002   ###
${systemadmin_menu}                xpath=//a[contains(text(),'System Administration')]
${userdetails_information_menu}     xpath=//a[contains(text(),'User Detail Information')]
${userdetails_search_text}      xpath=//input[@type='search']
${userdetails_edit_button}      xpath=//th[text()='Action']/following::i[1]
${userdetails_outlet_dropdown}      xpath=//select[@id='txtOutletId']
${userdetails_save_button}      xpath=//button[@id='btnUserConfirm']
            ### RSO Processing  Genrate advisory on death ###
${rso_certificateprocessing_menu}       //a[@id='103']
${rso_processingqueue_menu}     //a[contains(text(),'Processing Queue')]
${rso_searchtransaction_text}       xpath=//input[@type='search']
${rso_trannumber_link}      xpath=//*[@id="ProcessingQueueTable"]/tbody/tr/td[1]/a/span
${rso_death_lastname}     xpath=//input[@id='lastName']
${rso_death_firstname}      xpath=//input[@id='firstName']
${rso_crdquery_submit_button}       xpath=//button[@id='btnCRDQuery']
${rso_plus_icon}        xpath=//tr[1]/td[7]/a[@id='anchor']
${rso_viewselectionlist_button}     xpath=//button[@id='ViewSelectionList']
${rso_generateadvisoryondeath_button}       xpath=//button[@id='Advisory_Btn_For_Cenos']
${rso_confirmationadvisory_yes_button}      xpath=//button[@id='Yesbutton']
${rso_confirmationadvisory_final_ok_button}     xpath=//button[@id='AlertButton']

            #### Releasing  ###
${releasing_menu}       xpath=//a[@id='104']
${releasing_releasecertificate_submenu}     xpath=//*[@id="menuDiv"]/li[5]/ul/li[1]/ul/li[2]
${releasing_qtn_text}       xpath=//input[@id='QueueTicketNum']
${releasing_tranno_text}        xpath=//input[@id='TransNum']
${releasing_search_button}      xpath=//button[@id='validsearch']
${releasing_trannumber_link}        xpath=//td[2]/a
${releasing_print_button}       xpath=//button[@data-bind='enable:IsdetailPrintEnabled,click:PrintClick']
${releasing_valididyes_dropdown}        xpath=//select[@id='ddlclaimentreason']
${releasing_proceed_button}       xpath=//div[@id='proceed']
${releasing_printers_dropdown}       xpath=//select[@id='printers']
${releasing_print_buttonafterselectingprinters}     xpath=//button[@id='FinalPrintButton']
${releasing_yesandcontinue_button}      xpath=//button[@id='continue']
                ### Regular Annotation Processing   ##
${annotation_menu}      xpath=//*[@id='131']
${annotation_processannotation_submenu}     xpath=//*[@id="menuDiv"]/li[5]/ul/li[10]/ul/li[2]/a
${annotation_trannumber_text}       xpath=//*[@id='transactionNumber']
${annotation_search_button}     xpath=//button[@id='searchTransactionNumber']
${annotation_imageid_text}      xpath=//input[@id='imageID']
${annotation_continueafterimageid_button}       xpath=//button[@id='continueBtn']
${annotation_continueafteropeningimage_button}      xpath=//*[@id="OriginalCRDContinueBtn"]
${annotation_processing_regbooktype_dropdown}   xpath=//select[@id='ddlRegistryBookType']
${annotation_processing_regno_text}     xpath=//input[@id='registryNumber']
${annotation_processing_province_dropdown}      xpath=//select[@id='ddlProvince']
${annotation_processing_city_dropdown}      xpath=//select[@id='ddlCity']
${annotation_processing_search_button}      xpath=//button[@id='VEIRecordSearchBtn']
${annotation_processing_veicontinue_button}     xpath=//button[@id='VEIRecordContinueBtn']
${annotation_processing_annotationtemplate_dropdown}        xpath=//select[@id='ddlannotationType']
${annotation_processing_position_dropdown}      xpath=//select[@id='ddlPosition']
${annotation_processing_apply_button}       xpath=//button[@id='AnnotationPartialApplyBtn']
${annotation_processing_anncontinue_button}     xpath=//button[@id='AnnotationPartialContinueBtn']
${annotation_processing_topsheetsubmit_button}      xpath=//button[@id='TopSheetSubmitBtn']
${annotation_processing_submitok_button}        xpath=//*[@id="AlertButton"]
        ### Approve Annotation ###
${annotation_approve_approveannootationmenu}        xpath=//*[@id="menuDiv"]/li[5]/ul/li[10]/ul/li[4]/a
${annotation_approve_transactionno_text}        xpath=//input[@id='transactionNumber']
${annotation_approve_searchbutton}      xpath=//button[@id='searchTransactionNumber']
${annotation_disapprove}            xpath=//button[@id='AnnotationDisapproveBtn']
${annotation_disapprovecomments}        xpath=//*[@id="comments"]
${annotation_disapprove_ok_button}      xpath=//button[@id='DisapprovePartialOkBtn']
${annotation_disapprove_success_ok_button}        xpath=//button[@id='AlertButton']
${annotation_approve_approvebutton}     xpath=//button[@id='AnnotationApproveBtn']
${annotation_approve_yesbutton}     xpath=//button[@id='Yesbutton']
${annotation_approve_success_ok_button}        xpath=//button[@id='AlertButton']
${annotation_approve_success_printbutton}       xpath=//button[@id='FinalPrint']
${annotation_approve_success_printerokbutton}       xpath=//button[@id='AlertButton']
                        #### Rework annotation ###
${annotation_rework_processing_submitbutton}        xpath=/html/body/div[1]/div/div[4]/div[5]/div[2]/button[2]
${annotation_rework_processing_successokbutton}     xpath=//button[@id='AlertButton']

        ### Set Kiosk Role  ###
${userdetails_kiosk_setrole_button}     xpath=//button[@id='btnSetRole']
${userdetails_kiosk_selectall_checkbox}     xpath=//input[@id='selectall']
${userdetails_kiosk_kioskoffcheckbox}       xpath=//input[@id='chklistitem45']
${userdetails_kioskoffsave_button}      xpath=//button[@id='btnRoleConfirm']
${userdetails_kioskoff_okbutton}        xpath=//button[@id='AlertButton']

                    ### Vital Event Information ###
${vitaleventinformation_menu}   xpath=//a[contains(text(),'Vital Events Information')]
${veihome_submenu}      xpath=//a[contains(text(),'VEI Home')]

                    ### Piecemeal Form court decree-Death form-Encoding     ###
${piecemeal_link}       xpath=//a[contains(text(),'Encode Piecemeal CRD/CDLI')]
${piecemeal_country_dropdown}     xpath=//*[@id="BatchDetailModelDiv"]/div[1]/div[1]/div[1]/div/select
${piecemeal_province_dropdown}  xpath=//*[@id="BatchDetailModelDiv"]/div[1]/div[1]/div[2]/div/select
${piecemeal_city_dropdown}      xpath=//*[@id="BatchDetailModelDiv"]/div[1]/div[1]/div[3]/div/select
${piecemeal_regbooktype_dropdown}       xpath=//*[@id="BatchDetailModelDiv"]/div[1]/div[2]/div[3]/div/select
${piecemeal_docsubtype_dropdown}        xpath=//div[2]/div/select[@id="ddlDocSubType"]
${piecemeal_cddeath_regno_text}     xpath=//input[@id='registryNumber']
${piecemeal_limarriage_regno_text}     xpath=//input[@id='registryNumber']
${piecemeal_cddeath_regdetails_submit_button}   xpath=//button[@id='submitrecord']
${piecemeal_firstname_checkbox}     xpath=//input[@class='checkradioboxDeath' and @value='1']
${piecemeal_petition_reln_dropdown}      xpath=//*[@id="CDDeathFormDetailsDiv"]/div/div[3]/div[1]/div/select
${piecemeal_petition_drnd_checkbox}     xpath=//input[@id="chkDeath1"]
${piecemeal_regnoatdeath_text}        xpath=//input[@id='RegistryNoBirth' and @placeholder='Registry Number (Of Death Certificate)']
${piecemeal_deceasedfirstname_text}     xpath=//input[@data-bind='value:deceasedFirstName']
${piecemeal_deceasedlastname_text}        xpath=//input[@data-bind='value:deceasedLastName']
${piecemeal_placeofdeathprovince_dropdown}      xpath=//select[@id='PlaceOfDeathCDProvince']
${piecemeal_placeofdeathcity_dropdown}      xpath=//select[@id='PlaceOfDeathCDCity']
${piecemeal_deathday_text}      xpath=//input[@data-bind='value:deathDay']
${piecemeal_deathmonth_dropdown}    xpath=//*[@id="CDDeathFormDetailsDiv"]/div/div[8]/div[2]/div/select
${piecemeal_deathyear_input}        xpath=//*[@id="CDDeathFormDetailsDiv"]/div/div[8]/div[3]/div/input
${piecemeal_motherfirstname}        xpath=//input[@data-bind='value:MotherFirstName']
${piecemeal_motherlastname}     xpath=//input[@data-bind='value:MotherLastName']
${piecemeal_informrel_dropdown}     xpath=//*[@id="CDDeathFormDetailsDiv"]/div/div[11]/div[1]/div/select
${piecemeal_datepromul_month_dropdown}       xpath=//*[@id="CDDeathFormDetailsDiv"]/div/div[12]/div[1]/div/select
${piecemeal_promul_day_text}     xpath=//*[@id="CDDeathFormDetailsDiv"]/div/div[12]/div[2]/div/input
${piecemeal_prmul_year_text}        xpath=//*[@id="CDDeathFormDetailsDiv"]/div/div[12]/div[3]/div/input
${piecemeal_placepromul_provinve_dropdwn}        xpath=//select[@id='CDDeathpromolProvince']
${piecemeal_citypromul_dropdown}        xpath=//select[@id='CDDeathpromolCity']
${piecemeal_regday_text}     xpath=//*[@id="CDDeathFormDetailsDiv"]//input[@data-bind='value:registartionDay']
${piecemeal_regmonth_dropdown}      xpath=//*[@id="CDDeathFormDetailsDiv"]/div/div[14]/div[2]/div/select
${piecemeal_formsubmit_button}      xpath=//button[@id='generalBirthSubmit']

                ###         Piecemeal LI-Marriage form  ####
${piecemeal_li_regdetails_submit_button}                xpath=//button[@id='submitrecord']
${piecemeal_li_groom_firstname_text}     xpath=//input[@data-bind='value:groomFirstName']
${piecemeal_li_groomlastname_text}        xpath=//input[@data-bind='value:groomLastName']
${piecemeal_li_bridefirstname_text}     xpath=//input[@data-bind='value:brideFirstName']
${piecemeal_li_gbridelastname_text}      xpath=//input[@data-bind='value:brideLastName']
${piecemeal_li_marriageday_text}        xpath=//input[@data-bind='value:marriageDay']
${piecemeal_li_marriagemonth_dropdown}        xpath=//*[@id="LIMarriageFormDetailsDiv"]/div/div[5]/div[2]/div/select
${piecemeal_li_marriageyear_text}        xpath=//*[@id="LIMarriageFormDetailsDiv"]/div/div[5]/div[3]/div/input
${piecemeal_li_marriageplaceprovince_dropdown}   xpath=//select[@id='PlaceOfMarriageLIProvince']
${piecemeal_li_marriageplace_city_dropdown}       xpath=//select[@id='PlaceOfMarriageLICity']
${piecemeal_li_marriageregdate_text}        xpath=//*[@id="LIMarriageFormDetailsDiv"]//input[@data-bind='value:registartionDay']
${piecemeal_limarriage_regmonth_dropdown}       xpath=//*[@id="LIMarriageFormDetailsDiv"]/div/div[9]/div[2]/div/select
#${piecemeal_limarriageyear_text}    xpath=//*[@id="LIMarriageFormDetailsDiv"]/div/div[5]/div[3]/div/input

${piecemeal_li_marriageregyear_text}    xpath=//*[@id="LIMarriageFormDetailsDiv"]/div/div[9]/div[3]/div/input

${piecemeal_li_placeofdiss_province_dropdown}       xpath=//select[@id='LIMarriageRevocationProvince']
${piecemeal_li_placeofdisscity_dropdown}        xpath=//select[@id='LIMarriageRevocationCity']
#${piecemeal_li_natureofdiss_dropdown}       xpath=//*[@id="CRDMDiv"]/div[2]/div/div/select
${piecemeal_li_dateofrevoc_text}     xpath=//input[@data-bind='value:RevocationDay']
${piecemeal_li_monthofrevoc_dropdown}        xpath=//*[@id="SRDMDiv"]/div[2]/div[2]/div/select
${piecemeal_li_yearofrevoc_text}      xpath=//*[@id="SRDMDiv"]/div[2]/div[3]/div/input
${piecemeal_li_formsubmitbutton}    xpath=//*[@id="generalBirthSubmit"]

                #####   Piecemeal Admin-Birth Form Encoding     ###
${piecemeal_adminbirth_regno_text}      xpath=//input[@id='registryNumber']
${piecemeal_admin_petitionersrelatn_dropdown}        xpath=//*[@id="LIFormDetailsDiv"]/div/div[2]/div[1]/div/select
${piecemeal_admin_petreason_grnd_checkbox}        xpath=//*[@id="cnfpetionreason"]/div[2]/div[1]/div/input
${piecemeal_admin_peytregprovince_dropdown}     xpath=/html/body/div[1]/div/div[2]/div[1]/div[1]/div/div/div/div/div[4]/div[1]/div/select
${piecemeal_admin_petregcity_dropdown}      xpath=/html/body/div[1]/div/div[2]/div[1]/div[1]/div/div/div/div/div[4]/div[2]/div/select

${piecemeal_admin_petregmonth_dropdown}     xpath=//*[@id="LIFormDetailsDiv"]/div/div[5]/div[1]/div/select
${piecemeal_admin_petregday_text}       xpath=//*[@id="LIFormDetailsDiv"]/div/div[5]/div[2]/div/input
${piecemeal_admin_petregyear}       xpath=//*[@id="LIFormDetailsDiv"]/div/div[5]/div[3]/div/input
${piecemeal_admin_regnoatbirth_text}        xpath=//input[@id='RegistryNoBirth']
${piecemeal_admin_childfirstname_text}      xpath=//input[@data-bind='value:childFirstName']
${piecemeal_admin_childlastname_text}       xpath=//input[@data-bind='value:childLastName']
${piecemeal_admin_dateofbirthday_text}      xpath=//input[@data-bind='value:birthDay']
${piecemeal_admin_dateofbirthmonth_dropdown}        xpath=//*[@id="LIFormDetailsDiv"]/div/div[8]/div[2]/div/select
${piecemeal_admin_dateofbirthyear_text}     xpath=//*[@id="LIFormDetailsDiv"]/div/div[8]/div[3]/div/input
${piecemeal_admin_sex_dropdown}     xpath=//*[@id="LIFormDetailsDiv"]/div/div[9]/div/div/select
${piecemeal_admin_placeofbirthprovince_dropdown}        xpath=//*[@id="LIPlaceofBirthProvince"]
${piecemeal_admin_placeofbirthcity}     xpath=//*[@id="LIPlaceofBirthCity"]
${piecemeal_admin_motherfirstname_text}     xpath=//*[@id="LIFormDetailsDiv"]/div/div[11]/div[1]/div/input
${piecemeal_admin_motherlastname_text}      xpath=//*[@id="LIFormDetailsDiv"]/div/div[11]/div[3]/div/input
${piecemeal_admin_dateofapprovalmonth_dropdown}     xpath=//*[@id="LIFormDetailsDiv"]/div/div[13]/div[1]/div/select
${piecemeal_admin_dateofapprovalday_text}       xpath=//*[@id="LIFormDetailsDiv"]/div/div[13]/div[2]/div/input
${piecemeal_admin_dateofapprovalyear_text}              xpath=//*[@id="LIFormDetailsDiv"]/div/div[13]/div[3]/div/input
${piecemeal_admin_placeofapprovalprovince_dropdown}     xpath=//*[@id="AdminBirthpromolProvince"]
${piecemeal_admin_placeofapprovalcity_dropdown}     xpath=//*[@id="AdminBirthpromolCity"]
${piecemeal_admin_regmonth_dropdown}        xpath=//*[@id="LIFormDetailsDiv"]/div/div[15]/div[1]/div/select
${piecemeal_admin_regdate_text}     xpath=//*[@id="LIFormDetailsDiv"]/div/div[15]/div[2]/div/input
${piecel_admin_regyear_text}        xpath=//*[@id="LIFormDetailsDiv"]/div/div[15]/div[3]/div/input
${piecemeal_admin_finalsubmitbtn}       xpath=//*[@id="generalBirthSubmit"]


                                    ####     Accounting  ####

${accounting_menu}      xpath=//a[@id="211"]
${accounting_viewsubmittedproof_menu}       xpath=//a[contains(text(),'View Submitted Proof of Payment')]
${accounting_view_fromdate}     xpath=//input[@id='dateRangeFrom']
${accounting_view_todate_text_text}       xpath=//input[@id='dateRangeTo']
${accounting_view_search_button}       xpath=//*[@id="viewSubmittedProofSerach"]
${accounting_view_search_text}      xpath=//input[@type='search']
${accounting_uniqueidentifier_link}     xpath=//*[@id="tblViewSubmittedProofSearchResult"]/tbody/tr/td[4]/a
${accounting_approve}   xpath=//button[@id='approve']
                    ###     Accounting submit proof     ####
${accounting_submit_loginicon}        xpath=//i[@class='fa fa-user']
${accounting_submit_logintext}  xpath=//input[@id='txtlogin']
${accounting_submit_passwordtext}   xpath=//input[@id='txtPassword']
${accounting_deferredpayment_button}    xpath=//span[@class='product-name']
${accounting_invoice_chekcbox}      xpath=//input[@id='checkSingle']
${accounting_continue_button}       xpath=//button[@id='DeferredContinueBtn']
${accounting_bank_dropdown}     xpath=//select[@id='deferredBankFld']
${account_number_text}      xpath=//input[@data-bind='value:selectedAccount']
${accounting_amountpaid_text}       xpath=//input[@id='deferredAmountPaidFld']
${accounting_datepaid_text}     xpath=//input[@id='deferredDatePaidFld']
${accounting_paymentdetails_continue_button}        xpath=//div[1]/button[@id="DeferredContinueBtn"]
${accounting_imagesubmit_button}        xpath=//button[@data-bind='click:DeferredPaymentSubmitButton']
${accounting_alert_ok_button}       xpath=//button[@id='AlertButton']

        ####    Accounting Report-Consolidated collections Report ####
${accounting_accreports}        xpath=//a[contains(text(),'Accounting Report Home')]
${accounting_consolodatedcollectionreport}        xpath=//h5[contains(text(),'Consolidated Collections Report')]
${accounting_consolidated_fromdate}     xpath=//input[@id='FromDateId']
${accounting_consolidated_todate}       xpath=//input[@id='ToDateId']
${accounting_consolidated_generatereport_button}            xpath=//*[@id="ConsolidatedCollectionsReportDivId"]/div[2]/button
${accounting_consolidated_datelink}     xpath=//tr[1]/td[9]
##//a[contains(text(),'09/27/2022')]
${accounting_consolidated_imageclose_button}        xpath=//button[@id='close_modal']

            ###### Receive Payment-Confirm deposit ######
${payment_confirmdeposit_menu}      xpath=//a[contains(text(),'Confirm Deposit')]
${payment_confirmdeposit_useridcheckbox}       xpath=//td[contains(text(),'00123')]/ancestor::tr//input[@type = 'checkbox']
${payment_confirmdeposit_topuseridcheckbox}     xpath=//*[@id="Requestdetails"]/tbody/tr[1]/td[1]/input
${payment_confirmdeposit_confirmbutton}     xpath=//button[@id='btnConfirm']
${payment_confirmdeposit_depositdate_text}      xpath=//input[@id='depositDate']
${payment_confirmdeposit_bankname_dropdown}     xpath=//select[@id='cmbIdType']
${payment_confirmdeposit_accountnumber_dropdown}     xpath=//select[@id='cmbAccountNo']
${payment_confirmdeposit_attachslip_button}     xpath=//button[@id='add_more']
${payment_confirmdeposit_choosefile}        xpath=//input[@id='file']

#xpath=//input[@id='file']
${payment_confirmdeposit_save_button}       xpath=//button[@id='SaveClick']
${payment_confirmdeposit_save_ok_button}        xpath=//button[@id='AlertButton']









