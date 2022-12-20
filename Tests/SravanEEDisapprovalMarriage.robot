*** Settings ***
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/ObjectRepository/ITP2LocatorsSravan.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/ITP2KeywordsSravan.robot
Resource    ../Resources/ITP2KeyWords.robot
Library     SeleniumLibrary
Library     String
Library     DateTime
Library     Process
Library     DateTime
Variables   C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/TestDataSravan.yml


*** Variables ***

*** Test Cases ***
Electronic Endorsement - DISAPPROVAL - MARRIAGE
    Open Counter
    Click Element  ${more_option}
    Click Link  ${more_vei}
    Click Link  ${vei_home}
    Sleep   5s
    Click Element    ${Encodeendorsed}
    Sleep    3
    Select From List By Value   ${EndorsedRegprov}     001
    Sleep    3
    Select From List By Value   ${Endorsedregcity}     00101
    Sleep    3
    Select From List By Value   ${Regstatus}   2
    Sleep    3
    Input Text    ${Endorsedregdate}    12/09/2022
    Select From List By Value   ${EndorsedRegbook}     D
    Sleep    2
    Select From List By Value   ${EndorsedDocsub}   0A
    Input Text  ${EndorsedReg}      ${crdregistrydeatils.crd_registry_number}
    Sleep   2s
    Input Text  ${Endorsed_hfn}     hfn
    Input Text  ${Endorsed_hln}     hln
    Input Text  ${Endorsed_hmfn}        m
    Input Text  ${Endorsed_hmln}        m
    Input Text  ${Endorsed_wifefn}      wfn
    Input Text  ${Endorsed_wifeln}      wln
    Input Text  ${Endorsed_wifemfn}     m
    Input Text  ${Endorsed_wifemln}     m
    Input Text  ${Endorsed_dateofmrgday}    09
    Select From List By Value   ${Endorsed_dateofmrg_mnth}  1
    Input Text   ${Endorsed_dateofmrg_year}     ${crdregistrydeatils.registry_year}
    Select From List By Value   ${endorsed_pom_province}    001
    Select From List By Value   ${endorsed_pom_city}    00101
    Execute Javascript  window.scrollTo(0,2000)
    Sleep   3s
    Click Button    ${endorsed_submit}
    Sleep   3s
    Click Button    ${EncodeOk}
    Sleep   5s
    Click Element  ${more_option}
    Click Element    ${EncodeEnd}
    Sleep    2
    Click Element   ${EndorsedcreateEE}
    Sleep    5s
    Select From List By Label    ${RegBookEE}   MARRIAGE-D
    Input Text    ${RegnoEE}    ${crdregistrydeatils.crd_registry_number}
#Select From List By Value    ${RegcounEE}   PHILIPPINES
    Select From List By Label   ${RegcityEE}   ABRA
    Select From List By Value   ${RegProvEE}   00101
    Sleep    3
    Click Button   ${EEsearch}
    Sleep    3
    Execute Javascript  window.scrollTo(0,0)
    Sleep    3
    Click Element    //tbody[@id="VeiBody"]/tr/td[1]/div/label/span[2]
#    Click Button    //a[text()="More Details"]/following::button[2]
    Scrollbar
    Sleep   2s
    Click Button    ${createEE_continue}
    Sleep    3
    Choose File    //input[@id='fileCRDDocument']   C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Files/Tiff_Files/page2.tif
    Sleep    3
    Scrollbar
    Sleep    3
    Click Button    //input[@id="zoomout"]/following::button[2]
    Sleep    5
    Click Element    //input[@id='EEReferenceNumber']/preceding::span[1]
    Sleep    3
    Input Text    //input[@id='EEReferenceNumber']    00000-000-00000-000
    Sleep    3
    Click Button    //button[@id='EEReferenceSearch']
    Sleep    3
    Click Button    //button[@id='AlertButton']
    Sleep    3
    Click Button    Auto-generate EE Transaction
    Sleep    5
    ${Get_EE}  Get Text    //h4[@id="assetModalHeader"]/span
    Sleep    5
    Log    ${Get_EE}
    Sleep    5
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Scroll Element Into View    //button[@id='remove']/following::button[1]
    Click Button    //button[@id='remove']/following::button[1]
    Sleep    3
    Click Button    //button[@id='submitClick']
    Sleep    3
    Click Button    //button[@id='AlertButton']
    Sleep    5
    Click Element    ${More}
    Click Element    ${EncodeEnd}
    Sleep    2
    Click Element    //a[text()='VIP / Party Waiting']
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Element    //input[@id='EEReferenceNumber']/preceding::span[1]
    Sleep    3
    Input Text    //input[@id='EEReferenceNumber']    ${Get_EE}
    Sleep    3
    Click Button    //button[@id='Search2']
    Sleep    4
    Click Element    //tbody[@id="VeiBody"]/tr/td[1]/a
    Sleep    5
    Click Button    ${Rep_soyes}
#    Close Counter
    #new browser
    Launch Browser
    Title Should Be    Civil Registry System
    #OpenCounter     #close the counter before every run
    Homepage
    Click Element    ${More}
    Click Link    //a[@id='180' and text()='System Administration']
    Sleep    3s
    Click Element   ${Supervisor_Override}
    ${TabbedWindow}   Get Window Handles
    Log    ${TabbedWindow}[1]
    Switch Window   ${TabbedWindow}[1]
    Click Button    ${SO_Approve}
    #${Ok_Button}
    Switch Browser    1
    Sleep  20s
    Click Button    ${SO_OK}
    Sleep    3s
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3s
    Click Button    //button[@id='disapprove']
    Sleep    2s
   Click Button    //div[@id='popUpDetails']/following::button[1]
    Sleep    2s
    Select From List By Value   //*[@id="disApproveReasonDiv"]/div[1]/div/div/select    UD
    Click Button    //button[@id="disapproveSubmit"]
    Sleep    2s
    Click Button    //button[@id='AlertButton']












