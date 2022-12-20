*** Settings ***
Library     SeleniumLibrary

*** Variables ***
#Homepage
${Open_counter_home}        xpath://input[@id='ToggleSlider']/following::span[1]
${Open_alert}   id:AlertButton
${Home_Page}    Xpath://a[@id='dashboard']
${Client_Request_WA}    Xpath://a[@id='101']
${WA_Marriage_Save}     Xpath://input[@id='txtmarriageComments']/following::button[3]
${WA_Birth_Save}    Xpath://input[@id='txtComments']/following::button[3]
${Submit_button1}   Xpath://button[@id='finalSubmitbtn' and text()='Submit']
${Close_overlay}    //div[@class='modal-header']/following::button[@onclick='modelCloseClick()']
${browser}  chrome
${url_qa}   http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tTUFKVU1EQVMtMQ==#!
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
${REQ_Country_name}     //Select[@id='cmbRequesterCountry']
${Req_proceed}      //button[@id='btnProceed']
${Req_Confirm}      //button[@value='Confirm']
${Proceed_ok}       //div[@id='popUpConfirmText' and text()='Are you sure you want to confirm?']/following::button[1]
${Req_ref_no}       //span[@id='spnFormattedTransactionNo' and @data-bind='text: FormattedTransactionNo']
${Auth_add_image}       //button[@id='marriage-AddImageBtn']
${Auth_req_file}        //button[@id="add_more" and text()='Add CRD']
${aUTH_FILE}    //input[@id='file']

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
${proceedtopayment}  //button[@id='proceedToPaymentBtn']
${Reprint_pay}     //a[text()='Reprint OR']
${OR_no}    //input[@id='txtORNo']
${OR_Value}     //input[@name='checkbox']/following::td[1]
${Rep_search}   CustomersSearch
${rep_btn}  //i[@class='fa fa-print']
${Rep_soyes}    //button[@id='Yesbutton']

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
${Req_entry_prov}   //select[@id="cmbProvince"]
${Req_entry_city}       //select[@id="cmbCity"]
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
${RSO_SEARCH}       //button[@id='SearchClick']
${Pros_menu}    //a[@id='103']
${Pros_Queue}   //a[@id='103']/following::a[2]
${mln}      //input[@id='MotherLastName']
${MFN}      //input[@id='MotherFirstName']
${PLN}  //input[@id='lastName']
${PFN}  //input[@id='firstName']
${Search}   //input[@type='search']
${Ptrns_Link}   //*[@id="ProcessingQueueTable"]/tbody/tr/td/a
${Mren_field}       //input[@id='MReN']
${ViewImage}   //th[@class='sorting_disabled' and text()='Action']/following::i[1]
${Issue}    //button[@id='print']
${Icont}    //button[@id='IssueCertificateContinueBtn' and text()='Continue']
${Iyes}     //button[@id='Yesbutton']
${Iok}  //button[@id='AlertButton']
${RSO_search_2}   //button[@id='btnCRDQuery']
${Tag_MV}   //input[@id="manualVerification"]
${MV_reson}     //select[@id="ddlMVReasons"]
${MV_text}  //textarea[@id="txtReason"]
${MV_Submit}    //button[@type='submit' and text()="Submit"]
${MV_Submit_ok}     //div[@id="popUpDetails"]/following::button[1]
${MV_Req_final}  //button[@id="btnSuccessOK"]
#negativecert
${norecord}  btnSuccessOK
${click_rso_search}  xpath=//*[@id="btnCRDQuery"]
${norecord_ok}  xpath=//*[@id="btnSuccessOK"]
${search_vei}   xpath=//*[@id="idBacktoVei"]
${alert_ok}     xpath=//*[@id="btnSuccessOK"]
${cenomar_certi}    xpath=//button[@id='idCenomar']
${cenodea_certi}    xpath=//button[@id='idCenodeath']
${cenodeath_confirm}    xpath=//*[@id="CEYesButton"]
${success_ok}    xpath=//*[@id="AlertButton"]
${Gennegcert}   //button[@id='idGenNegCert']
${gennegok}  //button[@id='Yesbutton']
${Cenook}   //button[@id='CEYesButton']
${Genceno}      //button[@id='idCenomar']

