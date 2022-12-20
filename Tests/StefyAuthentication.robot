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
@{purpose}  CL  JA  JL  OT  PT  SR
${files}  C:\Users\ThomasJ1\PycharmProjects\Tif_Images\Death.tiff
*** Test Cases ***
Authentication Death Certificate

    Open Counter
    Click Element    ${ccr_Link}
    Click Element    ${wrp_Link}
    Click Element    ${au_death_option}
    Sleep    3s
    Input Text    ${number_of_copies}    1

    # Faker keywords
    ${de_last_name}  Last Name
    ${de_first_name}  First Name
    ${de_middle_name}  First Name

    ${father_last_name}  Last Name
    ${father_first_name}  First Name
    ${father_middle_name}  First Name

    ${mother_last_name}  Last Name
    ${mother_first_name}  First Name
    ${mother_middle_name}  First Name

    Input Text    ${d_last_name}    ${de_last_name}
    Input Text    ${d_firstname}    ${de_first_name}
    Input Text    ${d_middlename}    ${de_middle_name}
    Select From List By Value    ${death_sex}  Female
    Select From List By Value    ${death_month}    01
    Input Text    ${death_date}    12
    Input Text    ${death_year}    2021
    Country name
    Input Text    ${fa_lastname}    ${father_last_name}
    Input Text    ${fa_firstname}    ${father_first_name}
    Input Text    ${fa_middlename}    ${father_middle_name}

    Input Text    ${ma_lastname}    ${mother_last_name}
    Input Text    ${ma_firstname}    ${mother_first_name}
    Input Text    ${ma_middlename}     ${mother_middle_name}
    Select From List By Value    //select[@id='cmbDeathRequestPurpose']  ${purpose}[0]
    Scrollbar
    Sleep    5s
    #Click Button    ${add_image}
    #Choose File    locator    ${file_path}
    #Choose File     ${add_image}        ${file_path}
    Wait Until Keyword Succeeds    1min    5sec    Wait Until Element Is Visible    ${add_image}
    Wait Until Keyword Succeeds    1min    5sec    Click Element    ${add_image}
    Sleep    3s
    Image Upload    C://Users//ThomasJ1//PycharmProjects//Tif_Images//Sample.exe    ${files}
    #Image Upload    C://Users//astefyp//tiff//uploadingfile5.exe    ${files}

    #Sleep    3s
    #Click Image    ${file_path}
    Sleep    10s
    Click Element    ${save_button}