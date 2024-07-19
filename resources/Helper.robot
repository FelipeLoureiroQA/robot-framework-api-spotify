*** Settings ***

Library    OperatingSystem
Library    ../env_setup.py

Resource    ../resources/Variables.robot
*** Variables ***
${auth}    ***SENSITIVE***

*Keywords*
Retorna Bearer Token
    ${auth}    Get Environment Variable    token 
    ${auth}    Catenate    Bearer    ${auth}
    RETURN  ${auth}