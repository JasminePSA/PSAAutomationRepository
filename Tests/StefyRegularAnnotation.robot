*** Settings ***
Documentation  Suite description
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/ITP2KeywordsStefy.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/ObjectRepository/ITP2LocatorsStefy.robot
Library  SeleniumLibrary
Library  FakerLibrary
Library  String
Library    DateTime
Library    Collections
Variables  C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/TestdataStefy.yml
*** Variables ***

*** Test Cases ***
RegularAnnotation-Marriage
   [Documentation]      This TestScript is for Regular Annotation Marriage certificate (Walk-in-Request & Payment)
   ${Name}       First Name Female
   ${Name2}      First Name Male
   ${Name3}      Last Name
   ${Name1}      Last Name
   ${Address}         Address
   Open Counter
   Click Element    ${Client_Certificate_Menu}
   Click Element    ${WalkInReq&Payment}
   Select From List By Label    ${TransactionType_WIR}      REGULAR ANNOTATION - MARRIAGE
   Sleep    3s
   Select From List By Index   ${DocSubtype}    1
   Click Element    ${1_PA_ChangeOfName_Checkbox}
   Click Element    ${2_PA_ChangeOfName_Checkbox}
   Click Element    ${3_PA_ChangeOfName_Checkbox}
   Click Element    ${4_PA_ChangeOfName_Checkbox}
   Click Element    ${5_RA_ChangeOfName_Checkbox}
   Click Element    ${6_RA_ChangeOfName_Checkbox}
   Execute Javascript       window.scrollTo(0,1500)
   Click Button    ${Wizard_Done}
   Click Button    ${Wizard_Submit}
   Sleep    3s
   Input Text    ${RA_M_HLName}     ${Name}
   Input Text    ${RA_M_HFName}      ${Name1}
   Input Text    ${RA_M_WLName}    ${Name2}
   Input Text    ${RA_M_WFName}    ${Name3}
   Select From List By Index    ${RA_M_Month}     1
   Input Text    ${RA_M_Date}     01
   Input Text    ${RA_M_Year}     2018
   Select From List By Index    ${RA_M_Province}      001
   Select From List By Value    ${RA_M_City}    00101
   Select From List By Value    ${RA_M_Purpose}    CL
   #Input Text    ${RA_M_OtherPurpose}    Testing
   Execute Javascript    window.scrollTo(0,1500)
   Sleep    15s
   Click Button    ${RA_M_Save}
   Input Text      ${R_LName}     ${Name1}
   Input Text      ${R_FName}     ${Name3}
   Input Text      ${Address1}    ${Address}
   Select From List By Index    ${R_Province_Cmar}       001
   Click Element    ${R_City_Cmar}
   Select From List By Label   ${R_City_Cmar}       LACUB
   Input Text    ${requestmobile}    02222222222

   Sleep    2s
   Scrollbar
   Sleep    6s
   Click Button    ${finalprint2}
   Sleep  10s
   ${Reference number}   Get Text    ${Get_Reference}
   log    ${Reference number}
   Sleep    5S
   Click Button     ${RA_Success_Close}


   ####################  EE FOR MARRIAGE##############################################
   Click Element    ${more_option}
    Click Element    ${vei}
    Click Element    ${vei_home}
    Sleep    5
    Click Element    ${Encodeendorsed}
    Sleep    3
    Select From List By Value    ${EndorsedRegprov}     001
    Sleep    3
    Select From List By Value    ${Endorsedregcity}     00101
    Sleep    3
    Select From List By Value    ${Regstatus}   2
    Sleep    3s
    Input Text    ${Endorsedregdate}    12/09/2022
    Select From List By Value    ${EndorsedRegbook}     D
    Sleep    2s
    Select From List By Value    ${EndorsedDocsub}   0A
    Input Text    ${EndorsedReg}    ${RegularAnn.eenumberm}
    Sleep    3
    Execute Javascript  window.scrollTo(0,350)
    Sleep    3s
    #Wait Until Element Is Visible    ${eedeathfirst5}
   # Click Element    ${eedeathfirst1}
    Input Text    ${huseefirstname}    Sunil
    Input Text    ${huseemiddle}    A
    Input Text    ${huseelastname}    DEV
    Input Text    ${husmotherfirstnameee}    Elsy
    Input Text    ${husmotherlastnameee}    K
    Scrollbar
    Sleep    3s
    Input Text    ${wifefirstnameee}    Stefy
    Input Text    ${wifelastnameee}    A
    Input Text    ${wifemotherfirstnameee}    Lissy
    Input Text    ${wifemotherlastnameee}    Sabu
    Input Text    ${dateofmarriageee}    23
    Click Element    ${monthofmarriageee}
    Input Text    ${yearofmarriageee}    2022
    Select From List By Value    ${eeplaceofmarriage}   001
    Select From List By Value    ${eecityofmarriage}    00101

    Click Button    ${eemarriagesubmit}
    Sleep    3s

    Click Button    ${EncodeOk}
    Sleep    2

    ####################### Create EE Request #####################################
    Click Element    ${more_option}
    Click Element    ${EncodeEnd}
    Sleep    2
    Click Element    ${EndorsedcreateEE}
    Sleep    2
    Select From List By Label    ${RegBookEE}   MARRIAGE-D
    Input Text    ${RegnoEE}    ${RegularAnn.eenumberm}
    #Select From List By Value    ${RegcounEE}   PHILIPPINES
   Select From List By Label    ${RegcityEE}   ABRA
    Select From List By Value    ${RegProvEE}   00101
    Sleep    3
    Click Button    ${EEsearch}
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Element    ${eeview}
    Click Button    ${eeshow}
    Sleep    3
    Execute Javascript  window.scrollTo(0,0)
    Sleep    3
    Choose File    ${eechoosefile}    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Files/Tiff_Files/page2.tif
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Button    ${eezoom}
    Sleep    5
    Click Element  ${eereferencesearch}
    Sleep    3
    Input Text    ${enteree}    00000-000-00000-000
    Sleep    3
    Click Button    ${eesearchoption}
    Sleep    3
    Click Button    ${eeaction}
    Sleep    3
    Click Button    Auto-generate EE Transaction
    Sleep    5
    ${Get_EE}  Get Text    ${selecteereference}
    Sleep    5
    Log    ${Get_EE}
    Sleep    5
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Scroll Element Into View    ${viewee}
    Click Button    ${eeselect1}
    Sleep    3
    Click Button    ${eesubmitclick}
    Sleep    3
    Click Button    ${eealert}
    Sleep    5

    ########### VIP Party Waiting #######################################
    Click Element    ${More}
    Click Element    ${EncodeEnd}
    Sleep    2
    Click Element    ${selectvipparty}
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Element    ${eereferenceno}
    Sleep    3
    Input Text    ${eereference2}    ${Get_EE}
    Sleep    3
    Click Button    ${eesearch1}
    Sleep    4
    Click Element    ${eepartyyes}
    Sleep    5
    Click Button    ${Rep_soyes}
