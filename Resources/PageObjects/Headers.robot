*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators.py

*** Keywords ***
Open Spaces
    Click Element  ${TITLE}
    Click Element  ${SPACE_PAGE}
    Wait Until Page Contains Element  ${TITLE_SPACES}