#calender
${Date_Recieved}    id=DateReceived1
${Calendar_Month}   xpath://select[@class='ui-datepicker-month']
${Calendar_Year}    xpath://select[@class='ui-datepicker-year']
${Calendar_Date}    xpath://*[@id="ui-datepicker-div"]/table/tbody/tr[1]/td[6]/a
${CRDRCCDate}   //input[@id='DateReceived1']
${Calendar_Date}    xpath://a[@class='ui-state-default' and text()=31]
${Birth_Date}  xpath=//a[@class='ui-state-default'][1]
#CRDRCC
${CRD_RCC_LINK}     //a[@id='130' and text()='CRD Submission RCC']
${Create_Batch}     link:Create Batch
${TrannoPrm}    //input[@id='TransactionNo']
${RCCSave}  //a[@class='btn btn-default' and text()='Cancel']/following::button[1]
${Batch_Type}     //select[@id='BatchTypeName']
${Unit_name}   //select[@id='UnitDepartmentName']
${Batch_Save}       //button[@class="btn btn-primary" and text()='Submit']/preceding::input[1]
${CRD_RCC_SUBMIT}       //button[@class="btn btn-primary" and text()='Submit']
${CRD_Rcc_ok}       //button[@id='AlertButton' and text()='OK']
${Print_Tran_CRD}       print
${Select_Print_CRD}     printers
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
${SigReject}        id:AuReject
${Auth_Reject_Reason}   //*[@id="RejectModal"]/div/div/div[2]/div[1]/table/tbody/tr[6]/td[1]/input
${Auth_Reject}      //*[@id="RejectModal"]/div/div/div[2]/div[2]/button[2]
#Release
${Rel}      //img[@class='navbar-more']
${CertReleasing}    //a[@id='104']
${ReleaseCert}      //a[@id='104']/following::a[2]
${TransNoKioskNo}   //input[@id='TransNum']
${ReleaseSrch}      //button[@id='validsearch']
${ReleaseTransLink}     //a[@data-bind='text:FormattedTransactionNumber,click:$root.onViewClick']
#${ReleasePrntBtn}       //button[@class='btn btn-primary']
${ReleasePrntBtn}  //h4[text()='Transaction Details']/following::button[1]
#${ReleasePrntBtn}   //button[@data-bind='enable:IsdetailPrintEnabled,click:PrintClick']
${ReleaseValidId}       //select[@id='ddlclaimentreason']
${ReleaseProceed}       //div[@id='proceed']
${ReleasePrinter}       //select[@id='printers']
${RelPrintOk}           //button[@id='FinalPrintButton']
${ReleaseCntnu}     //button[@id='continue']
${CenDeathcont}     //button[@id='continue' and text()='Yes & Continue']
${SecpaSerial}      //input[@type='text']
${SaveCntnu}        //button[@id='saveContinue']
${ReleaseOk}        //button[@data-bind='click:TransactionSuccessClick']
${Secpa_1}  //input[@type='text' and @id='secpa_0']
${Secpa_2}   //input[@type='text' and @id='secpa_1']
#SOrequest
${SO_Dash}  //a[text()='Supervisor Override']
${So_Approve}   //button[@id='1']
${SOfinalapp}   SupOvrapproveButton
#more
${More}  //a[@id='103']/following::a[8]
${Sys_Admin}    //a[@id='180' and text()='System Administration']
${User_link}    link:User Detail Information
${Input_search}     //input[@type='search']
${Click_Name}       //th[text()='Action']/following::a[1]
${Work_unit}    txtWorkUnitId
${User_update}  btnUserConfirm
${Outlet_change}    txtOutletId
${Office_change}    txtOfficeId

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

#qtn
${NavBar}       //img[@class='navbar-more']
${QTN}      //a[@id='108']
${QTNSys}       //a[@id='108']/following::a[6]
${RegularQTN}      //button[@data-bind='click:RegularQueueClick']
${QTNEncoPayment}   //button[@data-bind='click:EncodingAndPaymentClicked']
${QueTickNumb}      //span[@data-bind='text:QueueTicketNumber']
${ReqQTN}       //input[@id='queueTicketNo']
#RequestEntry
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

