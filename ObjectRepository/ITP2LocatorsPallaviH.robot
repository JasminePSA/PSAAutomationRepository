*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#PAMrgRequestDetails-WalkinRequestEntry
${Browser}     Chrome
${qa_url}   http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tSE9TQU1BTlAtMQ==#!
${Req_HLN}      id:txtMrgPriLastName
${Req_HFN}      id:txtMrgPriFirstName
${Req_HMN}      id:txtMrgPriMiddleName
${Req_WLN}      id:txtMrgSecLastName
${Req_WFN}      id:txtMrgSecFirstName
${Req_WMN}      id:txtMrgSecMiddleName
${Dashbrd}      //a[@id='dashboard']
${CertReq}  //a[@id='101']
${CertRequMenu}     //select[@id='WalkInTransactiontype']
#mrg
${No.ofCopies}      //input[@id='txtMRenReN']/preceding::input[1]
#Death
${No.ofCopies_Death}      //input[@id='txtDRenReN']/preceding::input[1]
#birth
${No.ofCopies_Birth}         //input[@id='txtReN']/preceding::input[1]
${DocSubtype}   //select[@id='documentSubType']
${Courtdec}    xpath=//input[@id='new' and @name='Court Decision']
${CertofFin}    xpath=//input[@id='new' and @name='Certificate of Finality']
${CertofReg}   xpath=//input[@id='new' and @name='Certificate of Registration of Court Decision/Order']
${CertOfAuth}   xpath=//input[@id='new' and @name='Certificate of Authenticity of the Court Decision/Order ']
${AnnotCertMrg}    xpath=//input[@id='new' and @name='Annotated Certificate of Marriage']
${UnAnn}    xpath=//input[@id='new' and @name='Certificate of Marriage (Un-annotated)']
${AnnWizdonebtn}        //button[@id='WizardDonebtn']
${AnnSbtbtn}        //button[@id='WizardSubmitbtn']
${Req_Mrgmnth}      id:mrgMonth
${Req_MrgDate}      id:mrgDate
${Req_MrgYear}      id:mrgYear
${Req_MrgPrvnc}     id:marriageProvince
${Req_MrgCity}      id:marriageCity
${Req_MrgPurp}      id:cmbMarriageRequestPurpose

#QTN Generation
${MoreOption}       //img[@class='navbar-more']
${QTN}      //a[@id='108']
${QTNSys}       //a[@id='108']/following::a[6]
${RegularQTN}      //button[@data-bind='click:RegularQueueClick']
${QTNEncoPayment}   //button[@data-bind='click:EncodingAndPaymentClicked']
${QueTickNumb}      //span[@data-bind='text:QueueTicketNumber']
${ReqQTN}       //input[@id='queueTicketNo']
${QTNValidate}      //button[@id='validate']
${QTN_Skip}     //button[@id='Skip']

#RequestEntry
${ReQEntry_ TranType}      //select[@id='cmbCertificateType']
${ReqEnt_No.ofCopies_Mrg}       //input[@id='txtNoOfCopies']
${ReqEnt_TrantypeProceed}       //button[@id='proceed']
${ReQEntrymenu}      //a[text()='Request Entry']
${Walk-inRequestEntrymenu}        //a[text()='Walk-in Request Entry']
${WalkinRequestEntryPaymmenu}        //a[text()='Walk-in Request Entry and Payment']



#RequestEntry-CI Mrg
${ReqEnt_HLastName}       //input[@id='txtPriLastName']
${ReqEnt_HFirstName}    //input[@id='txtPriFirstName']
${ReqEnt_WLastName}     //input[@id='txtSecLastName']
${ReqEnt_WFirstName}     //input[@id='txtSecFirstName']
${Auxln}    //input[@id="txtAuxLastName"]
${Auxfn}    //input[@id="txtAuxFirstName"]
${RsexM}     //span[text()='Male']
${RsexF}     //span[text()='Female']
${ReqEnt_DOM}       //input[@id='dateofbirth']
${ReqEnt_DOD}       //input[@id='dateofDeath']
${ReqEnt_CancelReq}     //button[@class='btn btn-default' and @data-bind='click: function(data, event) { window.EncodingUIContext.onCancel() }']
${ReqEnt_Cnfrmtn}       //button[@id='btnBirthRequestConfirm']
${ReqSummaryProceed}        //button[@id='btnReqSummaryProceed']
#${ReqEnt_Reqlastname}       //input[@id='txtReqLastName']
#${ReqEnt_ReqFirstname}      //input[@id='txtReqFirstName']
${ReqEnt_RqstrProceed}      //button[@id='btnProceed']
${ReqEnt_SummaryCnfrm}      //button[@value='Confirm']
 #and @class='btn btn-primary']
${ReqEnt_CnfrmYes}   //div[@id='popUpConfirmText' and text()='Are you sure you want to confirm?']/following::button[1]
#//button[@class='btn btn-default']/preceding::button[2]
${ReqEnt_CnfrmNo}       //button[@class='btn btn-default']
${ReqEnt_EstimatedTime}     //button[@id='btnmdAlertOK']
${DltsecRecord}    //button[@id='btnAddAnother']/preceding::i[1]
${Dltconfirm}   //div[@id='popUpConfirmText' and text()='Are you sure you want to delete this request?']/following::button[1]
${ReqEnt_TranNoCapture}     //button[@id='startNewClientBtn']/preceding::span[1]
#//span[@id='spnFormattedTransactionNo' and @data-bind='text: FormattedTransactionNo']
${ReqEnt_RecallBtn}        //button[@id='btnRecall']
${Recall_CnfrmYes}      //button[@class='btn btn-primary' and @onclick='onClickRightButton();']
${ProceedtoPay}     //button[@id='proceedToPaymentBtn']
${Paymentmode}      //select[@id='ddlPaymentMode']
#check payment
${PaymentRefNo}          //input[@id='PmtRefNo']
${Chckdt}        //input[@id='ChkDate']
${ChckAmnt}     //input[@id='txtTotalCheckAmount']
${Payment_txtSource}        //input[@id='txtSource']



