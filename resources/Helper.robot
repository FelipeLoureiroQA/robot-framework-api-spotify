*** Settings ***

Library    OperatingSystem
Library    ../env_setup.py

Resource    ../resources/Variables.robot
*** Variables ***
${auth}    value

*** Keywords ***
Retorna Bearer token
    ${auth}    Get Environment Variable    BEARER_TOKEN
    Log To Console    ${auth}
    [return]  ${auth}

# *** Test Cases ***
# Bearer token
#    ${auth}        Retorna Bearer token
#    Set Global Variable    ${auth}  