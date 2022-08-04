*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Login_resources.robot
Suite Setup    Close All Browsers
Suite Teardown    Close All Browsers

*** Variables ***
${browser}    Chrome
${url}    https://tablepress.org/demo/

*** Test Cases ***
HandleTable Test
	open browser    ${url}    ${browser}
	HandleTable
	close browser

*** Keywords ***
HandleTable
    ${count}    get element count   //table[@id='tablepress-demo']//td[1]
    ${first_names}  set variable    //table[@id='tablepress-demo']//td[1]
    FOR    ${i}     IN RANGE    1    ${count}
        ${text}=    get text    (${first_names})[${i}]
        log to console    ${text}
    END