*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators.py

*** Variables ***


*** Keywords ***
Open Chrome and Maximize Page
    Open Browser  ${BASE_URL}  Chrome
    Maximize Browser Window

Close Browser Window
    Close Browser
