*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators.py


*** Variables ***

*** Keywords ***
Click On First Element Of Spaces List
    Run Keyword And Ignore Error  Scroll Element Into View  ${FIRST_ELEMENT}
    Click Element  ${FIRST_ELEMENT}

Open Create Public Space Page
    Run Keyword And Ignore Error  Scroll Element Into View  ${CREATE_PUBLIC_SPACE_BUTTON}
    Click Element  ${CREATE_PUBLIC_SPACE_BUTTON}

Open Exist Or Create New Space
    ${LIST_LENGHT}  Get Element Count  ${SPACE_LIST}
    Run Keyword If  ${LIST_LENGHT} == 1  Open Create Public Space Page  ELSE  Click On First Element Of Spaces List
