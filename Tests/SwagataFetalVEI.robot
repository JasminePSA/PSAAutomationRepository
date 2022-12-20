*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/ITP2KeywordSwagata.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/ObjectRepository/ITP2LocatorSwagata.robot
Variables  C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/TestdataSwagata.yml

*** Variables ***
${browser}  chrome
${url_qa}   http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tTUFKVU1EQVMtMQ==#!
#${Regi}    1999037
#${Reg_No}   2022-1999037
#${BatchnoDigit}     29

*** Test Cases ***
VEIFETALDEATH
    [Documentation]     FetalDeath LCRCRD Submission and Create Batch
    LaunchBrowser
    Title Should Be    Civil Registry System
    #OpenCounter     #close the counter before every run
    Homepage
    Click Element    ${More}
    Sleep    3
    Click Element    ${VEI_menu}
    Click Element    ${VEI_HOME}
    Sleep    5
    Click Link    ${Lcr_CRD}
    Sleep    3
    Select From List By Label    ${Lcr_Prov}    ILOCOS NORTE
    Sleep    5
    Select From List By Label    ${Lcr_city}    ADAMS
    Sleep    3
    Select From List By Label    ${Reg_doc_type}    DEATH - F
    Input Text    ${Startreg}    ${CRDdeathfetal}
    Input Text    ${Endreg}    ${CRDdeathfetal}
    Input Text    ${Txt_doc}    1
    Input Text    ${lcrdate}    11/15/2022
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Button    ${LCRSave}
    Sleep    5
    Click Button    ${Lcrdok}
    Sleep    3
    Click Element     ${Fetal_CRD}
    Sleep    5
    Click Element    ${CreateCRD}
    Input Text    ${Batchno}    ${fetalBatchnumber}
    Sleep    3
    Select From List By Label    ${Regcountry}  PHILIPPINES
    Sleep    3
    Select From List By Label    ${CRDRegprov}  ILOCOS NORTE
    Select From List By Label    ${CRDRegcity}  ADAMS
    Input Text    ${CRDRegyear}    2022
    Select From List By Label    ${CRDRegmonth}     NOVEMBER
    Sleep    3
    Select From List By Label    ${CRDRegbook}     DEATH - F
    Sleep    3
    Input Text    ${Startreg}    ${CRDdeathfetal}
    Input Text    ${Endreg}    ${CRDdeathfetal}
    Sleep    3
    Input Text    ${ActualDoc}    1
    Input Text    ${ProblemDoc}    0
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Button    ${CrdSubmit}
    Sleep    5
    Click Button    ${CRDOKSUBMIT}
    Sleep    5
    #Clear Element Text    ${CrdRegno}
    Sleep    3
    Input Text    ${CrdRegno}    -${fetalReg}
    Sleep    5
    Click Element    ${DDLType_fetal}
    Sleep    2
    #Select From List By Label    ${Fetal_option}   CERTIFICATE OF FETAL DEATH - 0C
    Sleep    3
    Execute Javascript  window.scrollTo(0,400)
    Sleep   5
    Click Button    ${CRDcont}
    Sleep    3
