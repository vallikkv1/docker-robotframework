***Settings ***
Library    Selenium2Library

*** Variables ***
${URL}    https://google.com


*** Test Cases ***
Chrome_Options
    ${chrome options} =    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys,selenium.webdriver
    Call Method    ${chrome options}    add_argument    --disable-gpu
    Call Method    ${chrome options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome options}    add_argument    --start-maximized
    Create Webdriver    Chrome    chrome_options=${chrome options}
    Go To    ${URL}
    Capture Page Screenshot
