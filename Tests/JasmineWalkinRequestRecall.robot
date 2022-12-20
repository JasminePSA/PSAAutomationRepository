*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/Resources/ITP2KeywordsJasmine.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/ObjectRepository/ITP2LocatorsJasmine.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/Resources/TestDataJasmine.yml

*** Variables ***
${browser}  chrome
${url_qa}   http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tVEhPTUFTSjE=
*** Keywords ***

*** Test Cases ***
Verify Recall
    Launch Application
    [Documentation]     This is to call open counter
#    Open Counter
    Wait Until Element Is Visible       ${home_menu}
    #Sleep 2
    [Documentation]     Selecting Home and menu
    Click Link        ${home_menu}
    Wait Until Element Is Visible       ${menu_clientcertificaterequest}
    Click Link      ${menu_clientcertificaterequest}
    Wait Until Element Is Visible       ${menu_walkinrequestentry}
    Click Link      ${menu_walkinrequestentry}

    [Documentation]     Selecting transactiontype CI birth
    Select From List By Index       ${transaction_typedropdown}     1
   # Select From List By Label   ${Select_dropdown-CI-B}

   [Documentation]     Entering request details
    Input Text      ${no_of_copies_text}        1
    Input Text      ${childlastname_text}       Thomas
    Input Text      ${childfirstname_text}      Jasmine
    Select From List By Index       ${sex_dropdown}     2
    Select From List By Index       ${dateofbirth_month}        2
    Input Text      ${dateofbirth_date}     01
    Input Text      ${dateofbirth_year}     2018
    Select From List By Index       ${province}        2
    Select From List By Index       ${city}     2
    Input Text      ${mother_lastname}      Ann
    Input Text      ${mother_firstname}     Maria
    Select From List By Index   ${request_purpose}      3
    Execute Javascript  window.scrollTo(0,2000)
    Wait Until Element Is Visible       ${save_button}
    Sleep       2
    Click Button        ${save_button}

    [Documentation]     Calling recall
    #driver.execute_script("window.scrollTo(100, document.body.scrollHeight);")
    Wait Until Element Is Visible       ${recall_button}
    Sleep       2
    Click Button        ${recall_button}
    Execute Javascript  window.scrollTo(0,2000)
    Wait Until Element Is Visible       ${save_button}
    Sleep       2
    Click Button        ${save_button}

    [Documentation]     Entering requester details
    Wait Until Element Is Visible       ${reqlastname}
    Sleep       2
    Input Text      ${reqlastname}      Tom
    Wait Until Element Is Visible       ${reqfirstname}
    Sleep       2
    Input Text      ${reqfirstname}     John
    Wait Until Element Is Visible       ${reqaddress}
    Sleep       2
    Input Text      ${reqaddress}       104
    Wait Until Element Is Visible       ${reqcountry}
    Select From List By Index       ${reqcountry}       2
    Sleep       2
    Click Button    ${submit_button}
    Close Browser