#VOCenodeath
${vo_cenodeath_option}  xpath=//option[text()='Choose Transaction Type']/following::option[13]
${cenod_last}    xpath=//input[@id='txtcenodeathPriLastName']
${cenod_first}  xpath=//input[@id='txtcenodeathPriFirstName']
${cenod_middle}  xpath=//input[@id='txtcenodeathPriMiddleName']
${cenodmotherlastname}  xpath=//input[@id='txtcenodeathAuxLastName']
${cenodmotherfirstname}  xpath=//input[@id='txtcenodeathAuxFirstName']
${cenodmothermiddlename}     xpath=//input[@id='txtcenodeathAuxMiddleName']
${cenodeath_sex}    xpath=//select[@id='txtcenodeathSex']
${cenodeath_month}  xpath=//select[@id='cenodeathMonth']
${cenodeath_date}    xpath=//input[@id='cenodeathDate']
${cenodeath_year}   xpath=//input[@id='cenodeathYear']
${cenodeath_country}        xpath=//select[@id='cenodeathCountry']
${cenodeath_province}    xpath=//select[@id='cenodeathProvince']
${cenodeath_city}    xpath=//select[@id='cenodeathCity']
${cenodeath_purpose}     xpath=//select[@id='cenodeathRequestPurpose']
${cenodeath_save}        xpath=//*[@id="cenodeathFormDetails"]/div/div[17]/div/button[1]
${cenodeath_re_last}    xpath=//input[@id='txtReqLastName']
${cenodeath_re_first}   xpath=//input[@id='txtReqFirstName']
${cenodeath_address1}       xpath=//input[@id='txtAddress']
${cenodeath_rso_search}     xpath=//*[@id="btnCRDQuery"]
${click_rso_search}     xpath=//*[@id="SearchClick"]
${vo_cenodeath_certi}   xpath=//*[@id="idCenodeath"]
${cenodeath_confirm}     xpath=//*[@id="CEYesButton"]
${RSO_MULT_IMG}     //th[@class='sorting_disabled' and text()='Action']/following::i[1]
#deffered
${billdeff}  //a[text()='Bill Deferred Payment Clients']
${Cust}     //select[@id='CustomerName']
${Cusmonth}  //select[@id='registrationMonth']
${Geninvoice}   //button[@id='GenerateInvoice' and text()='Generate Invoice']
${Defyes}   //button[@id='Yesbutton']
${Defsuc}  //button[@id='btnSuccessOK']
${invo_No}     //div[@id='popUpSuccessText']

#Accounting
${Accounting}   //a[@id='211' and text()='Accounting']
${Acchome}  //a[text()='Accounting Home']
${Accreporthome}    //h5[text()='Accounting Report Home']
${Cashrecpt}    //h5[text()='Cash Receipts Record Report']
${Genrept}      GenerateData
${View_RCD}     //*[@id="tblCollectionsDeposit"]/tbody/tr[1]/td[6]/a
${RCD_Date}     dtTranDate
${CRR_Year}     YearName
${CRR_Month}    Month


#VEI
${VEI_menu}     //a[@id='141' and text()='Vital Events Information']
${VEI_HOME}     //a[text()='VEI Home']
${Lcr_CRD}      //a[text()='Encode LCR CRD Submission']
${Lcr_Prov}     //select[@id='LCRProvince']
${Lcr_city}     //select[@id='LCRCity']
${Reg_booktype}     //select[@id='ddlDocType']
${Startreg}     //input[@id='txtRegistryStart']
${Endreg}   //input[@id='txtRegistryEnd']
${Txt_doc}  //input[@id='txtDocCount']
${lcrdate}  //input[@id='dtReceived']
${LCRSave}  //BUTTON[@id='btnSave']
${Lvl_1}    //input[@id='Que_1']
${Lvl_2}    //input[@id='Que_4']
${Lvl_3}    //input[@id='Que_6']
${Lvl_4}    //input[@id='Que_9']
${Lvl_5}    //input[@id='Que_11']
${Lvl_6}    //input[@id='Que_13']

${Lcrdok}   //button[@id='btPopupYes']