#tiff img
${tiffimgReqEnt}        //button[@id='add_more']
${fileupload}        //input[@id='file']
${add_file}     C:/Users/hosamanp/Tiff/Manohar_Birth_certificate-blank.tiff

#RequestEntry-PA Birth
${AnntWizSubBtn}    //button[@id='AnnotationWizardSubmitBtn']
${ReqEnt_CourtDec}      //input[@id='Que_1']
${ReqEnt_CertofFin}       //input[@id='Que_4']
${ReqEnt_CertofReg}     //input[@id='Que_6']
${ReqEnt_CertOfAuth}       //input[@id='Que_9']
${ReqEnt_AnnotCertMrg}     //input[@id='Que_11']
${ReqEnt_UnAnn}        //input[@id='Que_13']
${WizSrchBtn}       //button[@id='WizardSearchNextBtn']
${Wizpopupbutton}   //a[@id='wizardSummaryNextBtn']
${WizSrchCnfrmBtn}      //button[@id='WizardSearchPreviewConfirmBtn']


#RequesterDetails-WalkinRequestEntry
${ReqstrLastName}        id:txtReqLastName
${ReqstrFirstName}     id:txtReqFirstName
${ReqstrtxtAddress}     //input[@id='txtAddress']
${ReqstrstreetAddress}      //input[@id='streetAddress']
${ReqstrChildCountry}       id:cmbChildCountry
${ReqstrChildPrvnc}           //select[@id='cmbProvince']
${ReqstrChildCity}      //select[@id='cmbCity']
${EncoFinalSbtbtn}      xpath=//button[@id='finalSubmitbtn']
${EncoPrinters}     //select[@id='printers']
${EncoFinalPrint}       //button[@id='FinalPrint']
${Tran_no}      //span[@data-bind='text: RequestNo']
#//th[text()='Converted?' and @aria-controls='WalkInTranDetails']/following::span[1]

${Tran_No_Walkinpay}        //th[text()='Converted?' and @aria-controls='WalkInTranDetails']/following::span[2]
#//span[@data-bind='text: FormattedTransactionNumber']
${EncoClosemark}    //h4[text()='Success!']/preceding::button[1]
${WalkinpaymentEncoClosemark}      //h4[text()='Payment Successful']/preceding::button[1]

#Payment
${ClientReqPayment}     //a[@id='102']
${PaymentCriteria}      id:ddlSelectFilter
${PaymentSrch}  //input[@id='txtSeatch']
${PaySrchbtn}     //button[@id='btnSarchPayment']
${ValidID}  //select[@id='ddlValidIDPresented']
${TotalAmt}    //input[@id='TotalAmt']
${TotalAmt_Walkinpay}       //span[@id='TotalAmt']
${AmtTnd}   //input[@id='txtAmountTendered']
${PrintOR}  //button[@id='PrintOR']
${Payment_MiscAmnt}       //span[@class='form-value' and @data-bind='text: NetCashCollection().toFixed(2)']
${Payment_getmiscamt}        //span[@id='spTotalCashDrawerAmount']/preceding::input[1]
${Payment_Submit}        //button[@id='btnsave' and @type='submit']
${Payment_RemitVA}        //button[@id='btnRemitToVA']
${Payment_RemitVA1}         //button[@class='btn btn-primary' and @onclick='OnSubmitClick();']
${Payment_RemitVA2}         //button[@class='btn btn-primary' and @onclick='RemitCollection();']
${Payment_RemitVA3}         //button[@class='btn btn-primary' and @onclick='Waitingalert();']
${Payment_CoCollectionsTable}        //table[@id="CoCollectionsTable"]/tbody/tr[1]/td[1]/a
${Payment_CertifyRemittanceClick}         //button[@class='btn btn-primary' and @onclick='CertifyRemittanceClick();']
${Payment_RedirecttoCollections}         //button[@class='btn btn-primary' and @onclick='RedirecttoCollections();']
${Payment_RemitcollChckbx}        //input[@style='position:static;opacity:1' and @type='checkbox']
${Payment_Remitcollsubmit}         //button[@id='btnConfirm' and @type='submit']
${ConfirmDep_depositDate}        //input[@id='depositDate']
${ConfirmDep_cmbIdType}        //select[@id='cmbIdType']
${ConfirmDep_cmbAccountNo}    //select[@id='cmbAccountNo']
${ConfirmDep_SaveClick}        //button[@id='SaveClick']
${ReceivePayment}        //a[text()='Receive Payments']
${CashBalancing}        //a[text()='Cash Balancing']
${ReceiveCO}         //a[text()='Receive CO Collection']
${ConfirmDeposit}         //a[text()='Confirm Deposit']



#OutletSwitch
${SysAdmin}     //a[@id='180']
${UserDetInfo}      //a[@id='180']/following::a[2]
${SrchUserid}       //input[@type='search']
${EditUsrInfo}      //a[@id='delete']/preceding::a[1]
${OutletId}     //select[@id='txtOutletId']
${SaveOuteltId}     //button[@id='btnUserConfirm']
${SysadminAction}        //th[text()='Action']/following::a[1]
${Sysadmin_OfficeId}         //select[@id='txtOfficeId']



#Copy Issuance Birth - Unconverted
${ReqDetails_birthsaveclick}      //button[@class='btn' and @data-bind='click:birthSaveClick']
${More}        //a[@id='103']/following::a[8]
${UnconvertedMV}     //a[@id='132']
${UnconvHome}        //a[text()='Unconverted/MV Request Processing Home']
${Unconv_SrchVwJob}       xpath=//h5[text()='Search / View Job Request']
${Unconv_SrchViewJbrequest}         //a[@id='132']/following::a[4]
${Unconv_JobTransationNumber}        //input[@id='JobTransationNumber']
${Unconv_JobTransationSearch}         //button[@id='JobTransationSearch']
${Unconv_SaveJobRequestNumber}    //*[@id="DivJobRequestSearchDataTable"]/tbody/tr/td/a/span[1]
#//span[@data-bind='text:JobRequestNumber']
${Unconv_DestUnit}       //*[@id="DivJobRequestSearchDataTable"]/tbody/tr/td[6]/span
 #//th[@class='sorting' and @aria-label='Destination Unit: activate to sort column ascending']
