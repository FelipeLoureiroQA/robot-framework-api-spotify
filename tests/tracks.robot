*** Settings ***
Library           RequestsLibrary

Resource    ../resources/Base.robot

*** Test Cases ***
Listas musicas

    ${response}    GET Tracks     
    Status Should Be    200    ${response}
    
Salvar musicas
    ${payload}     Factory Track    track
    ${response}    PUT Tracks     
    Status Should Be    200    ${response}

Deletar musicas
    ${payload}     Factory Track    track
    ${response}    Delete Tracks     
    Status Should Be    200    ${response}