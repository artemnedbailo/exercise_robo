*** Settings ***
Library     SeleniumLibrary
Resource  ../../Resources/PageObjects/MainPage.robot
Resource  ../../Resources/PageObjects/SignInPage.robot
Resource  ../../Resources/PageObjects/Headers.robot
Resource  ../../Resources/PageObjects/AllUserSpacesPage.robot
Resource  ../../Resources/PageObjects/UserSpacePage.robot
Resource  ../../Resources/PageObjects/Common.robot

Test Setup  Open Chrome and Maximize Page
Test Teardown  Close Browser Window

*** Variables ***

*** Test Cases ***
Test create workspace
    [Documentation]  Create workspace
    [Tags]  positive  regression
    MainPage.Open Sign In Page
    SignInPage.Input Valid Credentionals
    # Page Should Contain Element  ${TITLE}
    Headers.Open Spaces
    Wait Until Page Contains Element  ${TEXT_YOUR_SPACE}
    AllUserSpacesPage.Open Create Public Space Page
    Wait Until Page Contains Element  ${INPUT_SPACE_NAME_FIELD}
    UserSpacePage.Input Text And Save Space
    UserSpacePage.Assert Space Successfully Created
    Close Browser

*** Keywords ***
