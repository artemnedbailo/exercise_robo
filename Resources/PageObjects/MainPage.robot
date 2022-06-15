*** Settings ***
Library  SeleniumLibrary
Resource  Common.robot
Variables  ../Locators.py

*** Variables ***

*** Keywords ***
Open Sign In Page
    Wait Until Page Contains Element  ${SUBMIT_COOKIES}
    Click Element  ${SUBMIT_COOKIES}
    Click Element  ${SIGN_IN_BUTTON_PAGE}
    Wait Until Page Contains Element  ${SIGN_IN_BUTTON}
