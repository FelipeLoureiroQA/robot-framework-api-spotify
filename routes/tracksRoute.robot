*Settings*

Resource     ../resources/Variables.robot
   

*Keywords*
Retorna Bearer Token
    ${auth}    Get Environment Variable    token
    RETURN  ${auth}
GET Tracks
    ${auth}     Retorna Bearer Token
    [Arguments]    ${auth}                                                                                                                                                                                                                                                      
    ${headers}     Create Dictionary                                                                                                                                                                                                                                                                     
    ...            Authorization=${auth} 
    ${response}    GET                                                                                                                                                                                                                                                                                      
    ...            ${url_spotify}/v1/tracks/2TpxZ7JUBn3uw46aR7qd6V                                                                                                                                                                                                                                        
    ...            headers=${headers}

    Log            ${auth}
    RETURN       ${response}

PUT Tracks
    [Arguments]   
    ${auth}     Retorna Bearer Token                                                                                                                                                                                                                                                                     
    ${headers}     Create Dictionary                                                                                                                                                                                                                                                                        
    ...            Authorization=${auth} 
    ${response}    GET                                                                                                                                                                                                                                                                                      
    ...            ${url_spotify}/v1/tracks/2TpxZ7JUBn3uw46aR7qd6V                                                                                                                                                                                                                                        
    ...            headers=${headers}

    Log            ${auth}
    RETURN       ${response}

Delete Tracks
    [Arguments] 
    ${auth}     Retorna Bearer Token                                                                                                                                                                                                                                                                       
    ${headers}     Create Dictionary                                                                                                                                                                                                                                                                        
    ...            Authorization=${auth} 
    ${response}    GET                                                                                                                                                                                                                                                                                      
    ...            ${url_spotify}/v1/tracks/2TpxZ7JUBn3uw46aR7qd6V                                                                                                                                                                                                                                        
    ...            headers=${headers}

    Log            ${auth}
    RETURN       ${response}
