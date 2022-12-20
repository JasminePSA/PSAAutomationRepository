*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/Resources/ITP2KeywordsJasmine.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2Automation/ObjectRepository/ITP2LocatorsJasmine.robot
Resource    C:/Users/ThomasJ1/Py
#from selenium import webdriver
from datetime import date
import java.awt.AWTException
import java.awt.Robot
import java.awt.event.KeyEvent
import SendKeys

*** Variables ***
${files}        C:\Users\ThomasJ1\PycharmProjects\CRS ITP2 Automation
${browser}  chrome
${url_qa}   http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tVEhPTUFTSjE=

*** Keywords ***
*** Test Cases ***
Verify accountingapprovepaymentproof
    Launch Application
    Open Counter
    Wait Until Element Is Visible       ${home_menu}
    #Sleep 2
    Click Link        ${home_menu}
    click element       ${certificate_request_payment_menu}
    click element       ${payment_confirmdeposit_menu}
    Execute Javascript  window.scrollTo(0,300)
    #select checkbox     ${payment_confirmdeposit_useridcheckbox}
    Select Checkbox     ${payment_confirmdeposit_topuseridcheckbox}
    sleep   2
    click button    ${payment_confirmdeposit_confirmbutton}
    sleep   2
    #${todays}=      Get Current Date
    click element      ${payment_confirmdeposit_depositdate_text}
    Press Keys      ${payment_confirmdeposit_depositdate_text}    ENTER
    sleep   2

    select from list by index       ${payment_confirmdeposit_bankname_dropdown}     2
    ${depositdate}  get element attribute    ${payment_confirmdeposit_depositdate_text}     value
    sleep   2
    select from list by index       ${payment_confirmdeposit_accountnumber_dropdown}        1
    sleep   2
    click button    ${payment_confirmdeposit_attachslip_button}
    sleep   2

    #input text         ${payment_confirmdeposit_choosefile}
    sleep   2
    #input text      ${payment_confirmdeposit_choosefile}        c:\users\thomasj1\PycharmProjects\CRSITP2\girl_205263.jpg
    Choose File     ${payment_confirmdeposit_choosefile}        c:\\users\\girl_205263.jpg
    sleep   2
    click button    ${payment_confirmdeposit_save_button}
    sleep   2
    click button    ${payment_confirmdeposit_save_ok_button}
    sleep   2
    Close Browser

#    [Documentation]  Navigating to Accounting reports and verify consolidated collections report.coomenting this as it required OR integration.
#    click element   ${more_menu}
#    click element  ${accounting_menu}
#    click element   ${accounting_accreports}
#    sleep   2
#    click element   ${accounting_consolodatedcollectionreport}
#    input text      ${accounting_consolidated_fromdate}     ${depositdate}
#    click element    ${accounting_consolidated_todate}
#    input text      ${accounting_consolidated_todate}       ${depositdate}
#    click button    ${accounting_consolidated_generatereport_button}
#    sleep   2
#    click element       xpath=//a[contains(text(),'${depositdate}')]
#    sleep   2
#    click button    ${accounting_consolidated_imageclose_button}
#


