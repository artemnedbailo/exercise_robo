# Common Locators
BASE_URL = 'https://hub.knime.com/'

# Valid Credentionals
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
SUCCESS_MESSAGE = 'css:[class="message"]'
