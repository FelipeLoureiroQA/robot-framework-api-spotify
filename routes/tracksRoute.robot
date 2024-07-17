*Settings*

Resource     ../resources/Variables.robot
   

*Keywords*

GET Tracks
    
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
    ${headers}     Create Dictionary                                                                                                                                                                                                                                                                        
    ...            Authorization=${auth} 
    ${response}    GET                                                                                                                                                                                                                                                                                      
    ...            ${url_spotify}/v1/tracks/2TpxZ7JUBn3uw46aR7qd6V                                                                                                                                                                                                                                        
    ...            headers=${headers}

    Log            ${auth}
    RETURN       ${response}

Delete Tracks
    [Arguments]                                                                                                                                                                                                                                                                        
    ${headers}     Create Dictionary                                                                                                                                                                                                                                                                        
    ...            Authorization=${auth} 
    ${response}    GET                                                                                                                                                                                                                                                                                      
    ...            ${url_spotify}/v1/tracks/2TpxZ7JUBn3uw46aR7qd6V                                                                                                                                                                                                                                        
    ...            headers=${headers}

    Log            ${auth}
    RETURN       ${response}