#VEIEncoding
    Input Text    ${fetus_firstname}    CHINI
    Input Text    ${fetus_middlename}    A
    Input Text    ${fetus_lastname}    ROY
    Select From List By Label    ${Fetal_input1}  FEMALE
    Input Text    ${Fetal_input2}    01
    Select From List By Label    ${Fetal_input3}  JANUARY
    Input Text    ${Fetal_input4}    2022
    Select From List By Label    ${Fetal_input5}      HOME
    Select From List By Label    ${Fetal_input6}   ILOCOS NORTE
    Select From List By Label    ${Fetal_input7}   ADAMS
    Select From List By Label    ${Fetal_input8}    ADAMS (POB.)
   Select From List By Label    ${Fetal_input9}     SINGLE
    Select From List By Label    ${Fetal_input10}    NOT STATED
    Select From List By Label    ${Fetal_input11}    FIRST
  Input Text    ${fetusgram}    500
  Sleep    3
  Execute Javascript  window.scrollTo(0,800)
  Sleep    5
  Input Text    ${mothername}    lissy
  Input Text    ${motherlastname1}    roy
  Click Element    ${mother_citizen}
  Click Element    ${religion1}
  Click Element    ${mother_occupation}
  Click Element    ${agetime}
  Click Element    ${bornalive}
  Click Element    ${stillliving}
  Click Element    ${nowdead}
  Click Element    ${residenceprovince1}
  Click Element    ${residencecity1}
  Sleep    3
  Execute Javascript  window.scrollTo(0,1000)
  Sleep    3
  Click Element    ${motherbarangay}
  Click Element    ${marriagemonth1}
  Input Text    ${marriage_date1}    15
  Input Text    ${marriage_year1}    2019
  Select From List By Value    ${marriage_province1}      001
  Select From List By Value    ${marriage_city1}      00101
  Input Text    ${condtionoffetus}    test
  Input Text    ${otherdisease}     test
  Input Text    ${mainmaternaldisease}    test
  Input Text    ${othermaterneldisease}    test1
  Input Text    ${relaventcircum}    test2
  Click Element    ${fetusdied}
  Click Element    ${lengthofpregancy}
  Click Element    ${attened}
  Click Element    ${certificationofdeath}
  Input Text    ${certificationofdeathdate}     11/24/2022
  Sleep    5
  Execute Javascript  window.scrollTo(0,2000)
  Sleep    5
  Click Element    ${disposal}
  #Click Element    ${autopsy}
  Select From List By Label    ${Fetal_input12}     NOT STATED
   Select From List By Label    ${Fetal_input13}  ILOCOS NORTE
  Select From List By Label    ${Fetal_input14}  ADAMS
  Select From List By Label    ${Fetal_input15}  ADAMS (POB.)
  Click Element    ${relationship1}
  Input Text    ${preparedby_date}    11/13/2022
  Input Text    ${receivedby_date}    11/03/2022

  Input Text    ${registration1}    11/24/2022
  Select From List By Label    ${Fetal_input16}   LATE
  #Click Element    ${registatus3}
  Execute Javascript  window.scrollTo(0,3000)
  Sleep    3s
  Click Button    ${EncodeCRDSubmit}
  Sleep    3s
  Click Button    ${1_ok1}
  Sleep    3s
  Click Button    ${2_ok2}
  Click Element    ${vei_backtoveihome}
    Sleep    3
    Execute Javascript  window.scrollTo(0,500)
    Sleep    3
    Click Element    ${vei_view_edit_crd}
    Input Text    ${vei_search_batchno}      ${fetalBatchnumber}
    #Click Element    ${vei_search_countryname}
    Select From List By Label    ${SEARCH_FETUS_PROV}   ILOCOS NORTE
    Select From List By Label    ${Batch_fetus_city}   ADAMS
    Input Text    ${vei_search_year}    2022
    Select From List By Label    ${vei_search_regbook}      DEATH - F
    Sleep    5
    Click Element    ${vei_searchbtn}
    Sleep    3
    Execute Javascript  window.scrollTo(0,2000)
    Sleep    3
    Click Element    ${ClickReg_No}
    Execute Javascript  window.scrollTo(0,200)
    Sleep    5
    Click Button    ${VEI_Edit}
    Sleep    5
    Input Text    ${fetus_firstname}    CHINI
    Input Text    ${fetus_middlename}    A
    Input Text    ${fetus_lastname}    ROY
    Sleep    5
    Execute Javascript      window.scrollTo(0,4000)
    Sleep    3s
     Click Button    ${EncodeCRDSubmit}
     Sleep    3s
    Click Button    ${vei_alert_ok}




    
    
