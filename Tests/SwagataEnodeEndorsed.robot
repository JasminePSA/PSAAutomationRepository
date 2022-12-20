*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/ITP2KeywordSwagata.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/ObjectRepository/ITP2LocatorSwagata.robot
Variables  C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/TestdataSwagata.yml

*** Variables ***
${browser}  chrome
${url_qa}   http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tTUFKVU1EQVMtMQ==#!

*** Test Cases ***
ElectronicEndorsement
    [Documentation]  Bug ID #258560 Electronic Endorsement APPROVAL-BIRTH
    LaunchBrowser
    Title Should Be    Civil Registry System
    #OpenCounter     #close the counter before every run
    Homepage
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
   Input Text    ${EndorsedReg}    ${EERegNo}
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
    Sleep    5
    Click Element    ${More}
    Sleep    5
    Click Element    ${EncodeEnd}
    Sleep    5
    Click Element    ${EndorsedcreateEE}
    Sleep    2
    Select From List By Label    ${RegBookEE}   BIRTH-A
    Input Text    ${RegnoEE}    ${EERegNo}
    #Select From List By Value    ${RegcounEE}   PHILIPPINES
   Select From List By Label    ${RegcityEE}   ABRA
    Select From List By Value    ${RegProvEE}   00101
    Sleep    3
    Click Button    ${EEsearch}
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Element    ${EERadiButton}
    Click Button    ${EEcont}
    Sleep    3
    Execute Javascript  window.scrollTo(0,0)
    Sleep    3
    Choose File    ${Coose_EE_Tiff}    C:/Users/majumdas/001.tif
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Button    ${EEsave}
    Sleep    5
    Click Element    ${EE_Ref_Radio}
    Sleep    3
    Input Text    ${Inp_EE_ref}    00000-000-00000-000
    Sleep    3
    Click Button    ${EE_Auto_Search}
    Sleep    3
    Click Button    ${No_EE_Alert}
    Sleep    3
    Click Button    ${Auto_gen}
    Sleep    5
    ${Get_EE}  Get Text    ${EE_Tran_no}
    Sleep    5
    Log    ${Get_EE}
    Sleep    5
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Scroll Element Into View    ${Scroll_for_submit}
    Click Button    ${EE_first_submit}
    Sleep    3
    Click Button    ${EE_submit}
    Sleep    3
    Click Button    ${EE_Alert}
    Sleep    5
    Click Element    ${More}
    Click Element    ${EncodeEnd}
    Sleep    2
    Click Element    ${EE_VIP}
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Element    ${VIP_EE_Radio}
    Sleep    3
    Input Text    ${VIP_EE_Ref}    ${Get_EE}
    Sleep    3
    Click Button    ${VIP_EE_search}
    Sleep    4
    Click Element    ${VIP_EE_link}
    Sleep    5
    Click Button    ${Rep_soyes}
#new browser
    LaunchBrowser
    Title Should Be    Civil Registry System
    #OpenCounter     #close the counter before every run
    Homepage
    Click Element    ${More}
    Click Link    ${Sys_Admin}
   Sleep    2
    Click Element    ${Supervisor_Override}
    ${TabbedWindow}   Get Window Handles
    Log    ${TabbedWindow}[1]
    Switch Window   ${TabbedWindow}[1]
    Click Button    ${SO_Approve}
    #${Ok_Button}
    Switch Browser    1
    Sleep  20s
    Click Button    ${SO_OK}
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Button    ${VIP_EE_Approve}
    Sleep    2
    Click Button    ${EE_alert_yes}
    Sleep    2
    Click Button    ${EE_ApproveSubmit}
    Sleep    2
    Click Button    ${EE_AlertButton}
    



    