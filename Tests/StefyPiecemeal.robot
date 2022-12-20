*** Settings ***
Documentation  Suite description
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/ITP2KeywordsStefy.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/ObjectRepository/ITP2LocatorsStefy.robot
Library  SeleniumLibrary
Library  FakerLibrary
Library  String
Library    DateTime
Library    Collections
Variables  C:/Users/ThomasJ1/PycharmProjects/CRS ITP2 Automation/Resources/TestdataStefy.yml
*** Variables ***

*** Test Cases ***
Encode Piecemeal CRD
    [Documentation]  Encode Piecemeal for Birth, Marriage, Death and Fetal death
    Open Counter
    Click Element    ${more_option}
    Click Element    ${vei}
    Click Element    ${vei_home}
    Sleep    3s
    Execute Javascript  window.scrollTo(0,500)
    Sleep    3s
    Click Element    ${select_piecemeal}
    Select From List By Value    ${select_piece_city}   00101
    Click Element    ${piece_birth}
    Click Element    ${birth_subtype}
    Sleep    4s
    Input Text    ${birth_registry_no}     ${Piecemeal.piecemeal_birth}
    Piecemeal Button
    Input Text    ${birth_firstname}    stefy
    Input Text    ${birth_middlename}    p
    Input Text    ${birth_lastname}    a
    Click Element    ${birth_sex1}
    Input Text    ${birth_dateday}    12
    Select From List By Value    ${birth_monthday}  3
    Input Text    ${birth_yearday}    2022
    Click Element    ${place_type}
    Select From List By Value    ${birth_province1}     001
    Select From List By Value    ${birth_city1}     00101
    Select From List By Value    ${birthbaragaya}   00101001
    Click Element    ${typeofbirth}
    Click Element    ${birthorder}
    Input Text    ${weight}    500
    Input Text    ${mothername}    lissy
    Input Text    ${mothermiddlename1}    sabu
    Input Text    ${motherlastname1}    a
    Click Element    ${mother_citi1}
    Click Element    ${religion1}
    Click Element    ${ethinicity}
    Click Element    ${bornalive1}
    Click Element    ${stillliving1}
    Click Element    ${nowdead2}
    Click Element    ${mother_occupation}
    Click Element    ${agetime}
    Click Element    ${residenceprovince1}
    Click Element    ${residencecity1}
    Click Element    ${motherbarangay}
    Click Element    ${marriagemonth1}
    Input Text    ${marriage_date1}    15
    Input Text    ${marriage_year1}    2019

    Select From List By Value    ${marriage_province2}      001
    Select From List By Value    ${marriage_city2}       00101
    Click Element    ${ligitimcy}
    Click Element    ${attendent}
    Input Text    ${attened_position}    test
    Click Element    ${attened_birth}
    Input Text    ${attened_birthday}    15
    Input Text    ${attened_year}    2022
    Click Element    ${relationship}
    Input Text    ${registrationdate1}    09/23/2022
    Click Element    ${regi_status2}
    Scrollbar
    Sleep    3s
    Click Button    ${submit1}
    Sleep    3s
    Click Button    ${1_ok1}
    Sleep    3s



    ##################### for Marriage#######################
    Select From List By Value    ${select_piece_city}   00101
    Click Element    ${piece_marriage}
    Click Element    ${birth_subtype}
    Sleep    3s
    Input Text    ${birth_registry_no}     ${Piecemeal.piecemeal_marriage}
    Piecemeal Button
    Input Text    ${husfirstna}    sunil
    Input Text    ${husmiddlena}     dev
    Input Text    ${huslastna}    p
    Input Text    ${husbirthdate}   13
    Click Element    ${husbirthmonth}
    Input Text    ${husbirthyear}    1990
    Click Element    ${select_age1}
    Select From List By Value    ${husbirthprovince}    001
    Select From List By Value    ${husbirthcity}    00101
    Click Element    ${huscitizenship}
    Select From List By Value    ${husresidenceprovince}    001
    Select From List By Value    ${husresidencecity}    00101
    Select From List By Value    ${husbarangay}     00101001
    Click Element    ${husreligion}
    Click Element    ${husstatus}
    Input Text    ${mothfirstname}    Elsy
    Input Text    ${mothemiddlename}    devasi
    Input Text    ${mothelastname}    T
    Click Element    ${husmother_citizen1}
    Input Text    ${wifefirstname2}     Stefy
    Input Text    ${wifemiddlename2}    P
    Input Text    ${wifelastname2}    A
    Input Text    ${wife_birthday}    14
    Click Element    ${wifebirthmonth}
    Input Text    ${wifebirthyear}     1992
    Click Element    ${wifeage1}
    Click Element    ${wifecountryname}
   # Click Element    ${wifeprovincename}
   # Click Element    ${wifecityname}
    Click Element    ${wifecitizen}
    Select From List By Value    ${wiferesidenceprovince}       001
    Select From List By Value    ${wiferesidencecity}       00101
    Select From List By Value    ${wifebarangay}    00101001
    Click Element    ${wifereligion}
    Click Element    ${wifecivil}
    Input Text    ${wifemother}    lissy
    Input Text    ${wifemothermiddle}    sabu
    Input Text    ${wifemotherlast}    a
    Click Element    ${mother_citizen1}
    Click Element    ${place_marriage_type}
    Select From List By Value    ${marriageprovince3}       001
    Select From List By Value    ${marriagecity3}       00101
    Select From List By Value    ${marriage_barangay}       00101001
    Click Element    ${marriage_month2}
    Input Text    ${marriage_date1}    15
    Input Text    ${marriage_year1}    2022
    Click Element    ${type_of_marriage}
    Click Element    ${officer_religion}
    Click Element    ${type_of_ceremoney}
    Input Text    ${registrationdate1}    09/23/2022
    Click Element    ${regi_status2}
    Execute Javascript  window.scrollTo(0,3000)
    Sleep    3s
    Click Button    ${submit1}
    Sleep    3s
    Click Button    ${1_ok1}
    Sleep    3s


  ###################### CRD for Death #######################
    Select From List By Value    ${select_piece_city}   00101
    Click Element    ${piecemeal_death}
     Click Element    ${Piecemeal_deathsubtype}
    Sleep    3s
    Input Text    ${birth_registry_no}     ${Piecemeal.piecemeal_death}
    Piecemeal Button
    Input Text    ${crd_death_first}     Stefy
    Input Text    ${crd_death_middle}    P
    Input Text    ${crd_death_last}    A

    Click Element    ${sex_crd}
    Input Text    ${date_of_death}    14
    Click Element    ${date_of_month}
    Sleep    3s
    Input Text    ${date_of_year1}    2022
    Input Text    ${birth_date1}    16
    Click Element    ${birth_month1}
    Input Text    ${birth_year1}     1992
    Execute Javascript  window.scrollTo(0,300)
    Click Element    ${select_age}
    Click Element    ${place_of_death}
    Sleep    3s
    Select From List By Value    ${death_province}  001
    Select From List By Value    ${death_city}  00101
    Select From List By Value    ${select_barangay}  00101001
    Click Element    ${civil_status}
    Click Element    ${religion}
    Click Element    ${citizenship}
    Select From List By Value    ${residence_province}  001
    Select From List By Value    ${residence_city}      00101
    Select From List By Value    ${residence_barangay}      00101001
    Click Element    ${occupation}
    Input Text    ${mother_firstname}    lissy
    Input Text    ${mother_lastname}    A
    Click Element    ${manner_of_death}
    Click Element    ${attendent_at_death}
    Input Text    ${attend_du_date}    14
    Click Element    ${attend_du_month}
    Input Text    ${attend_du_year}    2022
    Input Text    ${attend_du_to_date}    16
    Click Element    ${attend_du_to_month}
    Input Text    ${attend_du_to_year}    2022
    Click Element    ${certi_of_death}
    Click Element    ${certi_month}
    Input Text    ${certi_date}    18
    Input Text    ${certi_year}    2022
    Click Element    ${disposal2}
    Select From List By Value    ${ceremontaory_province}   001
    Select From List By Value    ${ceremontaory_city}   00101
    Select From List By Value    ${ceremontaory_barangay}   00101001
    Select From List By Value    ${external_cause}  0
    Select From List By Value    ${autospy}     1
    Select From List By Value    ${relationship_deceased}   7
    Input Text    ${prepared_date}     21
    Click Element    ${prepared_month}
    Input Text    ${prepared_year}    2022
    Input Text    ${recived_date}    08/21/2022
    Select From List By Value    ${regi_status}     2
    Input Text    ${registration_date}    09/24/2022
    Execute Javascript  window.scrollTo(0,3000)
    Sleep    3s
    Click Button    ${submit1}
    Sleep    3s
    Click Button    ${1_ok1}
    Sleep    3s



  ################### Piecemeal CRD Fetal death ###########################
    Select From List By Value    ${select_piece_city}   00101
    Click Element    ${piecemeal_death}
    Click Element    ${Piecemeal_fetussubtype}
    Sleep    3s
    Input Text    ${birth_registry_no}     ${Piecemeal.piecemeal_fetal}
    Piecemeal Button
    Input Text    ${fetus_firstname}    Stefy
    Input Text    ${fetus_middlename}    A
    Input Text    ${fetus_lastname}    P
    Execute Javascript  window.scrollTo(0,200)
    Sleep    3s
    Click Element    ${fetus_sex1}
    Input Text    ${delivery_date}    14
    Click Element    ${dateofdelivery}
    Input Text    ${deliveryyear}    2022
    Click Element    ${placetype1}
    Input Text    ${placeofdelivery}    Testing
    Select From List By Value    ${deliveryprovince}        001
    Select From List By Value    ${deliverycity}        00101
    Select From List By Value    ${deliverybarangay}    00101001
    Click Element    ${typeofdelivery1}
    #Click Element    ${multipledelivery}
    Click Element    ${methodeofdelivery}
    Click Element    ${birthorder}
    Input Text    ${fetusgram}    500
    Input Text    ${mothername1}    lissy
    Input Text    ${mothermiddlename2}    sabu
    Input Text    ${motherlastname2}    a
    Click Element    ${fetalmothercitizen}
    Click Element    ${fetalmotherreligon}
    Click Element    ${fetalmotheroccupation}
    Click Element    ${motherageattime}
    Click Element    ${bornalive}
    Click Element    ${stillliving}
    Click Element    ${nowdead2}
    Click Element    ${residenceprovince1}
    Click Element    ${residencecity1}
    Click Element    ${motherbarangay}
    Click Element    ${marriagemonth1}
    Input Text    ${marriage_date1}    15
    Input Text    ${marriage_year1}    2019
    Select From List By Value    ${fetalmarriage_province}      001
    Select From List By Value    ${fetalmarriage_city}      00101
    Input Text    ${condtionoffetus}    test
    Input Text    ${otherdisease}     test
    Input Text    ${mainmaternaldisease}    test
    Input Text    ${othermaterneldisease}    test1
    Input Text    ${relaventcircum}    test2
    Click Element    ${fetusdied}
    Click Element    ${lengthofpregency1}
    Click Element    ${attened}
    Click Element    ${certificationofdeath}
    Input Text    ${certideathname}    test
    Input Text    ${certideathtitle}    Test1
    Input Text    ${certificationofdeathdate}     06/26/2022
    Click Element    ${fetaldisposal}
    Click Element    ${fetalautosp}
    Execute Javascript  window.scrollTo(0,3000)
    Sleep    3s
    Select From List By Value    ${ceremontaory_province1}      001
    Select From List By Value    ${ceremontary_city1}        00101
    Select From List By Value    ${ceremontary_barangy1}   00101001
    Click Element    ${inform_relation1}
    Input Text    ${preparedby_date}    07/13/2022
    Input Text    ${receivedby_date}    08/03/2022

    Input Text    ${registration1}    09/24/2022
    Click Element    ${registatus4}

    Click Button    ${fetal_submit}
    Sleep    3s
    Click Button    ${1_ok1}
    Sleep    3s
#    Close Counter
