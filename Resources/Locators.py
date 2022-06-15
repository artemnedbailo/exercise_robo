# Common Locators
BASE_URL = 'https://hub.knime.com/'

# Valid Credentials
VALID_USERNAME = 'artemnedbailo'
VALID_PASSWORD = 'TestTest123!'

# Main Page Locators
SUBMIT_COOKIES = 'css:[class="accept-button button primary"]'
SIGN_IN_BUTTON_PAGE = 'css:[class="button primary compact"]'

# Sign In Page Locators
SIGN_IN_BUTTON = 'css:[id="edit-submit"]'
INPUT_NAME_FIELD = 'css:[name="name"]'
INPUT_PASSWORD_FIELD = 'css:[name="pass"]'
TITLE = f'css:[title="{VALID_USERNAME}"]'
SPACE_PAGE = '//span[contains(text(),"Space")]'
TEXT_YOUR_SPACE = 'css:[class="get-started-section"]'
CREATE_PUBLIC_SPACE_BUTTON = '//button[contains(text(), "Private space")]'
INPUT_SPACE_NAME_FIELD = 'css:[placeholder="Enter private space name"]'
INPUT_SPACE_NAME_FIELD_DISABLED_STATE = 'css:[title="Click to edit"]'
SAVE_SPACE_BUTTON = 'css:[title="Save"]'
POPUP_MESSAGE = 'css:[class="message"]'

FIRST_ELEMENT = '//main//div/ul/li[1]'
SPACE_LIST = '//main//div/ul/li'
SPACE_CONTEXT_MENU_BUTTON = 'css:[class="toggle function-button single"]'
SPACE_CONTEXT_MENU_DELETE_BUTTON = '//button[contains(text(),"Delete space")]'
LOCATE_WARNING_WINDOW = 'css:[class="header-icon"]'
SPACE_NAME_FROM_DELETE_WARNING = '//ul/li/strong'
INPUT_TEXT_FOR_DELETE_FIELD = 'css:[type="text"]'
SUBMIT_DELETE_SPACE = 'css:[form="confirmationForm"]'
