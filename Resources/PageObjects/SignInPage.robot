*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators.py


*** Variables ***

*** Keywords ***
Sign In With Valid Credentials
    Input Text  ${INPUT_NAME_FIELD}  ${VALID_USERNAME}
    Input Text  ${INPUT_PASSWORD_FIELD}  ${VALID_PASSWORD}
    Click Element  ${SIGN_IN_BUTTON}
    Page Should Contain Element  ${TITLE}
