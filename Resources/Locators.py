# Common Locators
BASE_URL = 'https://hub.knime.com/'

# Valid Credentials
VALID_USERNAME = 'artemnedbailo'
VALID_PASSWORD = 'TestTest123!'

#All User Space Page Locators
CREATE_PUBLIC_SPACE_BUTTON = '//button[contains(text(), "Private space")]'
FIRST_ELEMENT = '//main//div/ul/li[1]'
SPACE_LIST = '//main//div/ul/li'

# Headers Page Locators
SPACE_PAGE = '//span[contains(text(),"Space")]'
TITLE_SPACES = '//h2[contains(text(), "Your spaces")]'

# Main Page Locators
SIGN_IN_BUTTON_PAGE = 'css:[class="button primary compact"]'
SUBMIT_COOKIES = 'css:[class="accept-button button primary"]'

# Sign In Page Locators
INPUT_NAME_FIELD = 'css:[name="name"]'
INPUT_PASSWORD_FIELD = 'css:[name="pass"]'
SIGN_IN_BUTTON = 'css:[id="edit-submit"]'
TITLE = f'css:[title="{VALID_USERNAME}"]'

# User Space Page Locators
INPUT_SPACE_NAME_FIELD = 'css:[placeholder="Enter private space name"]'
INPUT_SPACE_NAME_FIELD_DISABLED_STATE = 'css:[title="Click to edit"]'
INPUT_TEXT_FOR_DELETE_FIELD = 'css:[type="text"]'
LOCATE_WARNING_WINDOW = 'css:[class="header-icon"]'
POPUP_MESSAGE = 'css:[class="message"]'
SAVE_SPACE_BUTTON = 'css:[title="Save"]'
SPACE_CONTEXT_MENU_BUTTON = 'css:[class="toggle function-button single"]'
SPACE_CONTEXT_MENU_DELETE_BUTTON = '//button[contains(text(),"Delete space")]'
SPACE_NAME_FROM_DELETE_WARNING = '//ul/li/strong'
SUBMIT_DELETE_SPACE = 'css:[form="confirmationForm"]'
