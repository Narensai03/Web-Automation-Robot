*** Settings ***
Library  SeleniumLibrary


*** Variables ***
#Open Browser
${HOMEPAGE}     https://devrpm.medris.ai/
${BROWSER}  chrome
#Login
${USER-Detalis-email}         naren@interraneuro.com
${User-Detalis-passwrod}      Nissi@123
${email-field}   xpath=//*[@id="EmailAddress"]
${password-field}   xpath=//*[@id="Password"]
${show-password}    xpath=/html/body/div/div/div/div/div/div/div/form/div/div[3]/div[1]/label/span
${login-button}     xpath=/html/body/div/div/div/div/div/div/div/form/div/div[3]/div[2]/button
#home
${Search-button}    xpath=//*[@id="mainTabs"]/li[1]

*** Test Cases ***
Open
    open browser    ${HOMEPAGE}    ${BROWSER}
    maximize browser window

Login
    wait until element is visible  ${email-field}
    sleep   5
    input text     ${email-field}    ${USER-Detalis-email}
    sleep   5
    input text     ${password-field}    ${User-Detalis-passwrod}
    sleep   5
    click element   ${show-password}
    sleep   5
    click element   ${login-button}
    sleep   5

Home
    wait until element is visible  ${Search-button}
    sleep   5
    click element   ${Search-button}