*** Settings ***
Library   SeleniumLibrary



*** Variables ***
${opencounter}  //input[@id='ToggleSlider']/following::span
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
${txtReqLastName1}  //input[@id='txtReqLastName']
${txtReqFirstName1}  //input[@id='txtReqFirstName']
${txtAddress1}  //input[@id='txtAddress']
${streetAddress1}  //input[@id='streetAddress']
${cmbChildCountry}  //select[@id='cmbChildCountry']
#${cmbProvince1}  //select[@id='cmbProvince']
#${cmbCity1}  //select[@id='cmbCity']
${finalSubmitbtn1}   //button[@id='finalSubmitbtn']
${RequestNo1}   //span[@data-bind='text: RequestNo']
${button1}   //button[@id='RetryButtonforRANotificationForm']/following::button
${CRP}  //a[text()='Certificate Request Payment']
${ddlSelectFilter1}  //select[@id='ddlSelectFilter']
${txtSeatch1}  //input[@id='txtSeatch']
${btnSarchPayment1}  //button[@id='btnSarchPayment']
${showReceivePayment1}   //a[@onclick='showReceivePayment(this);']
${ddlValidIDPresented1}  //select[@id='ddlValidIDPresented']
${read_amount1}  //input[@id='TotalAmt']
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







#VO-Death Certificate
${DLastnameVO}  //input[@id='txtDeathPriLastName']
${DFirstnameVO}  //input[@id='txtDeathPriFirstName']
${Dsex}  //select[@id='txtDeathSex']
${Dmonth}   //select[@id='deathMonth']
${Ddate}    //input[@id='deathDate']
${Dyear}    //input[@id='deathYear']
${DdeathProvince}   //select[@id='deathProvince']
${DdeathCity}   //select[@id='deathCity']
${DFatherLName}  //input[@id='txtDeathSecLastName']
${DFatherFName}  //input[@id='txtDeathSecFirstName']
${DMotherLName}  //input[@id='txtDeathAuxLastName']
${DMotherFname}  //input[@id='txtDeathAuxFirstName']
${DPurpose}  //select[@id='cmbDeathRequestPurpose']
${VODeathSave}  //button[@data-bind ='click:deathSaveClick']
${VOYesButton}  //button[@id='Yesbutton']
${EncoPrinters}     //select[@id='printers']
${EncoFinalPrint}       //button[@id='FinalPrint']
${VOSuccesOK}   //button[@id='btnSuccessOK']
#Processing
${CertProcessHome}      //a[@id='103']
${ProcessQue}       //a[@id='103']/following::a[2]
${SearchTransaction}    //input[@aria-controls='ProcessingQueueTable']
${Ptrns_Link}   //*[@id="ProcessingQueueTable"]/tbody/tr/td/a
${Submitbtn}    //button[@data-bind='click:OnModifiedSearchClick']
${ProcessCRDQry}    //button[@id='btnCRDQuery']
${ProcessSuccessOK}      //button[@id='btnSuccessOK']
${ProcessVeiSrch}       //button[@id='idBacktoVei']
${GenNegCert}       //button[@id='idGenNegCert']
${NegCertYesbutton}     //button[@id='Yesbutton']
${AlertButton1}      //button[@id='AlertButton']


#VO-MarriageCertificate
${MLastnameVO}  //input[@id='txtMrgPriLastName']
${MFirstnameVO}  //input[@id='txtMrgPriFirstName']
#${Msex}  //select[@id='txtDeathSex']
${MWifeLName}   //input[@id='txtMrgSecLastName']
${MWifeFName}  //input[@id='txtMrgSecFirstName']
${Mmonth}   //select[@id='mrgMonth']
${Mdate}    //input[@id='mrgDate']
${Myear}    //input[@id='mrgYear']
${MmarriageProvince}   //select[@id='marriageProvince']
${MmarriageCity}   //select[@id='marriageCity']

#${MMotherLName}  //input[@id='txtDeathAuxLastName']
#${MMotherFname}  //input[@id='txtDeathAuxFirstName']
${MPurpose}  //select[@id='cmbMarriageRequestPurpose']
${VOMarriageSave}  //button[@data-bind ='click:marriageSaveClick']
${read_amount}  xpath=//span[@id="TotalAmt"]
${tot_amount}   xpath=//input[@id="txtAmountTendered"]
${VOMarriagePrintOR}  //button[@id='finalSubmitbtn']
${VOMarriageValid}  //select[@data-bind='value:SelectedValidID']
${VOSubmit}  //button[@id='SubmitModal']
${VOMarriageYesButton}  //button[@id='Yesbutton']
#${EncoPrinters}     //select[@id='printers']
#${EncoFinalPrint}       //button[@id='FinalPrint']
${VOMarriageSuccesOK}   //button[@id='btnSuccessOK']
${RequestNo}  //span[@data-bind='text: FormattedTransactionNumber']
${VOMStartClient}   //button[@data-bind='click:StartNewPaymentClientClick']
${ProcessCRDQry}    //button[@id='btnCRDQuery']

