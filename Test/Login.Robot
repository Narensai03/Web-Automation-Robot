*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${HOMEPAGE}     https://devrpm.medris.ai/
${BROWSER}  chrome

*** Test Cases ***
LoginTest
    open browser    ${HOMEPAGE}    ${BROWSER}
    sleep   5
    maximize browser window
    sleep   5
    Login_and_home_page
    Search_Patients
    sleep   5
    close browser

*** Keywords ***
Login_and_home_page
    input text     xpath=//*[@id="EmailAddress"]    naren@interraneuro.com
    sleep   3
    input text     xpath=//*[@id="Password"]    Nissi@123
    sleep   3
    click element   xpath=/html/body/div/div/div/div/div/div/div/form/div/div[3]/div[1]/label/span
    sleep   3
    click element   xpath=/html/body/div/div/div/div/div/div/div/form/div/div[3]/div[2]/button
    sleep   3

*** Keywords ***
Search_Patients
    click element   xpath=//*[@id="mainTabs"]/li[1]
    sleep   3
    input text      xpath=//*[@id="txtLastname"]     sai
    sleep   3
    input text      xpath=//*[@id="txtFirstname"]    Naren
    sleep   3
    click element   xpath=//*[@id="btnSearchPatients"]
    sleep   3
