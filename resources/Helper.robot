*** Settings ***
Library    Process
Library    OperatingSystem

*** Variables ***
${BEARER_TOKEN}    ${CURDIR}/.env

*** Test Cases ***
Example Test Case
    Run Process    python    load_env.py
    ${BEARER_TOKEN}=    Get Environment Variable    MY_VARIABLE
    Log    ${BEARER_TOKEN}