#Releasing
#${CertificateReleasing}        xpath://a[text()='Certificate Releasing']
#${ReleaseCertificate}      xpath://a[text()='Release Certificate']
${releasing}  xpath=//*[@id="104"]
${release_certi}  xpath=//*[@id="menuDiv"]/li[5]/ul/li[1]/ul/li[2]/a
${enter_transaction}  xpath=//input[@id='TransNum']
${search_transaction}  xpath=//*[@id="validsearch"]
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


#Regular Annotation
${Walkin_Menu}  link:Walk-in Request Entry
${Transaction_Type}     id:WalkInTransactiontype
${No0f_C}    //input[@id='txtMRenReN']/preceding::input[1]
#MarriageEncoding
${HLN}    //input[@id="txtMrgPriLastName"]
${HFN}  id:txtMrgPriFirstName
${WLN}   id:txtMrgSecLastName
${WFN}  id:txtMrgSecFirstName
${M_month}  id:mrgMonth
${M_date}   id:mrgDate
${M_year}   id:mrgYear
${M_Province}   id:marriageProvince
${M_City}   id:marriageCity
${Purpose}  id:cmbMarriageRequestPurpose
${Req_ln}    id:txtReqLastName
${Req_fn}    id:txtReqFirstName
${Req_ad}     id:txtAddress
${Req_country}  id:cmbChildCountry
${ref_No}  //th[text()='Converted?' and @aria-controls='WalkInTranDetails']/following::span[1]
${Close_btn}    //h4[text()='Success!']/preceding::button[1]
${Edit}  //th[text()='Action']/following::i[1]
${WebAcessSlip}     id:btnRightCallBack
#AnnotationWizardAnnulmentofMarriage
${AnnualMent_chk1}  Xpath://input[@id='new' and @name='Court Decision']
${AnnualMent_chk2}  Xpath://input[@id='new' and @name='Certificate of Finality']
${AnnualMent_chk3}  Xpath://input[@id='new' and @name='Certificate of Registration of Court Decision/Order']
${AnnualMent_chk4}  Xpath://input[@id='new' and @name='Certificate of Authenticity of the Court Decision/Order ']
${AnnualMent_chk5}  Xpath://input[@id='new' and @name='Certificate of Authenticity of the Court Decision/Order ']/following::input[3]
${AnnualMent_chk6}  xpath://input[@id='new' and @name='Certificate of Live Birth/Report of Birth (Un-annotated -mandatory)']
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
#AnnotationwizardChangenamebirth
${Changename_chk1}  Xpath://input[@id='new' and @name='Court Decision']
${Changename_chk2}  Xpath://input[@id='new' and @name='Certificate of Finality']
${Changename_chk3}  Xpath://input[@id='new' and @name='Certificate of Registration of Court Decision/Order']
${Changename_chk4}  Xpath://input[@id='new' and @name='Certificate of Authenticity of the Court Decision/Order ']
${Changename_chk5}  Xpath://input[@id='new' and @name='Annotated Certificate of Death/Report of Death (if ROD, optional)']
${Changename_chk6}  xpath://input[@id='new' and @name='Certificate of Death/Report of Death (Un-annotated-mandatory)']
${Changename_chk7}  Xpath://input[@id='new' and @name='Certificate of Authenticity of the Court Decision/Order ']/following::input[3]
${Changename_chk8}  xpath://input[@id='new' and @name='Certificate of Live Birth/Report of Birth (Un-annotated -mandatory)']
${Changename_chk9}  xpath://input[@id='new' and @name='Certificate of Live Birth (Prior to Adoption and must not contain remarks on Adoption)']
${Changename_chk10}  Xpath://input[@id='new' and @name='Amended Certificate of Live Birth(Must not contain any remarks or annotation, if foreign birth, PSA prepares the amended COLB)']