${Lcrdno}   //button[@id='btPopupYes']/following::a[1]
${CreateCRD}    //a[text()='Create CRD Batch']
${Batchno}  //input[@id='batchNo']
${Regcountry}   id:CountryName
${CRDRegprov}   //select[@id='ProvinceName']
${CRDRegcity}   //select[@id='CityName']
${CRDRegyear}   //input[@id='registrationYear']
${CRDRegmonth}  //select[@id='MonthName']
${RegBooktype}  //select[@id='RegistryBookTypeName']
${ActualDoc}    //input[@id='actualDocumentCount']
${ProblemDoc}   //input[@id='problemDocumentCount']
${CrdSubmit}    //input[@id='problemDocumentCount']/following::button[2]
${CrdRegno}     //input[@id='registryNumber']
${CRDDoc}   //input[@id='registryNumber']/following::select[1]
${CRDcont}  //button[@id='ContinueVEIRecord']
${CRDRegbook}   //select[@id='RegistryBookTypeName']
${CRDOKSUBMIT}  btnSuccessOK
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
${EERadiButton}     //tbody[@id="VeiBody"]/tr/td[1]/div/label/span[2]
${EEcont}      //a[text()="More Details"]/following::button[2]
${Coose_EE_Tiff}    //input[@id='fileCRDDocument']
${EEsave}   //input[@id="zoomout"]/following::button[2]
${EE_Ref_Radio}     //input[@id='EEReferenceNumber']/preceding::span[1]
${Inp_EE_ref}   //input[@id='EEReferenceNumber']
${EE_Auto_Search}   //button[@id='EEReferenceSearch']
${No_EE_Alert}  //button[@id='AlertButton']
${Auto_gen}     Auto-generate EE Transaction
${EE_Tran_no}   //h4[@id="assetModalHeader"]/span
${Scroll_for_submit}    //button[@id='remove']/following::button[1]
${EE_first_submit}   //button[@id='remove']/following::button[1]
${EE_submit}    //button[@id='submitClick']
${EE_Alert}     //button[@id='AlertButton']
${EE_VIP}   //a[text()='VIP / Party Waiting']
${VIP_EE_Radio}     //input[@id='EEReferenceNumber']/preceding::span[1]
${VIP_EE_Ref}   //input[@id='EEReferenceNumber']
${VIP_EE_search}    //button[@id='Search2']
${VIP_EE_link}  //tbody[@id="VeiBody"]/tr/td[1]/a
${VIP_EE_Approve}   //button[@id='approve']
${EE_alert_yes}     //div[@id='popUpDetails']/following::button[1]
${EE_ApproveSubmit}     //button[@id='ApproveSubmit']
${EE_AlertButton}       //button[@id='AlertButton']
#so
${Supervisor_Override}  xpath://a[text()='Supervisor Override']
${SO_Approve}       id=1
${SO_Disapprove}    id=2
${SO_OK}        id=SupOvrapproveButton
${SO_Cancel}    id=SupOvrCancelButton
${Submit_Process}   id=SearchClick

