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
    Page Should Contain Element  ${POPUP_MESSAGE}
    Element Should Contain  ${POPUP_MESSAGE}  Your new space was created successfully!

Open Context Menu And Delete Space
    Click Element  ${SPACE_CONTEXT_MENU_BUTTON}
    Click Element  ${SPACE_CONTEXT_MENU_DELETE_BUTTON}
    Wait Until Page Contains Element  ${LOCATE_WARNING_WINDOW}
    ${GET_SPACE_NAME}  Get Text  ${SPACE_NAME_FROM_DELETE_WARNING}
    Input Text  ${INPUT_TEXT_FOR_DELETE_FIELD}  ${GET_SPACE_NAME}
    Wait Until Page Contains Element  ${SUBMIT_DELETE_SPACE}
    Click Element  ${SUBMIT_DELETE_SPACE}
    Wait Until Page Contains Element  ${POPUP_MESSAGE}
    Element Should Contain  ${POPUP_MESSAGE}  Space was deleted successfully!
