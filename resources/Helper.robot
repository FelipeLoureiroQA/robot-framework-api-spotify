*** Settings ***

Library    OperatingSystem
Library    ../env_setup.py

Resource    ../resources/Variables.robot
*** Variables ***
${auth}    value

*** Keywords ***
Retorna Bearer Token
    ${auth}    Get Environment Variable    token
    Log To Console    ${auth}
    RETURN  ${auth}

# *** Test Cases ***
# Bearer token
#    ${auth}        Retorna Bearer token
#    Set Global Variable    ${auth}  