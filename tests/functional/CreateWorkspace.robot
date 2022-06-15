*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SUBMIT_COOKIES}  css:[class="accept-button button primary"]
${SIGN_IN_BUTTON_PAGE}  css:[class="button primary compact"]
${SIGN_IN_BUTTON}  css:[id="edit-submit"]
${INPUT_NAME_FIELD}  css:[name="name"]
${INPUT_PASSWORD_FIELD}  css:[name="pass"]
${TITLE}  css:[title="artemnedbailo"]
${SPACE_PAGE}  //span[contains(text(),'Space')]
${TEXT_YOUR_SPACE}  css:[class="get-started-section"]
${CREATE_PUBLIC_SPACE_BUTTON}  //button[contains(text(), "Private space")]
${INPUT_SPACE_NAME_FIELD}  css:[placeholder="Enter private space name"]
${INPUT_SPACE_NAME_FIELD_DISABLED_STATE}  css:[title="Click to edit"]
${SAVE_SPACE_BUTTON}  css:[title="Save"]
${SUCCESS_MESSAGE}  css:[class="message"]



*** Test Cases ***
Test create workspace
    [Documentation]  Create workspace
    [Tags]  positive  regression
    Open Browser  https://hub.knime.com/  chrome
    Maximize Browser Window
    Wait Until Page Contains Element  ${SUBMIT_COOKIES}
    Click Element  ${SUBMIT_COOKIES}
    Click Element  ${SIGN_IN_BUTTON_PAGE}
    Wait Until Page Contains Element  ${SIGN_IN_BUTTON}
    Input Text  ${INPUT_NAME_FIELD}  artemnedbailo
    Input Text  ${INPUT_PASSWORD_FIELD}  TestTest123!
    Click Element  ${SIGN_IN_BUTTON}
    Page Should Contain Element  ${TITLE}
    Click Element  ${TITLE}
    Click Element  ${SPACE_PAGE}
    Wait Until Page Contains Element  ${TEXT_YOUR_SPACE}
    Run Keyword And Ignore Error  Scroll Element Into View  ${CREATE_PUBLIC_SPACE_BUTTON}
    Click Element  ${CREATE_PUBLIC_SPACE_BUTTON}
    Wait Until Page Contains Element  ${INPUT_SPACE_NAME_FIELD}
    Input Text  ${INPUT_SPACE_NAME_FIELD}  Test space
    Click Element  ${SAVE_SPACE_BUTTON}
    Wait Until Element Is Visible  ${INPUT_SPACE_NAME_FIELD_DISABLED_STATE}
    Page Should Contain Element  ${SUCCESS_MESSAGE}
    Element Should Contain  ${SUCCESS_MESSAGE}  Your new space was created successfully!

    Close Browser

*** Keywords ***

