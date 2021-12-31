*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#Open Browser
${HOMEPAGE}     https://devrpm.medris.ai/
${BROWSER}  chrome
#Login and home page
${USER-Detalis-email}         naren@interraneuro.com
${User-Detalis-passwrod}      Nissi@123
${email-field}   xpath=//*[@id="EmailAddress"]
${password-field}   xpath=//*[@id="Password"]
${show-password}    xpath=/html/body/div/div/div/div/div/div/div/form/div/div[3]/div[1]/label/span
${login-button}     xpath=/html/body/div/div/div/div/div/div/div/form/div/div[3]/div[2]/button
#Search Patients
${Search-button}    xpath=//*[@id="mainTabs"]/li[1]
${patient-Detalis-lastname}     sai
${patient-Detalis-firstname}      Naren
${patient-lastname}  xpath=//*[@id="txtLastname"]
${patient-firstname}    xpath=//*[@id="txtFirstname"]
${search1-button}   xpath=//*[@id="btnSearchPatients"]
*** Test Cases ***
OpenBrowser
    open browser    ${HOMEPAGE}    ${BROWSER}
    maximize browser window

Login_and_home_page
    wait until element is visible  ${email-field}
    sleep   3
    input text     ${email-field}    ${USER-Detalis-email}
    sleep   3
    input text     ${password-field}    ${User-Detalis-passwrod}
    sleep   3
    click element   ${show-password}
    sleep   3
    click element   ${login-button}
    sleep   3

Search_Patients
    wait until element is visible  ${Search-button}
    sleep   3
    click element   ${Search-button}
    sleep   3
    input text      ${patient-lastname}     ${patient-Detalis-lastname}
    sleep   3
    input text      ${patient-firstname}    ${patient-Detalis-firstname}
    sleep   3
    click element   ${search1-button}
    sleep   3