${Unconv_JobReqpgBackbtn}         //h4[@class='main-title' and text()='Search/View Job Request']/following::a[1]
${Unconv_SrchVwJobbackbtn}          //h4[@class='main-title' and text()='Search/View Job Request']/following::a[1]
${Unconv_WorkUnitId}       //select[@id='txtWorkUnitId']
${Unconv_ViewJobReq}    //a[@id='132']/following::a[2]
${ShowReceivePayment}        //a[@onclick='showReceivePayment(this);']
${Unconv_jobRequestNumber}          //input[@id='jobRequestNumber']
${Unconv_ViewJbrqcheckbx}        //div[@class='checkbox']
${Unconv_ViewJbrqSrchbtn}        //button[@data-bind='click: serchButtonClick']
${Unconv_ViewJbrqPrintbtn}         //button[@id='printBtn']
${Unconv_TagasFB}        xpath=//h5[text()='Tag as FeedBack Form Case']
#//a[@id='132']/following::a[11]
${Unconv_TagasFBTxtProb}        //textarea[@id='txtProblem']
${Unconv_TagasFBtxtAction}        //textarea[@id='txtAction']
${Unconv_TagasFBbtn}       //button[@class='btn btn-primary' and @data-bind='click:TagfeedbackBtn']
${Unconv_TagasPosbtn}        //a[text()='Tag as Positive']
${Unconv_TagasPos1}         //h4[@class='main-title' and text()='Tag as Positive']/following::a[1]



########CI Marriage Converted- MVTagging of RSO#######################
${ReqDetails_mrgsaveclick}        //button[@data-bind='click:marriageSaveClick']
${ReqDetails_requestSummaryDiv}        //fieldset[@id='requestSummaryDiv']
####Encode endorsed crd#########in the same script
${EncoEndorsed_Name1}    //input[@id='registryNumber']/following::input[12]
${EncoEndorsed_Name2}   //input[@id='registryNumber']/following::input[14]
${EncoEndorsed_Name3}        //input[@id='registryNumber']/following::input[18]
${EncoEndorsed_Name4}        //input[@id='registryNumber']/following::input[20]
${EncoEndorsed_Name5}       //input[@id='registryNumber']/following::input[21]
${EncoEndorsed_Name6}        //input[@id='registryNumber']/following::input[23]
${EncoEndorsed_Name7}        //input[@id='registryNumber']/following::input[27]
${EncoEndorsed_Name8}        //input[@id='registryNumber']/following::input[29]
${EEsearch_field1}      //tbody[@id="VeiBody"]/tr/td[1]/div/label/span[2]
${EEsearch_fileCRDDocument}        //input[@id='fileCRDDocument']
${EEsearch_fileCRDDocumentfield1}     //input[@id="zoomout"]/following::button[2]
${EEsearch_InvalidEEnum}         //input[@id='EEReferenceNumber']/preceding::span[1]
${EEsearch_InvalidEEnum1}          //input[@id='EEReferenceNumber']
${EEsearch_EESearchRef}         //button[@id='EEReferenceSearch']
${EEsearch_EESearchRef1}         //h4[@id="assetModalHeader"]/span
${EEsearch_EESearchRef2}         //button[@id='remove']/following::button[1]
${EEsearch_EESubmit}         //button[@id='submitClick']
${EEsearch_VIPPartyWait}        //a[text()='VIP / Party Waiting']
${EEsearch_VIPPartyWaitSearch}          //button[@id='Search2']
${EEsearch_VIPPartyWaitSearch1}        //tbody[@id="VeiBody"]/tr/td[1]/a
${SysAdmin}         //a[@id='180' and text()='System Administration']
${SysAdmin_SOApprv}         //button[@id='approve']
${SysAdmin_SOApprv1}        //div[@id='popUpDetails']/following::button[1]
${SysAdmin_SOApprv2}          //button[@id="ApproveSubmit"]
${RSO_GoToTransactionSummary}        //a[@onclick='GoToTransactionSummary(this);']
${RSO_manualVerification}           //input[@id='manualVerification']
${RSO_ddlMVReasons}        //select[@id='ddlMVReasons']
${RSO_txtReason}        //textarea[@id='txtReason']
${RSO_MVcheckbox}         //input[@type='checkbox' and @data-bind='checked:SuspendTransaction']/following::button[1]
${RSO_ViewSelec1}         //button[@id='ViewSelectionList']/following::a[2]
${RSO_ViewSelec2}        //button[@id='ViewSelectionList']/following::a[5]
${RSO_ViewSelection}        //button[@id='ViewSelectionList']
${RSO_ViewSelectBrenlnk}         //button[@id='btnMBReNLink']/preceding::input[2]
${RSO_btnMMReNLinkbtn}         //button[@id='btnMMReNLink']
${RSO_linkrsnlist}         //select[@id='reasonList']
${RSO_linkaddrsn}         //button[@id='addReasonLink']
${RSO_linkConfirm}       //button[@id='btnMModalConfirm']
${RSO_RvwLinkTransNum}         //span[@class='text' and text()='Transaction Number']
${RSO_RvwLink1}        //button[@id='Search']/following::a[1]
${RSO_RvwLinkCRDSrch}         //button[@id='CRDSearch']
${RSO_btnMMReNUnLinkbtn}          //button[@id='btnMMReNUnLink']
${RSO_reasonTxtMarriage}        //input[@id='reasonTxtMarriage']
${RSO_addReasonMarriage}          //button[@id='addReasonMarriage']
${RSO_insertMRRequest}          //button[@id='insertMRRequest']