#######################CRD Death / Fetal Death##############################
${SEARCH_FETUS_PROV}    registrationProvinceForBatch
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
${DDLType_fetal}     //div[@id='isDeathCRD']//select[@id='ddlDocSubType']/option[3]
${Fetal_input1}  //*[@id="deathViewModelDiv"]/div[2]/div[1]/div/select
${Fetal_input2}     //*[@id="deathViewModelDiv"]/div[2]/div[2]/div/input
${Fetal_input3}     //*[@id="deathViewModelDiv"]/div[2]/div[3]/div/select
${Fetal_input4}     //Label[text()='Date of Delivery (Year)']/following::input[1]
${Fetal_input5}     //Label[text()='Place Type']/following::select[1]
${Fetal_input6}     //Label[text()='Place of Delivery (Province)']/following::select[1]
${Fetal_input7}     //Label[text()='Place of Delivery (City/Municipality)']/following::select[1]
${Fetal_input8}     //Label[text()='Place of Delivery (Barangay)']/following::select[1]
${Fetal_input9}     //Label[text()='Type of Delivery']/following::select[1]
${Fetal_input10}        //Label[text()='Type of Delivery']/following::select[3]
${Fetal_input11}    //Label[text()='Birth Order ']/following::select[1]
${Fetal_input12}    //Label[text()="Certification of Death - Date"]/following::select[2]
${Fetal_input13}   //Label[text()="Informant - Relationship"]/preceding::select[3]
${Fetal_input14}    //Label[text()="Informant - Relationship"]/preceding::select[2]
${Fetal_input15}    //Label[text()="Informant - Relationship"]/preceding::select[1]
${Fetal_input16}    //input[@id='RegistrationDatePicker']/following::select[1]
${Fetal_CRD}        //label[text()='Registration Country']/preceding::a[1]
${Fetal_option}     //input[@id='registryNumber']/following::select[2]
${Batch_fetus_city}     registrationCityForBatch
${vei_search_regbook}      xpath=//select[@id='registryBookTypeForBatch']
########## VEI- Encode LCR CRD Submission - Foreign Marriage till Pass report #######
${vei}      xpath=//a[@id='141']
${vei_home}     xpath=//a[text()='VEI Home']
${encode_lcr_crd_submission}     xpath=//a[text()='Encode LCR CRD Submission']
${reg_country}     xpath=//select[@id='LCRCountry']/option[119]
${reg_booktype}     xpath=//select[@id='ddlDocType']/option[5]
${Reg_doc_type}  //select[@id='ddlDocType']
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
${CD_prov}      //label[text()="Husband's Place of Birth (Province)"]/following::select[1]
${CD_Place_city}     //select[@id='PlaceofBirthCity']
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
${VEI_MPLACE}   //select[@id="PlaceofMarriageProvince"]
${VEI_MCITY}    //select[@id="PlaceofMarriageCity"]
${VEI_BARAN}    //select[@id="PlaceofMarriageBarangy"]
${vei_placeofmarriage}      xpath=//*[@id="marriageParentsViewModelDiv"]/div[2]/div[1]/div/select/option[119]
${vei_dom_month}     xpath=//*[@id="marriageParentsViewModelDiv"]/div[4]/div[1]/div/select/option[5]
${vei_dom_day}     xpath=//*[@id="marriageParentsViewModelDiv"]/div[4]/div[2]/div/input
${vei_dom_year}     xpath=//*[@id="marriageParentsViewModelDiv"]/div[4]/div[3]/div/input
${vei_religious_sect}       xpath=//*[@id="marriageParentsViewModelDiv"]/div[15]/div/div/select/option[2]
${vei_typeof_ceremony}      xpath=//*[@id="marriageParentsViewModelDiv"]/div[16]/div[1]/div/select/option[2]
${vei_dateofreg}         xpath=//input[@id='RegistrationDate']
${vei_regstatus}         xpath=//*[@id="marriageParentsViewModelDiv"]/div[16]/div[3]/div/select/option[3]
${vei_batch_submit}      xpath=//button[@id='generalBirthSubmit']
${Vei_type_m}   //div[@id="TypeofMarriage"]/select
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
##QUALITYCHECK
${Quality_Check_Reports}        //a[text()="Quality Check Reports"]
${reportType}   //select[@id="reportType"]
${Quality_Continue}  //button[@id="continue"]
${Quality_batchNumber}  //input[@id="batchNumber"]
${Quality_City}     //select[@id="CityName"]
${Quality_registrationYear}     //input[@id="registrationYear"]
${Quality_registrationBookType}     //select[@id="registrationBookType"]
${Quality_generatePassReport}       //button[@id="generatePassReport"]
${back_home}    link:Back to Report Type
${back_VEI_home}    link:Back to Vital Events Information Home
#TransmitCo
${Transmit_CO}      //a[text()="Transmit CRDs/CDLIs to Central Office"]
${Transmit_CrdSearchRegYear}        //input[@id="txtCrdSearchRegYear"]
${Tranmit_month}   //select[@id="SearchddlMonth"]
${Trasmit_btnSearchCRD}     //button[@id="btnSearchCRD"]
${Trasmit_Search}       //input[@type="search"]
${Trasmit_Regno}    //div[@id="transmitCRDSearchTable_filter"]/following::span[1]
${Transmit_btntransmittal}   //button[@id="btnTransmittalOK"]
${Transmit_btnTransmit}        //button[@id="btnTransmit"]
${Trasmit_alertok}  //div[text()=" Transmittal Report successfully generated and batches tagged as submitted to Central Office."]/following::button[1]
#receivecrd/cdli
${Recive_CRD_CDLI}     link:Receive CRD/CDLI Batches
${Recive_transmittalRefNo}      //input[@id='transmittalReferenceNumber']
${Receive_generalBirthSubmit}       //button[@id='generalBirthSubmit']
${Receive_Search}       //div[@id="ReceiveBatchResultsCRDCDLI_filter"]/following::input[1]
${Recive_saveReceiveDCC}    //button[@id="saveReceiveDCC"]
${Receive_AlertButton}      //button[@id="AlertButton"]
#ForwardToDCC
${Forward_dcc}  //a[text()="Forward CDLI to DCC"]
${Forward_province}     //select[@id="ProvinceName"]
${Forward_city}  //select[@id="CityName"]
${Forward_regyear}  //input[@id="registrationYear"]
${Forward_regmonth}     //select[@id="registrationMonth"]
${Forward_ddlRegBookType}       //select[@id="ddlRegBookType"]
${Forward_searchdcc}  searchForwardDCC
${Forward_SelectAll}     cbSelectAll
${Forward_transmitToDCC}     //button[@id="transmitToDCC"]
${Forward_submittoDCC}        //button[@id='transmitToDCC']/following::button[2]
#ReceiveatDCC
${Recived_dcc}      //a[text()='Receive Batch/CDLI at DCC']
${Received_transmittalRefNumDCC}     //input[@id='transmittalReferenceNumberDCC']
${Received_searchReceivedDCC}       //button[@id='searchReceiveDCC']
${Received_Search}     //input[@type='search']/following::button[1]
${Received_alert}   //button[@id='AlertButton']

