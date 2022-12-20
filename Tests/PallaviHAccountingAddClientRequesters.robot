*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Resource    ../Resources/ITP2KeywordsPallaviH.robot
Resource    ../ObjectRepository/ITP2LocatorsPallaviH.robot


*** Test Cases ***
Accounting AddClientRequester Flow
   [Documentation]     This test case is to validate Accounting module Add client requester flow
   ${CLN}     Last Name
   ${CFN}     First Name
   CRSLogin
   Sleep    15s
   Click Element     ${MoreOption}
   Sleep    15
   Click Link      ${Accounting}
   Sleep    20
   Click Link      ${CustomerManagement}
   Sleep    15
   Click Link    ${Acc_SearchCustomersaccordion}
   Sleep    15
   Input Text    ${Acc_CustomerNoOrName}     Pallavi Hosamani
   Sleep    15
   Click Button    ${CustMgmnt_CustSrch}
   Sleep    15
   Execute Javascript  window.scrollTo(0,2000)
   Sleep    15
   Click Element    ${CustMgmnt_Edit}
   Execute Javascript  window.scrollTo(0,1200)
   Sleep    20
   #Scroll Element Into View    ${CustMgmnt_addPerson}
   Sleep    20
   Click Element    ${CustMgmnt_addPerson}
   Sleep    15s
   Execute Javascript  window.scrollTo(0,200)
   Sleep    15s
   Input Text    ${CustMgmnt_addPerson1}     ${CLN}
   Sleep    15s
   Input Text   ${CustMgmnt_addPerson2}      ${CFN}
   Sleep    15s
   Input Text    ${CustMgmnt_addPerson3}      PP10
   Sleep    15s
   Input Text   ${CustMgmnt_addPerson4}     PPHtest@2022
   Sleep    15s
   Select From List By Value    ${CustMgmnt_addPerson5}      1
   Sleep    15s
   Click Button    ${CustMgmnt_addPerson6}
   Sleep    15s
   Input Text    ${CustMgmnt_addPerson7}      55557
   Sleep    15s
   Select From List By Value    ${CustMgmnt_addPerson8}      003
   Sleep    15s
   Click Button     ${CustMgmnt_addPerson9}
   Sleep    15s
   Execute Javascript  window.scrollTo(0,2000)
   Sleep    15s
   Click Button   ${CustMgmnt_save}
   Sleep    15
   Click Element    ${CustMgmnt_btnRight}
   Sleep    15
   Click Button    ${ProcessSuccessOK}