#new browser
    Open Browser  ${url_qa}  ${browser}
    Maximize Browser Window
    Sleep    3s
    Click Element    ${application_home}
    Click Element    ${ccr_Link}
    #Title Should Be    Civil Registry System
    #OpenCounter     #close the counter before every run
    #Homepage
    Click Element    ${More}
    Click Link    ${eesysadmin}
   Sleep    2
    Click Element    ${Supervisor_Override}
    ${TabbedWindow}   Get Window Handles
    Log    ${TabbedWindow}[1]
    Switch Window   ${TabbedWindow}[1]
    Click Button    ${SO_Approve1}
    #${Ok_Button}
    Switch Browser    1
    Sleep  20s
    Click Button    ${SO_OK}
    Sleep    3
    ${Get_imageid}  Get Text    ${eeimageid}
    Sleep    5
    Log    ${Get_imageid}
    Sleep    3s
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Button    ${eeapprove}
    Sleep    2
   Click Button    ${eepopup}
    Sleep    2
    Click Button    ${eeapprovesubmit}
    Sleep    2
    Click Button    ${eealertmsg}
    Sleep    3s



###################### CDLI Marriage ##############################################

   Click Element    ${More}
    Click Element    ${vei}
    Click Element    ${vei_home}
    Sleep    3
    Click Element    ${CDLI_LCR}
    Sleep    3
    Select From List By Value    ${cdlideathcity}  00101
    Select From List By Value    ${CDLI_Reg}    I
    Select From List By Value    ${CDLI_DOCTYPE}    MA
    Select From List By Value    ${CDLI_DOCSUBTYPE}    AA
    Input Text    ${cdlireginum}    ${RegularAnn.cdliyear}${RegularAnn.cdliregno}
    Input Text    ${cdlidatereceived}    12/09/2022
    Scrollbar
    Sleep    3s
    Click Button    ${cdlideathnext}
    Sleep    3s
    Select Checkbox    ${checkpa1}
    Select Checkbox    ${checkpa2}
    Execute Javascript  window.scrollTo(0,300)
    Sleep    3s
    Select Checkbox    ${checkpa7}
    Execute Javascript  window.scrollTo(0,500)
    Sleep    3s
    Select Checkbox    ${checkpa8}
    Select Checkbox    ${checkpa9}
   Select Checkbox    ${chekcl13}
    Execute Javascript  window.scrollTo(0,1000)
    Sleep    3s
    Click Button    ${subnext}
    Sleep    3s
    Click Element    ${nextsub}
    Execute Javascript  window.scrollTo(0,3000)
    Sleep    3s
    Click Button    ${confirmsu}
    Sleep    3s
    Click Button    ${cdliok}
    Sleep    3s
    Click Element    ${cdli_confirmno}
    Sleep    4s

    Click Link  ${Create_CDLI_Batch}
    Sleep   3s
    Input Text    ${Enter_batchNo}    ${RegularAnn.batchno}
    Select From List By Value    ${crd_country}  608
    Select From List By Value    ${crd_province}  001
    Select From List By Value    ${crd_city}  00101
    Input Text    ${crd_year}    2022
    Select From List By Value    ${crd_month}   11
    Select From List By Value    ${crd_regi_type}   I
    Sleep    20s
    Input Text    ${Reg_RegistryStart_no}   ${RegularAnn.cdliyear}${RegularAnn.cdliregno}
    Sleep    3
    Input Text    ${Reg_RegistryEnd_no}   ${RegularAnn.cdliyear}${RegularAnn.cdliregno}
    Sleep    3
    Input Text    ${Enter_actualDocumentCount}    1
    Sleep    3
    Input Text    ${Enter_problemDocumentCount}    0
    Sleep    5
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    5
    Click Element    ${Click_Submit_VEI}
    Sleep    3
    Click Element    ${VEI_Popup_OK}
    Sleep    3
    Input Text    ${VEI_registryNumber}    -${RegularAnn.cdliregno}
    Sleep    3
    Select From List By Value    ${VEI_ddlDocSubType}   220
    Sleep    5
    Execute Javascript  window.scrollTo(0,200)
    Sleep    5
    Click Element    ${VEI_ContinueVEIRecord}
    Sleep    5
    Execute Javascript  window.scrollTo(0,300)
    Sleep    3s
    Click Element    ${petitioner_relationmarriage}
    Select Checkbox    ${petitionerreason_marriage}
    Execute Javascript  window.scrollTo(0,3000)
    Sleep    5s
    Input Text    ${registration_daymarriage}    14
    Click Element    ${registration_monthmarriage}
    Input Text    ${registration_yearmarriage}    2022
    Input Text    ${groomfirstname}    Sunil
    Input Text    ${groommiddlenamem}    P
    Input Text    ${groomlastnamem}    Dev
    Input Text    ${bridefirstname}    Stefy
    Input Text    ${bridemiddlename}    P
    Input Text    ${bridelastname}    A
    Input Text    ${marriagedaym}    18
    Click Element    ${marriagemonthm}
    Input Text    ${marriageyearm}    2000
    Select From List By Value    ${marriageprovincem}   001
    Select From List By Value    ${marriagecitym}   00101
    Input Text    ${groommotherfirstn}    Elsy
    Input Text    ${groommothermiddlen}    D
    Input Text    ${groommotherlastn}    K
    Input Text    ${bridmotherfirstn}    Lissy
    Input Text    ${bridemothermiddlen}    P
    Input Text    ${bridemotherlastn}    Sabu
    Scrollbar
    Sleep    3s
    Click Element    ${dateofpomugalation}
    Input Text    ${dayofpomugalation}    24
    Input Text    ${yearofpomugalation}    2022
    Select From List By Value    ${pomugalateprovince}  001
    Select From List By Value    ${pomugalationcity}    00101

     Click Button    ${VEI_CDLI_Submit}
    Sleep    3
    Click Button  ${VEI_CDLI_Alert}
    Sleep    3
    Click Button    ${VEI_CDLI_Success}
    Sleep    3s