#DCCDLI
${select_match}  xpath=//a[@id='CDLICLICK']//span[text()='Match / Rework']

${select_registrycdli}  xpath=//select[@id='RegistryBookTypeName']/option[2]
${select_registrycdli1}  xpath=//select[@id='RegistryBookTypeName']/option[3]
${proper_value}  xpath=//div[@id='divDeathRecords']//input[@id='properseperatorpage']
${attachment_value}  xpath=//div[@id='divDeathRecords']//input[@id='attachmentseperatorpage']
${Marriage_proper_value}    //div[@id='divMarriageAdditionalDetails']//input[@id='properseperatorpage']
${Marriage_Attachment_value}    //div[@id='divMarriageAdditionalDetails']//input[@id='attachmentseperatorpage']

${enter_reginumber}  xpath=//input[@id='registryNumber']
${click_submit}  xpath=//button[@id='search']
${saveandcontinue}  xpath=//button[@id='saveAndContinue']
${crdcommitbatch}  xpath=//button[@id='commitbatch']
${crdsuccess}  xpath=//button[@id='btnSuccessOK']
${crdqachecking}  xpath=//h5[text()='Perform Quality Assurance (QA) Check on Primary CRDs']
${CDli_qa_sent}     //button[@id='btnSuccessOK']
${cdliqachecking}  xpath=//h5[text()='Perform Quality Assurance (QA) Check on CDLIs']
${crdacceptmatch}  xpath=//button[@id='acceptMatch']
${lastcrdacceptmatch}  xpath=//button[@id='AcceptBatch']
${qapassedok}  xpath=//button[@id='btnSuccessOK']

##UnconMV
${Process_MV}     //a[@id='132' and text()='Process Unconverted MV Request']
${MV_Home}      //a[text()="Unconverted/MV Request Processing Home"]
${Search_view_job}      //h5[text()="Search / View Job Request"]
${Search_job_Tran}      //input[@id="JobTransationNumber"]
${JobTransationSearch}     //button[@id="JobTransationSearch"]
${retrive_job_req}      //*[@id="DivJobRequestSearchDataTable"]/tbody/tr/td[1]/a/span
${retrive_unit}      //*[@id="DivJobRequestSearchDataTable"]/tbody/tr/td[6]/span















