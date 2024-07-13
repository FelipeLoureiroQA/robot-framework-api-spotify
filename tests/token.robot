*** Settings ***
Library           RequestsLibrary

Resource    ../resources/Base.robot

*** Test Cases ***
Listas musicas

    ${response}    GET Tracks     
    Status Should Be    200    ${response}
    