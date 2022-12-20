*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Resource    ../Resources/ITP2KeywordsPallaviH.robot
Resource    ../ObjectRepository/ITP2LocatorsPallaviH.robot


*** Test Cases ***
SECPA Flow
   [Documentation]     This test case is to validate Secpa flow
   #Sleep    3s
   CRSLogin
   Sleep    3s
   Click Element    ${MoreOption}
   #Click Element    //a[@id='210']
   Sleep    3s
   Click Link    ${SecpaMenu}
   Sleep    3s
   Click Link    ${Secpa_ReplenishStocks}
   Sleep    3s
   Execute Javascript  window.scrollTo(0,2000)
   Sleep    3s
   Click Button    ${Secpa_ReplenishStocks1}
   Sleep    3s
   #Manage Replished stcoks
   Input Text    ${ReplenishStocks_txtsupp}     PHtest
   Sleep    3s
   Input Text    ${ReplenishStocks_txtDelivery}      15255
   Sleep    3s
   Double Click Element    ${ReplenishStocks_txtDelivery}
   Sleep    3s
   Input Text    ${ReplenishStocks_dtFrom}     12/9/2022
   Input Text    ${ReplenishStocks_txtReceivedBy}   PHtest
   Sleep    3s
   Click Button    ${ReplenishStocks_adddetailbtn}
   Sleep    3s
   #Add Replenish stocks
   Select From List By Value    ${ReplenishStocks_add}      18
   Sleep    3s
   Input Text    ${ReplenishStocks_txtQty}       1
   Sleep    5s
   Input Text    ${ReplenishStocks_txtBox}     1
   Sleep    5s
   Input Text    ${ReplenishStocks_SlNo1}      PH000000263
   Sleep    5s
   Input Text    ${ReplenishStocks_SlNo2}    PH000000263
   Sleep    5s
   Click Element   ${ReplenishStocks_Save}
   Sleep    3s
   Execute Javascript  window.scrollTo(0,2000)
   Sleep    5s
   Click Button   ${ReplenishStocks_SaveClick}
   Sleep    5s
   Click Button    ${AlertButton}
   Sleep    5s
   #Dispatch Stocks
   Click Element     ${MoreOption}
   Sleep    3s
   Click Link     ${SecpaMenu}
   Sleep    3s
   Click Link     ${DispatchStocks}
   Sleep    3s
   Click Button    ${Secpa_ReplenishStocks1}
   Sleep    3s
   Select From List By Value    ${DispatchStocks_ddlSupplier}     003
   Sleep    3s
   Input Text   ${DispatchStocks_delRcptNoId}      90797
   Sleep    3s
   Click Button    ${ReplenishStocks_adddetailbtn}
   Sleep    3s
   Execute Javascript  window.scrollTo(0,2000)
   Sleep    3s
   Select From List By Value    ${ReplenishStocks_add}      18
   Sleep    3s
   Input Text    ${DispatchStocks_quant}        1
   Sleep    5
   Input Text    ${DispatchStocks_StartSECPANo}    PH000000263
   Sleep    3s
   Input Text    ${DispatchStocks_EndSECPANo}     PH000000263
   Sleep    3s
   Click Element    ${ReplenishStocks_Save}
   Sleep    3s
   Click Button    ${ReplenishStocks_SaveClick}
   Sleep    3s
   Click Button    ${AlertButton}
   Sleep    3s
   #Confirm Stocks
   Click Element     ${MoreOption}
   Sleep    3s
   Click Link     ${SecpaMenu}
   Sleep    3s
   Click Link    ${ConfirmStocks}
   Sleep    3s
   Click Link    ${ConfirmStocks_collapse}
   Sleep    3s
   Input Text    ${ConfirmStocks_txtReceiptNo}     90797
   Sleep    3s
   Click Button    ${click_submit}
   Sleep    3s
   Click Element    ${ConfirmStocks_ConfirmClick}
   Sleep    3s
   Input Text    ${ConfirmStocks_ReceivedQuantity}      1
   Sleep    3s
   Click Button    ${ConfirmStocks_addDetail}
   Sleep    3s
   Execute Javascript  window.scrollTo(0,2000)
   Sleep    3s
   #Click Button    //button[@class='btn btn-primary' and @data-bind='click:SaveClick']
   Sleep    3s
   Input Text    ${ConfirmStocks_Secpa1}      PH000000263
   Sleep    3s
   Input Text    ${ConfirmStocks_Secpa2}      PH000000263
   Sleep    3s
   Input Text    ${ConfirmStocks_ReceivedQuantity1}     1
   Sleep    3s
   Select From List By Value    ${ConfirmStocks_ReceivedQuantity2}      2
   Sleep    3s
   Click Element    ${ConfirmStocks_saveDetail}
   Sleep    3s
   Click Button    ${LCRCRD_btnSave}
   Sleep    3s
   Click Button    ${ConfirmStocks_saveDetail1}
   Sleep    3s
   Click Button    ${AlertButton}
   Sleep    3s















