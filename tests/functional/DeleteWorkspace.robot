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
    SignInPage.Sign In With Valid Credentials
    Headers.Open Spaces
    AllUserSpacesPage.Open Exist Or Create New Space
    Wait Until Page Contains Element  ${INPUT_SPACE_NAME_FIELD}
    UserSpacePage.Input Text And Save Space
    UserSpacePage.Open Context Menu And Delete Space

*** Keywords ***
