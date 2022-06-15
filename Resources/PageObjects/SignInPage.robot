*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators.py


*** Variables ***

*** Keywords ***
Input Valid Credentionals
    Input Text  ${INPUT_NAME_FIELD}  ${VALID_USERNAME}
    Input Text  ${INPUT_PASSWORD_FIELD}  ${VALID_PASSWORD}
    Click Element  ${SIGN_IN_BUTTON}
    Page Should Contain Element  ${TITLE}