${WDone}    //button[@id='WizardDonebtn']
${Wsubmit}  //button[@id='WizardSubmitbtn']
#Birthdetails
${Cln}   id:txtDeathPriLastName
${Cfn}   id:txtDeathPriFirstName
${S_ex}     id:txtDeathSex
${B_month}  id:deathMonth
${B_date}   id:deathDate
${B_year}   deathYear
${B_province}  id:deathProvince
${B_city}   deathCity
${B_flame}  txtDeathSecLastName
${B_ffame}  txtDeathSecFirstName
${B_mlame}  txtDeathAuxLastName
${B_mfame}  txtDeathAuxFirstName
${purpose2}  //input[@id='txtDeathAuxMiddleName']/following::select[1]
#Enprinter
${EncoPrinters}     //select[@id='printers']
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
${Mlastname}    //input[@id='MotherLastName']
${MFirstname}   //input[@id='MotherFirstName']
${Search}   //input[@type='search']
${Ptrns_Link}   //*[@id="ProcessingQueueTable"]/tbody/tr/td/a
${ViewImage}   //th[@class='sorting_disabled' and text()='Action']/following::i[1]
${ViewImage2}   //th[@class='sorting_disabled' and text()='Action']/following::i[4]
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
${ReleasePrntBtn}   //h4[text()='Transaction Details']/following::button[1]
${ReleaseValidId}       //select[@id='ddlclaimentreason']
${ReleaseProceed}       //div[@id='proceed']
${ReleasePrinter}       //select[@id='printers']
${RelPrintOk}           //button[@id='FinalPrintButton']
${ReleaseCntnu}     //button[@id='continue' and text()='Yes & Continue']
${yes_continue}  xpath=//*[@id="continue"]
${SecpaSerial}      //input[@type='text']
${SaveCntnu}        //button[@id='saveContinue']
${ReleaseOk}        //button[@data-bind='click:TransactionSuccessClick']
#more
${CMore}  //a[@id='103']/following::a[8]
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
${getvalue}  //span[@data-bind='text: FormattedTransactionNumber']

#DocPrintMarriage
${WalkInReq}        xpath://a[text()='Walk-in Request Entry']
${TransactionType_WIR}   id=WalkInTransactiontype
${NoOfCopies_WIR}      xpath://input[@id='txtMRenReN']/preceding::input[1]
${NoOfCopies_WIRD}  xpath://input[@id='txtDRenReN']/preceding::input[1]
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
${AmountTender}     id=txtAmountTendered
${PrintOR}          id=finalSubmitbtn
${Get_Reference}        xpath://th[text()='Estimated Time of Release']/following::span[2]
${Close_PaySuccess}     xpath://h4[text()='Payment Successful']/preceding::button[1]
#To Change the User details
${more}         //img[@class='navbar-more']
${Sys_Admin}        //a[text()='System Administration']
${User_Detail}      //a[text()='User Detail Information']
${Search}       //input[@type='search']
${Edit}         //a[@id='delete']/preceding::a[1]
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

#Locators for DocPrint
${TransactionNo}        id=txtTransactionNo
#Locators for Release
${QTN}  //input[@id='queueTicketNo']
${Validate}  //button[@id='validate']
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


#negative certificate
${click_trans}  xpath=//*[@id="ProcessingQueueTable"]/tbody/tr[1]/td[1]/a/span
${click_search1}  xpath=//*[@id="SearchClick"]
${norecord_ok}  xpath=//*[@id="btnSuccessOK"]
${search_vei}  xpath=//*[@id="idBacktoVei"]
${alert_ok}  xpath=//*[@id="btnSuccessOK"]
${negative}  xpath=//*[@id="idGenNegCert"]
${confirm_yes}  xpath=//*[@id="Yesbutton"]
${success_ok}  xpath=//*[@id="AlertButton"]


#Request Entry
${Skip}  //button[@id='Skip']
${firsteditbutton}  //span[@id='editPreview']
${submitbutton}  //button[@class='btn btn-primary' and text()='Submit']
${confirmbutton}    id:btnBirthRequestConfirm
${eyeicon}  //i[@class='fa fa-eye']
${secondeditbutton}  //i[@class='fa fa-pencil-square-o']
${proceedbutton}    btnReqSummaryProceed
${generatecenodeath}    //button[@id='idCenodeath']
${cenodeathok}  //button[@id='CEYesButton']
${Requesterlname}   //input[@id='txtReqLastName']
${Requesterfname}   //input[@id='txtReqFirstName']
${Requesteraddress}  //input[@id='txtAddress']
${Requestercountry}  //Select[@id='cmbRequesterCountry']
${RequesterProceed}  //button[@id='btnProceed']
${Requesterconfirm}  //button[@value='Confirm']
${popupconfirm}  //div[@id='popUpConfirmText' and text()='Are you sure you want to confirm?']/following::button[1]
${Transactionnumb}  //span[@id='spnFormattedTransactionNo' and @data-bind='text: FormattedTransactionNo']
${proceedtopayment}  //button[@id='proceedToPaymentBtn']
${certificatetype}  id=cmbCertificateType
${Noofcopies_req}   id=txtNoOfCopies
${Nextbutton}   //button[@id='proceed']
${Reqlastname}  //input[@id='txtPriLastName']
${Reqfirstname}  //input[@id='txtPriFirstName']
${ReqSex}  //span[text()='Female']
${reqdateofdeath}   //input[@id="dateofDeath"]
${reqdateofbirth}   //input[@id="dateofbirth"]
${reqprovince}  //select[@id="cmbProvince"]
${reqcity}  //select[@id="cmbCity"]
${reqcmbRequestPurpose}  //select[@id="cmbRequestPurpose"]
${reqmlname}    //input[@id="txtAuxLastName"]
${reqmfname}    //input[@id="txtAuxFirstName"]
${Addanothereq}     //button[@id='btnAddAnother']
${recall}   //button[@id='btnRecall']
${Dltsecrecord}     //button[@id='btnAddAnother']/preceding::i[1]
${DltConfirm}   //div[@id='popUpConfirmText' and text()='Are you sure you want to delete this request?']/following::button[1]
${recallconf}   //div[@id='popUpDetails' and text()='The existing entered details (if any) will be lost. Do you want to recall the details of last transaction?']/following::button[1]


