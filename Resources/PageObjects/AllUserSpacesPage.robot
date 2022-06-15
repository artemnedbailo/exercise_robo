*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators.py


*** Variables ***

*** Keywords ***
Open Create Public Space Page
    Run Keyword And Ignore Error  Scroll Element Into View  ${CREATE_PUBLIC_SPACE_BUTTON}
    Click Element  ${CREATE_PUBLIC_SPACE_BUTTON}
