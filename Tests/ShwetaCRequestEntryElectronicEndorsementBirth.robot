*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  OperatingSystem
Library    FakerLibrary
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/ObjectRepository/ITP2LocatorsShwetaC.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/ITP2KeywordsShwetaC.robot
Variables   C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/TestDataShwetaC.yml


*** Variables ***
${url}  http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tQ0hBTkRSUzEtMQ==#!
${browser}  Chrome


*** Test Cases ***
QA Login
    [Documentation]     Request Entry_ Electronic Endorsement - BIRTH
    Launch Browser1
    Maximize Browser Window
    #Open Counter1
    Access HomePage
    Client Certificate Request
    ${Blastname}    Last Name
    ${BFirstName}   First Name
    ${BSecLastName}  Last Name
    ${BSecFirstName}  First Name
    ${BAuxLastName}  Last Name
    ${BAuxFirstName}  First Name
    ${BReqLastName}  Last Name
    ${BReqFirstName}  First Name
    ${BRAddress}    Address
    ${BRStreetAddress}  Street Address
    Sleep    2S
    Click Link  link:Request Entry
    Sleep    2S
    Click Button    ${Skip}
    Select From List By Value    ${certificatetype}     EEB
    #Input Text    ${Noofcopies_req}    1
    Click Button    ${Nextbutton}
    Input Text    ${Reqlastname}    ${Blastname}
    Input Text    ${Reqfirstname}   ${BFirstName}
    Click Element    ${ReqSex}
    Input Text    ${reqdateofbirth}     01/01/2018
    Select From List By Value    ${reqprovince}    001
    Select From List By Value    ${reqcity}     00101
    Input Text    ${reqmlname}    ${BSecLastName}
    Input Text    ${reqmfname}   ${BSecFirstName}
    Sleep    5
    Select From List By Value    ${reqcmbRequestPurpose}  CL
    Sleep    5
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    5
    Click Button    ${submitbutton}
    Sleep    5
    Execute Javascript  window.scrollTo(0,0)
    Sleep    5
    Click Element      ${firsteditbutton}
    Sleep    5
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    5
    Click Button    ${submitbutton}
    Scrollbar
    Sleep    5
    Click Button    ${btnBirthRequestConfirm}
    Sleep    5
    Click Element   ${eyeicon}
    Sleep    5
    Click Element    ${secondeditbutton}
    Sleep    5
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    5
    Click Button    ${submitbutton}
    Sleep    5
    Click Button    ${btnBirthRequestConfirm}
    Sleep    5
    Click Button    ${proceedbutton}
    Sleep    3
    ## Requester Details##
    Input Text    ${Requesterlname}   ${BReqLastName}
    Input Text    ${Requesterfname}    ${BReqFirstName}
    Input Text    ${Requesteraddress}    ${BRAddress}
    Select From List By Value    ${Requestercountry}     016
    Execute Javascript  window.scrollTo(0,3000)
    Click Button    ${RequesterProceed}
    Sleep    3
    Click Button    ${Requesterconfirm}
    Sleep    3
    Click Button    ${popupconfirm}
    Sleep    5
    #Click Button    //button[@id='btnmdAlertOK' and text()='OK']
    Sleep    5
    Select From List By Index    ${ReleasePrinter}  2
    Sleep    3
    Click Button    ${EncoFinalPrint}
    Sleep    7
    Click Element    ${onClickofPrintTransmittalSlip}
    Sleep    5
    Click Element    ${btnSuccess}
    Sleep    5
    ${get_ref}  Get Text    ${Transactionnumb}
    Log  ${get_ref}
    Sleep    5
    Click Element    ${More}
    Sleep    3
    Click Element    ${VEI_menu}
    Click Element    ${VEI_HOME}
    Sleep    5
    Click Element    ${Encodeendorsed}
    Sleep    3
    Select From List By Value    ${EndorsedRegprov}     001
    Sleep    3
    Select From List By Value    ${Endorsedregcity}     00101
    Sleep    3
    Select From List By Value    ${Regstatus}   2
    Sleep    3
    Input Text    ${Endorsedregdate}    09/19/2022
    Select From List By Value    ${EndorsedRegbook}     A
    Sleep    2
    Select From List By Value    ${EndorsedDocsub}   0A
    Input Text    ${EndorsedReg}    ${ElectronicEndorsement.EERenumber1}
    Input Text    ${Chilfdname}    CHINI
    Sleep    3
    Execute Javascript  window.scrollTo(0,400)
    Input Text    ${ChildLname}    ROY
    Select From List By Value    ${EchildSex}   2
    Sleep    3
    Input Text    ${EncodeDD}    01
    Select From List By Value    ${EncodeDM}    1
    Sleep    2
    Input Text    ${EncodeDY}    2022
    Sleep    2
    Select From List By Value    ${EncodeBprov}     001
    Select From List By Value    ${EncodeDcity}     00101
    Sleep    3
    Input Text    ${EncodeMotherFname}    Mini
    Input Text    ${EncodeMotherLname}    Roy
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Button    ${EncodeSub}
    Sleep    3
    Click Button    ${EncodeOk}
    Sleep    2
    Click Element    ${More}
    Click Element    ${EncodeEnd}
    Sleep    2
    Click Element    ${EndorsedcreateEE}
    Sleep    2
    Select From List By Label    ${RegBookEE}   BIRTH-A
    Input Text    ${RegnoEE}    ${ElectronicEndorsement.EERenumber1}
    #Select From List By Value    ${RegcounEE}   PHILIPPINES
    Select From List By Label    ${RegcityEE}   ABRA
    Select From List By Value    ${RegProvEE}   00101
    Sleep    3
    Click Button    ${EEsearch}
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Element   ${VeiBodyid}
    Click Button    ${More Details}
    Sleep    3
    Execute Javascript  window.scrollTo(0,0)
    Sleep    3
    Choose File    ${fileCRDDocument}    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Files/Tiff_Files/page2.tif
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Button   ${zoomout}
    Sleep    5
    Click Element   ${EEReferenceNumber}
    Sleep    3
    Input Text    ${EERefer}    ${get_ref}
    Sleep    3
    Click Button    ${EEReferenceSearch}
    Sleep    3
    Click Button    Auto-generate EE Transaction
    Click Element    ${EEBody}
    Sleep    5
    Click Element    ${EEReferenceS}
    Sleep    3
    Click Element    ${submitClick}
    Sleep    5
    Click Button    ${AlertButton1}
    Sleep    5
    Click Element    ${More}
    Click Element    ${EncodeEnd}
    Sleep    2
    Click Element    ${VIPParty}
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Element    ${EEReferenceNumber}
    Sleep    3
    Input Text    ${EERefer}    ${get_ref}
    Sleep    3
    Click Button    ${Search2}
    Sleep    4
    Click Element   ${VeiBody1}
    Sleep    5
    Click Button    ${Rep_soyes}
#new browser
    Launch Browser1
    Title Should Be    Civil Registry System
    Maximize Browser Window
    Access HomePage
    Click Element    ${More}
    Click Link   ${SysAdmin1}
    Sleep    2
    Click Element    ${Supervisor_Override}
    ${TabbedWindow}   Get Window Handles
    Log    ${TabbedWindow}[1]
    Switch Window   ${TabbedWindow}[1]
    Click Button    ${SO_Approve}
    #${Ok_Button}
    Switch Browser    1
    Sleep  20s
    Click Button    ${SO_OK1}
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Button    ${approve1}
    Sleep    2
    Click Button    ${popUpDetails}
    Sleep    2
    #Click Element    ${onDuplicateCheckConfirmClick}
    #Sleep   2
    Click Element    ${ApproveSubmit}
    Sleep    2
    Click Button   ${AlertButton1}
