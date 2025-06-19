*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***

 ForLoop1
    : FOR    ${i}    IN RANGE    1    10
    \    Log To Console    ${i}

# ForLoop2
    : FOR    ${i}    IN    1    2    3    4    5    6    7    8
    \    Log To Console    ${i}

# ForLoop3withList
    @{items}    Create List    1    2    3    4    5
    : FOR    ${i}    IN    @{items}
    \    Log To Console    ${i}

# ForLoop4
    : FOR    ${i}    IN    john    david    smith    scott
    \    Log To Console    ${i}
