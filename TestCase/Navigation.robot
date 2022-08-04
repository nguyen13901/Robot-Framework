*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://google.com

*** Test Cases ***
Navigate Test
	open browser    ${url}    ${browser}
	Navigate
#	close all browsers

*** Keywords ***
Navigate
	${loc}=    get location
	log to console    ${loc}

	go to    https://facebook.com
	${loc}=    get location
	log to console    ${loc}

	go back
