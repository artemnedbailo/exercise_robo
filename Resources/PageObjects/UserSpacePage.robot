*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators.py


*** Variables ***

*** Keywords ***
Input Text And Save Space
    Input Text  ${INPUT_SPACE_NAME_FIELD}  Test space
    Click Element  ${SAVE_SPACE_BUTTON}
Assert Space Successfully Created
    Wait Until Element Is Visible  ${INPUT_SPACE_NAME_FIELD_DISABLED_STATE}
    Page Should Contain Element  ${SUCCESS_MESSAGE}
    Element Should Contain  ${SUCCESS_MESSAGE}  Your new space was created successfully!
