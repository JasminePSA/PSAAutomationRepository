*** Settings ***
Documentation  Suite description
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/ITP2KeywordsStefy.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/ObjectRepository/ITP2LocatorsStefy.robot
Library  SeleniumLibrary
Library  FakerLibrary
Library  String
Library    DateTime
Library    Collections
Variables  C:\Users\ThomasJ1\PycharmProjects\CRS ITP2 Automation\Resources\TestdataStefy.yml
*** Variables ***

*** Test Cases ***
Walk-in-Req&Clear
  [Documentation]    This Test Script is for Walk-in-Request Entry and Clearing the request
  ${Name}       First Name Female
  ${Name1}      Last Name
  ${Address}         Address
  Open Counter
  Click Element    ${Client_Certificate_Menu}
  Click Element    ${WalkInReq}
  Select From List By Label    ${TransactionType_WIR}       COPY ISSUANCE - BIRTH CERTIFICATE
  Input Text    ${NoOfCopies_WIR}    1
  Input Text    ${B_LName_WIR}    ${Name}
  Input Text    ${B_FName_WIR}    ${Name}
  Select From List By Index    ${Sex_WIR}   2
  Select From List By Index    ${DOB_M}     1
  Input Text    ${DOB_D}    01
  Input Text    ${DOB_Y}     2018
  Select From List By Index    ${Province_WIR}      2
  Select From List By Index    ${City_WIR}     3
  Input Text    ${M_LName_WIR}     ${Name}
  Input Text    ${M_FName_WIR}    ${Name}
  Select From List By Index    ${PurposeOfReq_WIR}     1
  Execute Javascript    ${Scroll_D}
  Sleep    10s
  Click Element    ${Clear}
  Sleep    5s
#    Close Counter