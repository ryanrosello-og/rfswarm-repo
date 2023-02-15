*** Settings ***
Metadata    File    ${CURDIR}/../../resources/keywords/_custom_keywords/module.js

Library     Browser    jsextension=${CURDIR}/../../resources/keywords/_custom_keywords/module.js


*** Test Cases ***
Hello
    New Page
    Go To    https://playwright.dev
    ${result}=    myGoToKeyword    testing
    Should Be Equal As Strings    ${result}    this is the result
