*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${HOMEPAGE}     https://devrpm.medris.ai/
${BROWSER}  chrome

*** Test Cases ***
Test
    open browser    ${HOMEPAGE}    ${BROWSER}
    maximize browser window
    execute javascript  window.scrollTo(0,400)