#Processing-CI Mrg WalkinReqEntry
${CertProcessHome}      //a[@id='103']
${ProcessQue}       //a[@id='103']/following::a[2]
${ProcessCRDQry}           //button[@id='btnCRDQuery']
${ProcessSuccessOK}      //button[@id='btnSuccessOK']
${ProcessVeiSrch}       //button[@id='idBacktoVei']
${GenNegCert}       //button[@id='idGenNegCert']
${AlertButton}      //button[@id='AlertButton']
${RevwLinking}      //a[@id='103']/following::a[4]
${ApprvUnlinking}        //a[@id='103']/following::a[5]
${rso_mren_link_reason_success_ok}     xpath=(//button[@id='submitdone'])[3]
${Process_PosCRDQry}        //button[@id='SearchClick']
${Process_SpecimenSign}         //button[@id='GenSpecimenSignature']
${Process_OKSpecimenSign}        //span[@id='btnRightCallBack']

##################Specimen Signature###############
${Specimen_FN}         //input[@id='txtFirstName']
${Specimen_LN}         //input[@id='txtLastName']
${Specimen_MN}          //input[@id='txtMiddleName']
${Specimen_Prov}        //select[@id='ddlProvinces']
${Specimen_Cities}        //select[@id='ddlCities']
${Specimen_date}         //input[@id='datepicker']
${Specimen_search}        //button[@id='btnSearch']
${Specimen_view}         //a[@id='scannedImage']
${Specimen_AUaccept}       //button[@id='AuAccept']
${Specimen_AUReject}        //button[@id='AuReject']
${Specimen_acceptconfirm}         //button[@id='confirm']
${Specimen_checkbox}        //input[@type='checkbox' and @class='checkradiobox']
${Specimen_Rejectbtn}         //button[@type='button' and @class='btn btn-default']/following::button[1]
${Specimen_Rejectcnfrmyes}        //span[@id='btnRightCallBack']



#View CRDs
${ViewCRDCDLI}      //a[text()='Search/Edit CRD/CDLI']
${ViewCRD_BatchNo}      //input[@id='batchNumber']
${ViewCRD_Province}     //select[@id='registrationProvinceForBatch']
${ViewCRD_City}     //select[@id='registrationCityForBatch']
${ViewCRD_Year}     //input[@id='registrationYear']
${ViewCRD_RegType}      //select[@id='registryBookTypeForBatch']
${ViewCRD_Searchbtn}        //select[@id='registryBookTypeForBatch']/following::button[1]
${ViewCRD_EncodeCRDs_BackBtn}       //a[@id='SearchDashBoard']
${ViewCRD_Edit}     //button[@id='EditVEIRecord']
${ViewCRD_Submit}       //button[@id='generalBirthSubmit']

#Encode LCR CRD Submission
${Click_Batch}   //div[@id="ViewBatchListCRDTable_filter"]/following::a[1]
${EncLCR_CRDSubmission}     //a[text()='Encode LCR CRD Submission']
${LCRCRD_City}       //select[@id='LCRCity']
${LCRCRD_Month}         //select[@id='ddlMonth']
${LCRCRD_Doctype}       //select[@id='ddlDocType']
${LCRCRD_RegStart}       //input[@id='txtRegistryStart']
${LCRCRD_RegEnd}        //input[@id='txtRegistryEnd']
${LCRCRD_txtdocCount}         //input[@id='txtDocCount']
${LCRCRD_dtReceived}      //input[@id='dtReceived']
${LCRCRD_btnSave}        //button[@id='btnSave']
${LCRCRD_PopupYes}      //a[@class='btn btn-default' and text()='No']
 #//button[@id='btPopupYes']/following::a[1]
${CreateCRDBatch}      //a[text()='Create CRD Batch']
${CRDBatch_BatchNo}        //input[@id='batchNo']


############Encode Endorsed CRD##############
${VEIHome}      //a[@id='141']
${VEI_Homepage}     //a[text()='VEI Home']
${VEI}     //a[text()='Vital Events Information']
${Encodeendorsed}   //a[text()='Encode Endorsed CRD']
${EndorsedRegprov}  //select[@id='RegProvince']
${Endorsedregcity}      //select[@id='RegCity']
${Regstatus}    //select[@id='RegCity']/following::select[1]
${Endorsedregdate}  //input[@id='RegistrationDate']
${EndorsedRegbook}  //input[@id='RegistrationDate']/following::select[1]
${EndorsedDocsub}   //input[@id='RegistrationDate']/following::select[2]
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
${Rep_soyes}    //button[@id='Yesbutton']
${Supervisor_Override}  xpath://a[text()='Supervisor Override']
${SO_Approve}    //button[@id='1']
${SO_Disapprove}    id=2
${SO_OK}    id=SupOvrapproveButton
${Endorsed_dateofmrgday}   //*[@id="MarriageView"]/div/section[7]/div/div[1]/div/input
${Endorsed_dateofmrg_mnth}  //*[@id="MarriageView"]/div/section[7]/div/div[2]/div/select
${Endorsed_dateofmrg_year}  //*[@id="MarriageView"]/div/section[7]/div/div[3]/div/input
${endorsed_pom_province}    //*[@id="EEProvinceMarriage"]
${endorsed_pom_city}     //*[@id="EECityMarriage"]
${endorsed_submit}      //button[@id="submitrecordM" and text()="Submit"]
${createEE_continue}     //button[@id='continue' and @data-bind='click:OnVEIContinueClick,enable:isVEIContinueDisable']

#Releasing
${CertReleasing}    //a[@id='104']
${ReleaseCert}      //a[@id='104']/following::a[2]
${TransNoKioskNo}   //input[@id='TransNum']
${ReleaseSrch}      //button[@id='validsearch']
${ReleaseTransLink}     //a[@data-bind='text:FormattedTransactionNumber,click:$root.onViewClick']
#${ReleasePrntBtn}       //button[@class='btn btn-primary']
${ReleasePrntBtn}   //button[@data-bind='enable:IsdetailPrintEnabled,click:PrintClick']
${ReleaseValidId}       //select[@id='ddlclaimentreason']
${ReleaseProceed}       //div[@id='proceed']
${ReleaseCntnu}     //button[@id='continue']
${SecpaSerial}      //input[@type='text']
${SecpaSerial2}     //input[@type='text']/following::input[1]
${SaveCntnu}        //button[@id='saveContinue']
${ReleaseOk}        //button[@data-bind='click:TransactionSuccessClick']
${Release_finalprint}       //button[@id='FinalPrintButton']

##########SECPA and SUPPLY Tracking###############
${SecpaMenu}          //a[text()='SECPA and Supply Tracking']
${Secpa_ReplenishStocks}    //a[text()='Replenish Stocks']
${Secpa_ReplenishStocks1}    //div[@id='divSearchHeader']/following::button[1]
${ReplenishStocks_txtsupp}        //input[@id='txtSupplier']
${ReplenishStocks_txtDelivery}         //input[@id='txtDelivery']
${ReplenishStocks_dtFrom}        //input[@id='dtFrom']
${ReplenishStocks_txtReceivedBy}        //input[@id='txtReceivedBy']
${ReplenishStocks_adddetailbtn}        //button[@class='btn btn-primary' and @data-bind='enable:IsAddEnabled,click:addDetail']
${ReplenishStocks_add}        //select[@class='form-control']
${ReplenishStocks_txtQty}        //input[@id='txtQty']
${ReplenishStocks_txtBox}        //input[@id='txtBox']
${ReplenishStocks_SlNo1}        //input[@id='txtBox']/following::input[1]
${ReplenishStocks_SlNo2}       //input[@id='txtBox']/following::input[2]
${ReplenishStocks_Save}         //i[@class='fa fa-check' and @data-bind='click:$root.saveDetail']
${ReplenishStocks_SaveClick}         //button[@class='btn btn-primary' and @data-bind='enable:IsAddEnabled,click:SaveClick']
${DispatchStocks}        //a[text()='Dispatch Stocks']
${DispatchStocks_quant}         //select[@class='form-control']/following::input[1]
${DispatchStocks_ddlSupplier}         //select[@id='ddlSupplier']
${DispatchStocks_delRcptNoId}         //input[@id='deliveryReceiptNoId']
${DispatchStocks_StartSECPANo}      //select[@class='form-control']/following::input[2]
${DispatchStocks_EndSECPANo}        //select[@class='form-control']/following::input[3]
${ConfirmStocks}         //a[text()='Confirm Stocks']
${ConfirmStocks_collapse}        //a[@class='accordion-toggle' and @data-toggle='collapse']
${ConfirmStocks_txtReceiptNo}         //input[@id='txtReceiptNo']
${ConfirmStocks_ConfirmClick}         //button[@class='fa fa-check' and @data-bind='click:$root.ConfirmClick,visible:CanEdit']
${ConfirmStocks_ReceivedQuantity}        //input[@placeholder='Received Quantity' and @data-bind='value:ReceivedQuantity']
${ConfirmStocks_addDetail}         //button[@class='btn btn-primary' and @data-bind='enable:IsAddEnabled,click:addDetail']
${ConfirmStocks_ReceivedQuantity}        //input[@placeholder='Received Quantity' and @data-bind='value:ReceivedQuantity']
${ConfirmStocks_Secpa1}        //input[@placeholder='Received Quantity']/following::input[7]
${ConfirmStocks_Secpa2}         //input[@placeholder='Received Quantity']/following::input[8]
${ConfirmStocks_ReceivedQuantity1}        //input[@placeholder='Received Quantity']/following::input[9]
${ConfirmStocks_ReceivedQuantity2}        //i[@class='fa fa-check']/preceding::select[1]
${ConfirmStocks_saveDetail}        //i[@class='fa fa-check' and @data-bind='click:$parent.saveDetail']
${ConfirmStocks_saveDetail1}     //button[@class='btn btn-primary' and @data-bind='click:SaveClick']


##############Accounting Script###################
${Accounting}         //a[text()='Accounting']
${CustomerManagement}         xpath=//a[text()='Customer Management']
${Acc_SearchCustomersaccordion}       //a[@class='accordion-toggle' and @data-parent='#SearchCustomersaccordion']
${Acc_CustomerNoOrName}         //input[@id='CustomerNoOrName']
${CustMgmnt_CustSrch}        //button[@id='CustomersSearch']
${CustMgmnt_Edit}        //i[@class='fa fa-pencil-square-o' and @data-bind='click:$root.EditClicked']
${CustMgmnt_addPerson}        //button[@id='addPerson']
${CustMgmnt_addPerson1}        //button[@id='addPerson']/preceding::input[8]
${CustMgmnt_addPerson2}        //button[@id='addPerson']/preceding::input[7]
${CustMgmnt_addPerson3}        //button[@id='addPerson']/preceding::input[5]
${CustMgmnt_addPerson4}         //button[@id='addPerson']/preceding::input[4]
${CustMgmnt_addPerson5}        //button[@id='addPerson']/preceding::select[2]
${CustMgmnt_addPerson6}         //button[@id='addPerson']/preceding::button[4]
${CustMgmnt_addPerson7}         //button[@id='addPerson']/preceding::input[1]
${CustMgmnt_addPerson8}         //button[@id='addPerson']/preceding::select[1]
${CustMgmnt_addPerson9}        //button[@id='addPerson']/preceding::button[1]
${CustMgmnt_save}         //button[@id='save']
${CustMgmnt_btnRight}         //span[@id='btnRight']












#CRD Submission
${CRDSubRCC}        //a[@id='130']
${CreateBatch}    //a[@id='130']/following::a[2]
${Batchtype}      //select[@id='BatchTypeName']
${UnitDep}      //select[@id='UnitDepartmentName']
${Date_Rcvd}     //input[@id='DateReceived1']
${Calendar_Month}   xpath://select[@class='ui-datepicker-month']
${Calendar_Year}    xpath://select[@class='ui-datepicker-year']
${Calendar_Date}    xpath://*[@id="ui-datepicker-div"]/table/tbody/tr[1]/td[6]/a
${RcvdbySection_date}       //input[@data-bind='value:DateReceived']
${Operator}     //input[@data-bind='value:Operator1']
${RCCBtchSbmt}      //button[@data-bind='click: SubmitData']
#CRDRCCSave
${TrannoPrm}    //input[@id='TransactionNo']
${RCCSave}  //a[@class='btn btn-default' and text()='Cancel']/following::button[1]
${RCCtext}        //button[@class="btn btn-primary" and text()='Submit']/preceding::input[1]
${RCCSubmit}          //button[@class="btn btn-primary" and text()='Submit']
${RCCAlertbtn}        //button[@id='AlertButton' and text()='OK']






#######Annotaion#############
${Annotran}      //input[@id='transactionNumber']
${Annosearch}   //button[@id='searchTransactionNumber']
${Aimg}    //input[@id='imageID']
${AContinue}    id:continueBtn
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
${AnnSubmitAppr}        //button[@id='AlertButton']
${AnnotationProcessing}         //a[@id='131' and text()='Annotation Processing']
${AnnProcess_TagasPos}        //select[@id='tagOptionDdl']
${ProcessAnnReq}         //a[text()='Process Annotation Request']
${AnnProcessHome}        //a[text()='Annotation Processing Home']




#AnnotationApprove
${AnnApprDisAppr}       //a[@id='131' and text()='Approve / Disapprove Annotation Request']
${AnnApprBtn}        //button[@id='AnnotationApproveBtn']

#Authentication-Death-WalkinReqEntry
${Req_DLN}     id:txtDeathPriLastName
${Req_DFN}     id:txtDeathPriFirstName
${Req_DMN}     id:txtDeathPriMiddleName
${Req_MLN}     id:txtDeathAuxLastName
${Req_MFN}     id:txtDeathAuxFirstName
${AddImgDeath}    //button[@id='death-AddImageBtn']
${SexD}      //select[@id='txtDeathSex']
${Req_DeathMonth}   //select[@id='deathMonth']
${Req_DeathDate}     id:deathDate
${Req_DeathYear}     id:deathYear
${Req_DeathPrvnc}     //select[@id='deathProvince']
${Req_DeathCity}      //select[@id='deathCity']
${Req_DeathPurp}        //select[@id='cmbDeathRequestPurpose']
${WalkinReqPay_deathSaveClick}        //button[@data-bind='click:deathSaveClick']


#Authentication-Birth-WalkinReqEntryPayment
${Req_BirthLN}     id:txtBirthPriLastName
${Req_BirthFN}     id:txtBirthPriFirstName
${Req_BirthMN}     id:txtBirthPriMiddleName
${Req_BirthMLN}     id:txtBirthAuxLastName
${Req_BirthMFN}     id:txtBirthAuxFirstName
${AddImgBirth}    //button[@id='birth-AddImageBtn']
${SexBirth}      //select[@id='txtBirthSex']
${Req_BirthMonth}   //select[@id='birthMonth']
${Req_BirthDate}     id:birthDate
${Req_BirthYear}     id:birthYear
${Req_BirthPrvnc}     //select[@id='birthProvince']
${Req_BirthCity}      //select[@id='birthCity']
${Req_BirthPurp}        //select[@id='cmbRequestPurpose']
${AuthB_WalkinPay_Saveclick}        //button[@class='btn' and @data-bind='click:birthSaveClick']
${Req_ClkNo}        //button[@type='button' and @onclick='onClickLeftButton();']
${Req_ClkYes}         //button[@type='button' and @onclick='onClickRightButton();']
${Req_Authfilenm3}         //span[@id='filename']/following::button[3]
${Req_Authconv1}        //th[text()='Converted']/following::i[1]
${Req_Authconv2}         //th[text()='Converted']/following::i[2]
${Req_AuthbtnAddAnother}        //button[@id='btnAddAnother']
${Req_AuthRqstrPrvnc}        //select[@id='cmbRequesterProvince']
${Req_AuthRqstrCity}         //select[@id='cmbRequesterCity']





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

#VEI CRD batch
${lcrcrd_batch_dobday}  //*[@id="childViewModelDiv"]/div[3]/div[1]/div/input
${lcrcrd_batch_dobmonth}    //select[@class="form-control form-field editable-field AlphaNumeric"]
${lcrcrd_batch_dobyear}     //*[@id="childViewModelDiv"]/div[3]/div[3]/div/input
${lcrcrd_batch_placetype}   //select[@data-bind="options:placeTypeList,value:PlaceType,optionsText:'Description' ,optionsValue:'ID',optionsCaption:'Select Place Type'"]
${batch_nameofhsptl}    //*[@id="NameHospital"]/div/input
${LCRCRD_AddSrch}       //button[@class='btn btn-primary' and @data-bind='click: AddSearchData']
${lcrcrd_batch_PopupSuccess}      //div[@id='popUpSuccessCallText']/following::button[1]
${lcrcrd_ContinueVEIRecord}    //button[@id='ContinueVEIRecord']
${lcrcrd_childfirstname}        //input[@data-bind='value:childFirstName']
${lcrcrd_childmiddlename}        //input[@data-bind='value:childMiddleName']
${lcrcrd_childlastname}        //input[@data-bind='value:childLastName']
${lcr_field1}           //input[@data-bind='value:childLastName']/following::select[1]
${lcr_PlaceofBirthProvince}       //select[@id='PlaceofBirthProvince']
${lcr_PlaceofBirthCity}         //select[@id='PlaceofBirthCity']
${lcr_PlaceofBirthBarangay}        //select[@id='PlaceofBirthBarangay']
${lcr_singlechild}         //*[@id="childViewModelDiv"]/div[7]/div[1]/div/select
${lcr_firstchild}         //*[@id="childViewModelDiv"]/div[7]/div[3]/div/select
${lcr_childweight}        //input[@data-bind='value:weightAtBirth']
${lcr_motherFN}      //*[@id="motherViewModelDiv"]/div[1]/div[1]/div/input
${lcr_motherLN}         //*[@id="motherViewModelDiv"]/div[1]/div[3]/div/input
${lcr_mothercountry}        //*[@id="motherViewModelDiv"]/div[2]/div[1]/div/select
${lcr_motherreligion}        //*[@id="motherViewModelDiv"]/div[2]/div[2]/div/select
${lcrcrdbtch_motherplace}        //*[@id="motherViewModelDiv"]/div[2]/div[3]/div/select
${lcrcrdbtch_motherplace1}        //*[@id="motherViewModelDiv"]/div[3]/div[1]/div/select
${lcrcrdbtch_motherplace2}         //*[@id="motherViewModelDiv"]/div[3]/div[2]/div/select
${lcrcrdbtch_motherplace3}    //*[@id="motherViewModelDiv"]/div[3]/div[3]/div/select
${lcrcrdbtch_motheroccup}        //*[@id="motherViewModelDiv"]/div[4]/div[1]/div/select
${lcrcrdbtch_motherage}         //*[@id="motherViewModelDiv"]/div[4]/div[2]/div/select
${lcrcrdbtch_motherprvnc}        //select[@id='MothersResidenceProvince']
${lcrcrdbtch_mothercity}         //select[@id='MothersResidenceCity']
${lcrcrdbtch_motherBarangay}        //select[@id='MothersResidenceBarangay']
${lcrcrdbtch_prntsmrgmonth}         //*[@id="marriageParentsViewModelDiv"]/div[4]/div[1]/div/select
${lcrcrdbtch_prntsmrgdate}         //*[@id="marriageParentsViewModelDiv"]/div[4]/div[2]/div/input
${lcrcrdbtch_prntsmrgyear}         //*[@id="marriageParentsViewModelDiv"]/div[4]/div[3]/div/input
${lcrcrdbtch_prntsmrgprvnc}        //select[@id='PlaceofMarriageBirthProvince']
${lcrcrdbtch_prntsmrgcity}        //select[@id='PlaceofMarriageBirthCity']
${lcrcrdbtch_prntsmrgstatus}         //*[@id="marriageParentsViewModelDiv"]/div[8]/div/div/select
${lcrcrdbtch_prntsmrgstatus1}           //*[@id="marriageParentsViewModelDiv"]/div[10]/div[1]/div/select
${lcrcrdbtch_prntsmrgstatus2}         //*[@id="marriageParentsViewModelDiv"]/div[10]/div[2]/div/input
${lcrcrdbtch_prntsmrgstatus3}         //*[@id="marriageParentsViewModelDiv"]/div[11]/div[1]/div/select
${lcrcrdbtch_prntsmrgstatus4}         //*[@id="marriageParentsViewModelDiv"]/div[11]/div[2]/div/input
${lcrcrdbtch_prntsmrgstatus5}         //*[@id="marriageParentsViewModelDiv"]/div[11]/div[3]/div/input
${lcrcrdbtch_prntsmrgstatus6}        //*[@id="marriageParentsViewModelDiv"]/div[12]/div/div/select
${lcrcrdbtch_time}        //*[@id="marriageParentsViewModelDiv"]/div[16]/div[3]/div/select
${lcrcrdbtch_comntdivOK}        //div[@id="CommentDiv"]/preceding::button[1]
${ViewCRD_regno}        //span[@data-bind='text: RegNo']


#CDLI Annotation wizard RA9048 Birth
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
${CDLI_addsearchdata}        //button[@class='btn btn-primary' and @data-bind='click: AddSearchData' and text()='Submit']




#Quality Check Reports
${QualityCheck_Result}      //span[@data-bind='text:CertificationPassStatus']
${QualityCheckReports}          //a[text()='Quality Check Reports']
${QualityChck_reportType}         //select[@id='reportType']
${QualityChck_ProvinceName}           //select[@id='ProvinceName']
${QualityChck_Regbooktype}           //select[@id='registrationBookType']
${QualityChck_Passreport}        //button[@id='generatePassReport']
${QualityChck_labelPassreport}         //label[text()='Certification Pass Status']




### CRD Match Rework ###
${dc_link}     xpath=//a[@id='150']
${dc_home}      xpath=//a[text()='Document Conversion Home']
${dc_crd_match/rework}     xpath=//a[@id='CRDCLICK']
${dc_crd_match/rework_search}     xpath=//*[@id="ViewBatchListCRDTable_filter"]/label/input
#${dc_crd_match/rework_click_id}     xpath=//*[@id="ViewBatchListCRDTable"]/tbody/tr/td[3]/a
${select_registry}  xpath=//select[@id='RegistryBookTypeName']/option[2]
${enter_reginumber}  //input[@id='registryNumber']
${click_submit}  xpath=//button[@id='search']
${saveandcontinueindc}  xpath=//button[@id='saveAndContinue']
${crdcommitbatch}  xpath=//button[@id='commitbatch']
${crdsuccess}  xpath=//button[@id='btnSuccessOK']
${enter_search}  xpath=//*[@id="ViewBatchListCRDTable_filter"]/label/input


### DC QA pass ###
${crdqachecking}  xpath=//h5[text()='Perform Quality Assurance (QA) Check on Primary CRDs']
${crdacceptmatch}  xpath=//button[@id='acceptMatch']
${lastcrdacceptmatch}  xpath=//button[@id='AcceptBatch']
${qapassedok}  xpath=//button[@id='btnSuccessOK']
${cdliqachecking}  xpath=//h5[text()='Perform Quality Assurance (QA) Check on CDLIs']

####CDLI DC######
${select_match}  xpath=//a[@id='CDLICLICK']//span[text()='Match / Rework']

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

############CDLI batch#################
${lcrcdli_encolcrcdlisub}         //a[text()='Encode LCR CDLI Submission']
${lcrcdli_regbooktype}        //select[@id='ddlRegBookType']
${lcrcdli_ddlDocType}         //select[@id='ddlDocType']
${lcrcdli_ddlDocSubType}          //select[@id='ddlDocSubType']
${lcrcdli_lcrsubbtnOK}         //button[@id='btnOK']
${lcrcdli_CreateCDLIBatch}          //a[text()='Create CDLI Batch']
${lcrcdli_batchNo}         //input[@id='batchNo']
${lcrcdli_checkradioboxadminBirth}          //input[@value='1' and @class='checkradioboxadminBirth']
${lcrcdli_radioboxadminBirth1}         //input[@value='1' and @class='checkradioboxadminreasoncce']/preceding::select[1]
${lcrcdli_radioboxadminreasoncce}          //input[@value='1' and @class='checkradioboxadminreasoncce']
${lcrcdli_radioboxadminreasoncce1}        //input[@value='7' and @class='checkradioboxadminreasoncce']/following::select[1]
${lcrcdli_radioboxadminreasoncce2}        //input[@value='7' and @class='checkradioboxadminreasoncce']/following::select[2]
${lcrcdli_radioboxadminreasoncce3}         //input[@value='7' and @class='checkradioboxadminreasoncce']/following::select[3]
${lcrcdli_radioboxadminreasoncce4}    //input[@value='7' and @class='checkradioboxadminreasoncce']/following::input[8]
${lcrcdli_radioboxadminreasoncce5}     //input[@value='7' and @class='checkradioboxadminreasoncce']/following::input[9]
${lcrcdli_cldibtchregno}         //input[@id='RegistryNoBirth']
${lcrcdli_cldibirthday}         //input[@data-bind='value:birthDay']
${lcrcdli_cldibirthmonth}       //input[@data-bind='value:birthDay']/following::select[1]
${lcrcdli_cldibirthyear}        //input[@data-bind='value:birthDay']/following::input[1]
${lcrcdli_cldibirthyear1}        //input[@data-bind='value:birthDay']/following::select[2]
${lcrcdli_cldiBirthProvince}        //select[@id='LIPlaceofBirthProvince']
${lcrcdli_cldiPlaceofBirthCity}        //select[@id='LIPlaceofBirthCity']
${lcrcdli_cldimotherFirstName}         //input[@data-bind='value:motherFirstName']
${lcrcdli_cldimothermidName}      //input[@data-bind='value:motherMiddleName']
${lcrcdli_cldimotherlastName}        //input[@data-bind='value:motherLastName']
${lcrcdli_cldifatherFirstName}        //input[@data-bind='value:fatherFirstName']
${lcrcdli_cldifathermidName}        //input[@data-bind='value:fatherMiddleName']
${lcrcdli_cldifatherlastName}        //input[@data-bind='value:fatherLastName']
${lcrcdli_fatherbirthmonth}    //input[@data-bind='value:fatherLastName']/following::select[1]
${lcrcdli_cldifatherlastName}        //input[@data-bind='value:fatherLastName']
${lcrcdli_fatherbirthdate}          //input[@data-bind='value:fatherLastName']/following::input[1]
${lcrcdli_fatherbirthyear}        //input[@data-bind='value:fatherLastName']/following::input[2]
${lcrcdli_fatherProvince}         //select[@id='AdminBirthpromolProvince']
${lcrcdli_fatherCity}        //select[@id='AdminBirthpromolCity']
${lcrcdli_fathermonth}         //select[@id='AdminBirthpromolCity']/following::select[1]
${lcrcdli_fatherdate}          //select[@id='AdminBirthpromolCity']/following::input[1]
${lcrcdli_fatheryr}          //select[@id='AdminBirthpromolCity']/following::input[2]


############Transmit to CO#####################
${TransmittoCO}      //a[text()="Transmit CRDs/CDLIs to Central Office"]
${TransmittoRegyr}          //input[@id="txtCrdSearchRegYear"]
${TransmittoRegymonth}        //select[@id="SearchddlMonth"]
${TransmittoCO_btnSearchCRD}        //button[@id="btnSearchCRD"]
${TransmittoCO_btnSearchCRD1}        //div[@id="transmitCRDSearchTable_filter"]/following::span[1]
${TransmittoCO_btnTransmittalOK}         //button[@id="btnTransmittalOK"]
${TransmittoCO_btnTransmit}        //button[@id='btnTransmit']
${TransmittoCO_SuccessmsgOK}        //div[text()=" Transmittal Report successfully generated and batches tagged as submitted to Central Office."]/following::button[1]
${TransmittoCO_btnPrintTransmittal}          //button[@id='btnPrintTransmittal']
${TransmittoCO_TransmittalRefNo}          //input[@id='transmittalReferenceNumber']
${TransmittoCO_date}        //div[@id="ReceiveBatchResultsCRDCDLI_filter"]/following::input[1]
${TransmittoCO_saveReceiveDCC}         //button[@id="saveReceiveDCC"]

##########Forward CDLI to DCC###############
${ForwardCDLItoDCC}       //a[text()='Forward CDLI to DCC']
${FrwdtoDCC_Regmonth}        //select[@id='registrationMonth']
${FrwdtoDCC_searchForwardDCC}         //button[@id='searchForwardDCC']
${FrwdtoDCC_submitForwardDCCpreced}        //button[@id='submitForwardDCC']/preceding::input[1]
${FrwdtoDCC_submitForwardDCC}         //button[@id='submitForwardDCC']
${FrwdtoDCC_transmitToDCC}        //button[@id='transmitToDCC']
${FrwdtoDCC_transmitToDCC1}         //button[@id='transmitToDCC']/following::button[2]


 #############Receieve batch at DCC##################
${ReceiveBatchCDLIatDCC}            //a[text()='Receive Batch/CDLI at DCC']
${ReceiveatDCC_Transrefnum}           //input[@id='transmittalReferenceNumberDCC']
${ReceiveatDCC_searchReceiveDCC}         //button[@id='searchReceiveDCC']
${ReceiveatDCC_search1}         //input[@type='search']/following::button[1]


######################DC CDLI############################
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


######################----DC CRD-##########################
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

