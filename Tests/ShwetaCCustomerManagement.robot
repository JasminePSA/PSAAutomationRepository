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

######## Birth #####
CustomerManagement
    [Documentation]     Accounting CustomerManagement
    Launch Browser1
    ${BFirstName}   First Name
    ${BRAddress}    Address
    ${Blastname}    Last Name
    ${BSecFirstName}  First Name
    ${BReqFirstName}  First Name
    ${BAuxFirstName}  First Name
    ${PasswordS}    Password
    #Title Should Be    Civil Registry System
    Maximize Browser Window
    Open Counter1
    Access HomePage
    Sleep    2S
    Click Element    ${more}
    Sleep    2S
    Click Element   ${chooseoption}
    Sleep    2S
    Click Element    ${CustomerManage}
    Sleep    2S
    Click Element    ${AddCustomer}
    Sleep    2S
    Input Text    ${customerName}    ${BFirstName}
    Select From List By Label   ${ddlRequester}   BREQS USER - BU
    Input Text    ${QAaddressLine1}   ${BRAddress}
    Sleep    3S
    Select From List By Label    ${QAddlProvince}    ABRA - 001
    Sleep    3S
    Select From List By Label    ${QAddlCity}    BANGUED - 01
    #Click Element    //input[@id='Trans_No']/following::span
    Execute Javascript  window.scrollTo(0,400)
    Input Text    ${QABlastname}    ${Blastname}
    Input Text    ${QABfirstname}    ${BSecFirstName}
    Sleep    5S
    Click Element   ${addperson}
    Execute Javascript  window.scrollTo(0,400)
    Input Text    ${addPersonLastName}    ${BReqFirstName}
    Input Text    ${addPersonFirstName}    ${BReqFirstName}
    Input Text    ${userLogin}    ${BAuxFirstName}
    Input Text    ${userpwd}     ${PasswordS}
    Sleep    3S
    Select From List By Label    ${ddlCustomerStatus}   ACTIVE
    Sleep    3S
    Click Element    ${assignBREQ}
    Sleep    3S
    Input Text    ${BREQSID}    ${CustomerManagement.c_bid}
    Sleep    3S
    Select From List By Label    ${outlet1}   003 - CENTRAL OUTLET
    Sleep    3S
    Click Element   ${QAADD}
    Sleep    3S
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3S
    Click Element    ${savedetail}
    Sleep    3S
    Click Element    ${btnRight}
    Sleep    3S
    Click Element    ${QAAltbtn}
    Sleep    5S
    Click Element    ${panel}
    Sleep    3S
    Input Text    ${CustomerNoOrName}    ${CustomerManagement.C_name}
    Sleep    3S
    Click Element    ${CustomersSearch}
    Sleep    3S
    Click Element    ${Editclick}
    Sleep    5S
    Execute Javascript  window.scrollTo(0,800)
    Sleep    3S
    Click Element    ${eyeclick1}
    Sleep    3S
    Click Element    ${eyeclick2}
    Sleep    3S
    Click Element    ${EDIT1}
    Sleep    3S
    Click Element    ${btnadd1}
    Sleep    3S
    Click Element    ${DeleteClientBreqClicked}
    Sleep    3S
    Click Element    ${btnLeftCallBack}
    Sleep    3S
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3S
    Click Element    ${savedetail}
    Sleep    3S
    Click Element   ${btnRight}
    Sleep    3S
    Click Element    ${btnSuccess}
    Sleep    5S
    Click Element    ${panel}
    Sleep    3S
    Input Text    ${CustomerNoOrName}    ${CustomerManagement.C_name}
    Sleep    3S
    Click Element    ${CustomersSearch}
    Sleep    3S
    Click Element    ${deleteCustomer}
    Sleep    3S
    Click Element   ${btnLeftCallBack}