#Annotation Processing
    Click Element    ${more}
    Click Element    ${Annotation_Processing}
    Click Element    ${Process_Ann_Req}
    Input Text    ${TransactionNo_PA_Process}    	${Reference number}
    #Input Text    ${TransactionNo_PA_Process}    	08378-003-00047-001
    Click Button    ${Search_PA_Process}
    Input Text    ${ImageID_PA_Process}    ${Get_imageid}
    #Input Text    ${ImageID_PA_Process}    08378-EM00030000009-0
    Click Button    ${Continue_PA_Process}
    sleep   3s
    Execute Javascript      window.scrollTo(0,1500)
    Sleep    3s
    Click Button    ${Contintue_Original_PA_Process}
    Execute Javascript   window.scrollTo(0,-document.body.scrollHeight)
    Sleep    10s
    Select From List By Index    ${RegistryBookType_PA_Process}     1
    Input Text    ${RegistryNo_PA_Process}    ${RegularAnn.cdliyear}${RegularAnn.cdliregno}
    Select From List By Label    ${Province_PA_Process}     ABRA - 001
    Select From List By Index    ${City_PA_Process}     1
    Execute Javascript  window.scrollTo(0,400)
    Sleep    3s
    Click Button    ${VEIRecordSearchBtn_PA_Process}
    Execute Javascript      window.scrollTo(0,2000)
    Sleep    3s
    Click Button    ${VEIRecordContinueBtn_PA_Process}
    Sleep    3s
    Execute Javascript   window.scrollTo(0,-document.body.scrollHeight)
    Sleep    3s
    Select From List By Index    ${AnnotationTemplate_PA_Process}   9
    Clear Element Text    ${txtAnnotationText_PA_Process}
    Input Text    ${txtAnnotationText_PA_Process}    By Shabana
    Select From List By Index    ${Position_PA_Process}     3
    Execute Javascript      window.scrollTo(0,500)
    Sleep    5s
    Click Button    ${Apply_PA_Process}
    Sleep    5s
    Execute Javascript      window.scrollTo(0,1500)
    Sleep    5s
    Click Button    ${Continue_Annotation_PA_Process}
    Execute Javascript      window.scrollTo(0,2500)
    Sleep    3s
    Click Button    ${Submit_Topsheet_PA_Process}
    Sleep    3s
    Click Button    ${Ok_Button}
    Sleep    5s


#Annotation Approval
    Click Element    ${more}
    Click Element    ${Annotation_Processing}
    Click Element    ${Approve/Disapprove Ann_Req}
    Input Text    ${TransactionNo_PA_Process}    	${Reference number}
    #Input Text    ${TransactionNo_PA_Process}    	08378-003-00047-001
    Click Button    ${Search_PA_Process}
    Execute Javascript      window.scrollTo(0,1500)
    Sleep    5s
    Click Button    ${Approve_PA_Process}
    Sleep    3s
    Click Button    ${Yes_PA_Process}
    Sleep    3s
    Click Button    ${Ok_Button}
    Sleep    3s
    Select From List By Index    ${Printer}     2
    Click Button    ${Print_PA_Process}
    Sleep    3s
    Click Button    ${Ok_Button}