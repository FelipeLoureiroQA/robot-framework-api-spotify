*Settings*

Resource     ../resources/Base.robot


*Keywords*
GET Tracks
    [Arguments]                                                                                                                                                                                                                                                                        
    ${headers}     Create Dictionary                                                                                                                                                                                                                                                                        
    ...            Authorization=${auth} 
    ${response}    GET                                                                                                                                                                                                                                                                                      
    ...            ${url_spotify}/v1/tracks/2TpxZ7JUBn3uw46aR7qd6V                                                                                                                                                                                                                                        
    ...            headers=${headers}

    Log            ${auth}
    [return]       ${response}