*** Settings ***

Resource    ../resources/Variables.robot

*** Test Cases ***

Bearer token
   ${auth}        Retorna Bearer token
   Set Global Variable    ${auth} 
Listas musicas
    ${response}    GET Tracks       ${auth}
    Status Should Be    200    ${response}
    
Salvar musicas
    ${payload}     Factory Track    track
    ${response}    PUT Tracks     
    Status Should Be    200    ${response}

Deletar musicas
    ${payload}     Factory Track    track
    ${response}    Delete Tracks     
    Status Should Be    200    ${response}