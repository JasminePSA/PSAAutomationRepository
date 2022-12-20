*** Settings ***
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/ObjectRepository/ITP2LocatorsSravan.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/ITP2KeywordsSravan.robot
#Resource    ../Resources/ITP2KeyWords.robot
Library     SeleniumLibrary
Library     String
Library     DateTime
Library     Process
Library     DateTime
Library     AutoItLibrary
Variables   C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/TestDataSravan.yml


*** Variables ***
${files}        C:\Users\ThomasJ1\PycharmProjects\Tif_Images\Death.tiff

*** Test Cases ***
Long queue: Verify Walk in request entry flow for Authentication birth type

    Open Counter
    Sleep   5S
    Click Element   ${client_cert_req}
    Click Element   ${wre_Link}
    Sleep   3s
   # Input Text  ${qtn}  0001
    Click Element   ${trans_type}
    Select From List By Value   ${trans_type}   AU-B
    Sleep    3s
    Input Text  ${number_of_copies}     1
    Input Text    ${child_last_name}    cln
    Input Text    ${child_firstname}    cfn
    Input Text    ${child_middlename}   cmn
    Select From List By Value   ${birth_sex}    Male
    Sleep   3s
    Select From List By Value    ${birth_month}    01
    Input Text    ${birth_date}    22
    Input Text    ${birth_year}    2022
    Select From List By Value    ${birth_country}  608
    Sleep    2s
    Select From List By Value    ${birth_province}  001
    Sleep    2s
    Select From List By Value    ${birth_city}  00101
    Sleep    2s
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    2s
    Input Text  ${birth_motherlastname}    mln
    Sleep    2s
    Input Text  ${birth_motherfirstname}      mfn
    sleep   2s
    Input Text  ${birth_mothermiddlename}  mmn
    Sleep    2s
    Click Element   ${purpose}
    Select From List By Value   ${purpose}   CL
    Sleep    2s
    Input Text  xpath=//*[@id="txtComments"]   Roboframework
    Sleep    2s
#   Click Button   ${add_image}
##AddImg
    Wait Until Keyword Succeeds    1min    5s    Wait Until Element Is Visible    ${add_image}
    Wait Until Keyword Succeeds    1min    5s   Click Element    ${add_image}
    Sleep    5s
    File Upload     C://Users//ThomasJ1//PycharmProjects//Tif_Images//Sample.exe    ${files}
    sleep   2
    Sleep   10s


## HH ##

    Sleep    3s
    Click Button        ${save_button_new}
    Sleep    3s
    Input Text  ${requester_lastname}     rln
    input text  ${requester_firstname}    rfn
    input text  ${requester_middlename}   r
    input text  ${requester_address1}     address
    input text  ${requester_address2}  add2
    Select From List By Value   ${requester_country}    608
    Select From List By Value   ${requester_province}    001
    Click Element   ${requester_city}
    Select From List By Value   ${requester_city}    00101
    Execute Javascript  window.scrollTo(0,2000)
    input text  ${requester_mobile}  910076929902
    Sleep   10s
    Click Button   ${final_submit}
    Sleep    3s