${Cln1}   id:txtBirthPriLastName
${Cfn1}   id:txtBirthPriFirstName
${S_ex1}     id:txtBirthSex
${B_month1}  id:birthMonth
${B_date1}   id:birthDate
${B_year1}   birthYear
${B_province1}  id:birthProvince
${B_city1}   birthCity
${B_flame1}  txtBirthSecLastName
${B_ffame1}  txtBirthSecFirstName
${B_mlame1}  txtBirthAuxLastName
${B_mfame1}  txtBirthAuxFirstName
${purpose21}  //input[@id='txtBirthAuxMiddleName']/following::select[1]


#Electronic Endorsement
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

#SuperVisorOverride
${Supervisor_Override}  xpath://a[text()='Supervisor Override']
${SO_Approve}       id=1
${SO_Disapprove}    id=2
#${SO_OK}        id=SupOvrapproveButton
${SO_Cancel}    id=SupOvrCancelButton
${Submit_Process}   id=SearchClick

${rep_btn}  //i[@class='fa fa-print']
${Rep_soyes}    //button[@id='Yesbutton']
${VEI_menu}     //a[@id='141' and text()='Vital Events Information']
${VEI_HOME}     //a[text()='VEI Home']

#LCR CRD
${more_option}  //img[@class="navbar-more"]
${more_vei}     xpath=//*[@id="141"]
${vei_home}     xpath=//*[@id="menuDiv"]/li[5]/ul/li[7]/ul/li/a
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
${cr_crd_save}     //*[@id="btnSave"]
${lcr_crdsubmission_no}   //a[@class="btn btn-default" and text()="No"]
${lcr_crd_batchcreate}  //a[@class="bold-text" and text()='Create CRD Batch']
${lcr_crd_batchnumber}  //*[@id="batchNo"]
${lcr_crd_batchcountry}     //*[@id="CountryName"]
${lcr_crd_batchcountry}     //*[@id="CountryName"]
${lcr_crd_batchcity}    //*[@id="CityName"]
${lcr_crd_batchcity}    //*[@id="CityName"]
${lcr_crd_batch_regyear}    //*[@id="registrationYear"]
${lcr_crd_batch_regmonth}    //*[@id="MonthName"]
${lcr_crd_batch_reg_booktype}   //*[@id="RegistryBookTypeName"]
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
${lcrcrd_batch_dobday}  //*[@id="childViewModelDiv"]/div[3]/div[1]/div/input
${lcrcrd_batch_dobmonth}    //select[@class="form-control form-field editable-field AlphaNumeric"]
${lcrcrd_batch_dobyear}     //*[@id="childViewModelDiv"]/div[3]/div[3]/div/input
${lcrcrd_batch_placetype}   //select[@data-bind="options:placeTypeList,value:PlaceType,optionsText:'Description' ,optionsValue:'ID',optionsCaption:'Select Place Type'"]
${batch_nameofhsptl}    //*[@id="NameHospital"]/div/input
${CrdRegno}     //input[@id='registryNumber']
${ToggleSlider}   xpath://input[@id='ToggleSlider']/following::span[1]
${ALButton}   id:AlertButton
${Dashb}   Xpath://a[@id='dashboard']
${HomeLink}   Xpath://a[@id='101']
${MarriageCmnts}   Xpath://input[@id='txtmarriageComments']/following::button[3]
${MarriageCmnts1}   Xpath://input[@id='txtComments']/following::button[3]
${Final}   Xpath://button[@id='finalSubmitbtn' and text()='Submit']
${ModelClose}   //div[@class='modal-header']/following::button[@onclick='modelCloseClick()']
${SysAdmin1}   //a[@id='180' and text()='System Administration']
${Userinfo}   link:User Detail Information
${SearchUser}   //input[@type='search']
${Action}   //th[text()='Action']/following::a[1]
${OutletID}   txtOutletId
${btncnfm}   btnUserConfirm
${Admin2}   //a[@id='180' and text()='System Administration']
${Userinfo1}   link:User Detail Information
${Searchuser1}   //input[@type='search']
${Action1}   //th[text()='Action']/following::a[1]
${OutletID1}   txtOutletId
${btncnfm1}   btnUserConfirm
${CRD}   //a[@id='130' and text()='CRD Submission RCC']
${Createbatch}   link:Create Batch
${BatchName}   //select[@id='BatchTypeName']
${Departmentname}   //select[@id='UnitDepartmentName']
${Poperator}   //button[@class="btn btn-primary" and text()='Submit']/preceding::input[1]
${Psubmit2}   //button[@class="btn btn-primary" and text()='Submit']
${AOK}   //button[@id='AlertButton' and text()='OK']
${Imgnav}   //img[@class='navbar-more']
${EncodeCDLI}   //a[@class="bold-text" and text()='Encode LCR CDLI Submission']
${LCRcity}   //select[@id='LCRCity']
${LCRMonth}   //select[@id='ddlMonth']
${LCRBookType}   //select[@id='ddlRegBookType']
${LCRDocType}   //select[@id='ddlDocType']
${LCRDocSubType}   //select[@id='ddlDocSubType']
${RegNumber}   //input[@id='txtRegistryStart']
${Recieveddate}   //input[@id='dtReceived']
${btnsave}   //button[@id='btnSave']
${chckbox1}   //td[text()='Affidavit to Use the Surname of the Father (AUSF)']/following::input[1]
${chckbox2}   //td[text()='Affidavit to Use the Surname of the Father (AUSF)']/following::input[7]
${chckbox3}   //td[text()='Affidavit to Use the Surname of the Father (AUSF)']/following::input[10]
${chckbox4}   //td[text()='Affidavit to Use the Surname of the Father (AUSF)']/following::input[14]
${chckbox5}   //td[text()='Affidavit to Use the Surname of the Father (AUSF)']/following::input[17]
${chckbox6}   //td[text()='Affidavit to Use the Surname of the Father (AUSF)']/following::input[20]
${WizardSearchNextBtn}   //button[@id='WizardSearchNextBtn']
${wizardSummaryNextBtn}   //a[@id='wizardSummaryNextBtn']
${wizardSummaryNextBtn}   //a[@id='wizardSummaryNextBtn']
${WizardSearchPreviewConfirmBtn}   //button[@id='WizardSearchPreviewConfirmBtn']
${bok}   //button[@id='btnOK']
${popyes}   //button[@id='btPopupYes']/following::a[1]
${CreateCDLI}   //a[@class="bold-text" and text()='Create CDLI Batch']
${CDLIBatchno}   //input[@id='batchNo']
${CDLICountryname}    //select[@id='CountryName']
${CDLICity}   //select[@id='CityName']
${CDLIRegyear}   //input[@id='registrationYear']
${CDLImonth}   //select[@id='MonthName']
${CDLIBookType}   //select[@id='RegistryBookTypeName']
${CDLIRegStart}   //input[@id='txtRegistryStart']
${CDLIRegEnd}   //input[@id='txtRegistryEnd']
${CDLIActualCount}   //input[@id='actualDocumentCount']
${CDLIproblemCount}   //input[@id='problemDocumentCount']
${CDLISubmit}   //button[text()='Submit']
${AnnotationWizardSubmitBtn}   id:AnnotationWizardSubmitBtn
${Queue1}   //input[@id='Que_1']
${Queue4}   //input[@id='Que_4']
${Queue6}   //input[@id='Que_7']
${Queue7}   //input[@id='Que_6']
${Queue9}   //input[@id='Que_9']
${Queue11}   //input[@id='Que_11']
${Queue13}    //input[@id='Que_13']
${Queue15}   //input[@id='Additional_15']
${WizardSearchPreviewConfirmBtn}   id:WizardSearchPreviewConfirmBtn
${onClickofPrintTransmittalSlip}   //button[@id='onClickofPrintTransmittalSlip']
${btnSuccess}   //button[@id='btnSuccessOK']
${Regestryno}   //input[@id='registryNumber']
${ddldocsubtype}    //select[@id='ddlDocSubType']
${ContinueVEIRecord}   //button[@id='ContinueVEIRecord']
${Relation}   //select[@id='ddlDocSubType']/following::select[3]
${Notstated}   //input[@id='chkBirth5']
${Notstated1}   //input[@id='chkBirth9']
${MothersResidenceProvince}   //select[@id='MothersResidenceProvince']
${MothersResidenceCity}   //select[@id='MothersResidenceCity']
${MothersResidenceCitymonth}   //select[@id='MothersResidenceCity']/following::select
${MothersResidenceCityday}   //select[@id='MothersResidenceCity']/following::input[1]
${MothersResidenceCityyear}   //select[@id='MothersResidenceCity']/following::input[2]
${RegistrynoBirth}   //input[@id='RegistryNoBirth']
${Registrycfname}  //input[@id='registryNumber']/following::input[41]
${Registrycmname}    //input[@id='registryNumber']/following::input[42]
${Registryclname}  //input[@id='registryNumber']/following::input[43]
${Registryday}   //input[@id='registryNumber']/following::input[44]
${Registrymonth}   //input[@id='registryNumber']/following::select[8]
${Registryyear}   //input[@id='registryNumber']/following::input[45]
${RegistrySex}   //input[@id='registryNumber']/following::select[9]
${PlaceofBirthCDProvince}   //select[@id='PlaceofBirthCDProvince']
${PlaceofBirthCDCity}   //select[@id='PlaceofBirthCDCity']
${Regmfname}   //input[@id='registryNumber']/following::input[46]
${Regmmname}   //input[@id='registryNumber']/following::input[47]
${Regmlname}   //input[@id='registryNumber']/following::input[48]
${Regmmonth}   //input[@id='registryNumber']/following::select[14]
${Regmday}   //input[@id='registryNumber']/following::input[52]
${Regmyear}   //input[@id='registryNumber']/following::input[53]
${promolProvince}   //select[@id='promolProvince']
${promolCity}   //select[@id='promolCity']
${promolCityRTC}   //select[@id='promolCity']/following::select[1]
${promolCityRTCmonth}   //select[@id='promolCity']/following::select[2]
${promolCityRTCday}   //select[@id='promolCity']/following::input[1]
${promolCityRTCyear}   //select[@id='promolCity']/following::input[2]
${generalBirthSubmit}   //button[@id='generalBirthSubmit']
${promolCityRTCok}   //button[@id='AlertButton']
${QualityCR}   //a[@class="bold-text" and text()='Quality Check Reports']
${reportType}   //select[@id='reportType']
${QualityCRcontinue}   //button[@id='continue']
${QualityCRbatch}   //input[@id='batchNumber']
${QualityCountryName}   //select[@id='CountryName']
${QualityProvinceName}   //select[@id='ProvinceName']
${QualityCityName}    //select[@id='CityName']
${QualityBookType}    //select[@id='registrationBookType']
${QualityYear}    //input[@id='registrationYear']
${generatePassReport}   //button[@id='generatePassReport']
${Documentpu}   //select[@id='txtOfficeId']
${CDLITODCC}   //a[@class="bold-text" and text()='Forward CDLI to DCC']
${DPUCityname}   //select[@id='CityName']
${DPUCityyear}   //input[@id='registrationYear']
${DPUmonth}   //select[@id='registrationMonth']
${DPUddlRegBookType}   //select[@id='ddlRegBookType']
${searchForwardDCC}   //button[@id='searchForwardDCC']
${ForwardBatchResultsDCCTable}   //a[@aria-controls='ForwardBatchResultsDCCTable' and @data-dt-idx='2']
${DPUprovince}   //tr[td[2]//text()='LUBA' and td[3]//text()='54']/td//span[@class='text']
${submitForwardDCC}   //button[@id='submitForwardDCC']
${transmitToDCC}   //button[@id='transmitToDCC']
${CustomSuccessOkBtn}   //button[@id='CustomSuccessOkBtn']
${DPUOfficeid}   //select[@id='txtOfficeId']
${RCDLIDCC}   //a[@class="bold-text" and text()='Receive Batch/CDLI at DCC']
${DPUOk}   //button[@id='btnSuccessOK']
${QALastname}   //input[@id='lastName']
${QAfirstname}   //input[@id='firstName']
${QAMNAME}   //input[@id='MotherLastName']
${QAFNAME}   //input[@id='MotherFirstName']
${QAbutton}   //button[@id='btnCRDQuery']
${QAbuttonclick}   //th[@class='sorting_disabled' and text()='Action']/following::i[2]
${ViewSelectionList}   //button[@id='ViewSelectionList']
${deathrdselectOption}   //input[@name='deathrdselectOption']
${AdvisoryBtn}   //button[@id='Advisory_Btn_For_Cenos']
${QAyesbtn}   //button[@id='Yesbutton']/i
${QAAlertbtn}   //button[@id='AlertButton']
${btnBirthRequestConfirm}   id:btnBirthRequestConfirm
${chooseoption}   //a[@id='211']
${CustomerManage}   //a[text()='Customer Management']
${AddCustomer}   //a[@id='AddNewCustomer']
${customerName}   //input[@id='customerName']
${ddlRequester}   //select[@id='ddlRequester']
${QAaddressLine1}   //input[@id='addressLine1']
${QAddlProvince}   //select[@id='ddlProvince']
${QAddlCity}   //select[@id='ddlCity']
${QABlastname}   //input[@id='lastName']
${QABfirstname}   //input[@id='firstName']
${addperson}   //button[@id='addPerson']
${addPersonLastName}   //input[@id='addPersonLastName']
${addPersonFirstName}   //input[@id='addPersonFirstName']
${userLogin}   //input[@id='userLogin']
${userpwd}   //input[@id='pwd']
${ddlCustomerStatus}   //select[@id='ddlCustomerStatus']
${assignBREQ}   //button[@id='assignBREQ']
${BREQSID}   //input[@id='BREQSID']
${outlet1}   //select[@id='outlet']
${QAADD}   //button[@id='add']
${QAAltbtn}   //button[@id='AlertButton']
${panel}   //h4[@class='panel-title']
${CustomerNoOrName}   //input[@id='CustomerNoOrName']
${CustomersSearch}   //button[@id='CustomersSearch']
${Editclick}   //i[@data-bind='click:$root.EditClicked']
${eyeclick1}   //span[text()='shweta@1997']/following::td[1]/i[1]
${eyeclick2}   //span[text()='shweta@1997']/following::td[1]/i[2]
${EDIT1}   //*[@id="Edit"]/i
${btnadd1}   //button[@id='add']
${DeleteClientBreqClicked}   //i[@data-bind='click:$root.DeleteClientBreqClicked']
${btnLeftCallBack}   //span[@id='btnLeftCallBack']
${savedetail}   //button[@id='save']
${btnRight}   //span[@id='btnRight']
${deleteCustomer}   //i[@data-bind='click:$root.deleteCustomer'][1]
${VeiBodyid}   //tbody[@id="VeiBody"]/tr/td[1]/div/label/span[2]
${More Details}   //a[text()="More Details"]/following::button[2]
${fileCRDDocument}   //input[@id='fileCRDDocument']
${zoomout}   //input[@id="zoomout"]/following::button[2]
${EEReferenceNumber}   //input[@id='EEReferenceNumber']/preceding::span[1]
${EERefer}   //input[@id='EEReferenceNumber']
${EEReferenceSearch}   //button[@id='EEReferenceSearch']
${EEBody}   //*[@id="EEBody"]/tr/td[1]/div/label/span
${EEReferenceS}   //button[@id='EEReferenceSearch']/following::button[3]
${submitClick}   //button[@id='submitClick']
${VIPParty}   //a[text()='VIP / Party Waiting']
${Search2}   //button[@id='Search2']
${VeiBody1}   //tbody[@id="VeiBody"]/tr/td[1]/a
${approve1}   //button[@id='approve']
${popUpDetails}   //div[@id='popUpDetails']/following::button[1]
${onDuplicateCheckConfirmClick}   //button[@data-bind='click:onDuplicateCheckConfirmClick' and @id='yes']
${ApproveSubmit}   //button[@id='ApproveSubmit']
${deathSaveClick1}   Xpath://button[@data-bind='click:deathSaveClick']
${onClickRightButtonCallBack1}   //button[@onclick='onClickRightButtonCallBack();']
${ADDCRDBTN}   //button[@id="add_more" and text()='Add CRD']
${uploadimg}   //input[@id='file']
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
${EncodeDcity}   //select[@id='EECityBirth']
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
${SO_OK1}          //button[@id='SupOvrapproveButton']
${SO_Approve1}      //button[@id='1' and text()='Approve']
${ccr_Link}  xpath=//a[text()='Client Certificate Request']
${EEremove}   /button[@id='remove']/following::button[1]
${assetModalHeader}   //h4[@id="assetModalHeader"]/span
${EEbtnremove}   //button[@id='remove']/following::button[1]
${FormattedImageID}   //span[@data-bind='text:FormattedImageID']
${spnTransmittalReference}   //span[@id='spnTransmittalReference']
${transmittalReferenceNumberDCC}   //input[@id='transmittalReferenceNumberDCC']
${searchReceiveDCC}   //button[@id='searchReceiveDCC']
${saveReceiveDCC}   //div[@id='ReceiveBatchResultsDCCCDLITable_wrapper']/following::button[1]
${tiffimage}   //input[@id='file' and @accept='.tif,.tiff']
${AmendedPartialContinueBtn}   //button[@id='AmendedPartialContinueBtn']
${CDLICHILDFname}   //select[@id='ddlDocSubType']/following::input[2]
${Registrycfname1}   //input[@id='registryNumber']/following::input[45]
${Registrycmname1}    //input[@id='registryNumber']/following::input[46]
${Registryclname1}   //input[@id='registryNumber']/following::input[47]
${Registryday1}   //input[@id='registryNumber']/following::input[48]
${Registryyear1}   //input[@id='registryNumber']/following::input[49]
${Regmfname1}   //input[@id='registryNumber']/following::input[50]
${Regmmname1}   //input[@id='registryNumber']/following::input[51]
${Regmlname1}   //input[@id='registryNumber']/following::input[52]
${Regmday1}   //input[@id='registryNumber']/following::input[56]
${Regmyear1}   //input[@id='registryNumber']/following::input[57]
${SearchClick}   //button[@id='SearchClick']

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
${deathcity2}  xpath=//select[@id='PlaceOfDeathCDCity']/option[7]
${dateday1}  xpath=//input[@data-bind='value:deathDay']
${deathmonth1}  xpath=//span[@data-bind='text:deathMonthDesc']/following::option[2]
${deathyear1}  xpath=//span[@data-bind='text:deathYear']/following::input[1]
${motherfirst}  xpath=//input[@data-bind='value:MotherFirstName']
${mothermiddle}  xpath=//input[@data-bind='value:MotherMiddleName']
${motherlast}  xpath=//input[@data-bind='value:MotherLastName']
${relation_withdeath}  xpath=//span[@data-bind='text:InformantRelationshipDesc']/following::option[2]
${month_pomulgation}  //div[@id='CDDeathFormDetailsDiv']//span[@data-bind='text:PromulgationMonthDesc']/following::select[1]
${day_pomulgation}  xpath=//div[@id='CDDeathFormDetailsDiv']//input[@data-bind='value:PromulgationDay']
${year_pomulgation}  xpath=//div[@id='CDDeathFormDetailsDiv']//span[@data-bind='text:PromulgationYear']/following::input[1]
${pomulgation_province}  xpath=//select[@id='CDDeathpromolProvince']/option[2]
${pomukgation_city}  xpath=//select[@id='CDDeathpromolCity']/option[7]
${regiday2}  xpath=//div[@id='CDDeathFormDetailsDiv']//input[@data-bind='value:registartionDay']
${regi_month2}  //div[@id='CDDeathFormDetailsDiv']//span[@data-bind='text:regMonthDesc']/following::select
${regi_year2}  xpath=//div[@id='CDDeathFormDetailsDiv']//span[@data-bind='text:regYear']/following::input[1]
${deathcdli_submit}  xpath=//button[@id='generalBirthSubmit']
${checkpa1}  xpath=//input[@id='Que_1']
${checkpa2}  xpath=//input[@id='Que_4']
${checkpa7}  xpath=//input[@id='Que_6']
${checkpa8}  xpath=//input[@id='Que_9']
${checkpa9}  xpath=//input[@id='Que_11']
${chekcl13}  xpath=//input[@id='Que_13']
${cdlideathcity}  xpath=//select[@id='LCRCity']
${cdlireginum}   xpath=//input[@id='txtRegistryStart']
${cdlidatereceived}   xpath=//input[@id='dtReceived']
${subnext}   xpath=//button[@id='WizardSearchNextBtn']
${addmore}   xpath=//button[@id='moreAnnotationsBtn']
${moreyes}   xpath=//button[@id='Yesbutton']
${nextsub}   xpath=//a[@id='wizardSummaryNextBtn']
${confirmsu}   xpath=//button[@id='WizardSearchPreviewConfirmBtn']
${cdliok}   xpath=//button[@id='btnOK']
${cdli_confirmno}   xpath=//p[@id='modaltxt' and text()='Add another submission record?']/following::a[1]
${cdlibatch}   xpath=//a[text()='Create CDLI Batch']
${cdli_submit}   xpath=//button[@class='btn btn-primary' and @data-bind='click: AddSearchCDLIData']
${batch_no}   xpath=//input[@id='batchNo']
${crd_country}   xpath=//select[@id='CountryName']
${crd_province}   xpath=//select[@id='ProvinceName']
${crd_city}   xpath=//select[@id='CityName']
${crd_year}   xpath=//input[@id='registrationYear']
${crd_month}   xpath=//select[@id='MonthName']
${crd_regi_type}   xpath=//select[@id='RegistryBookTypeName']
${actual_count}   xpath=//input[@id='actualDocumentCount']
${problem_count}   xpath=//input[@id='problemDocumentCount']
${crd_submit}   xpath=//button[@class='btn btn-primary' and @data-bind='click: AddSearchData']
${crd_continue}   xpath=//button[@id="ContinueVEIRecord"]
${1_ok1}   xpath=//button[@id='AlertButton']
${success_death_ok}   xpath=//div[@id='popUpAlertText' and text()='Batch successfully completed']/following::button[1]
${click_back}   xpath=//a[@id='VitalEventsDashBoradMain']
${DfChilfdname}   //input[@id='registryNumber']/following::input[32]
${DFChildLname}  //input[@id='registryNumber']/following::input[34]
${DFEchildSex}  //input[@id='registryNumber']/following::select[10]
${DFEncodeDD}   //input[@id='registryNumber']/following::input[35]
${DFEncodeDM}  //input[@id='registryNumber']/following::select[11]
${DFEncodeDY}   //input[@id='registryNumber']/following::input[36]
${DFbEncodeDD}  //input[@id='registryNumber']/following::input[37]
${DFbEncodeDM}   //input[@id='registryNumber']/following::select[12]
${DFbEncodeDY}  //input[@id='registryNumber']/following::input[38]
${EEProvinceDeath}  //select[@id='EEProvinceDeath']
${EECityDeath}  //select[@id='EECityDeath']
${DFEncodeMotherFname}    //input[@id='registryNumber']/following::input[39]
${DFEncodeMotherLname}    //input[@id='registryNumber']/following::input[41]
${submitrecordD}   //button[@id='submitrecordD']








































