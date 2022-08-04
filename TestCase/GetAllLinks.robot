*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://testautomationpractice.blogspot.com

*** Test Cases ***
GetAllLinks Test
	open browser    ${url}    ${browser}
	GetAllLinks
	close browser

*** Keywords ***
GetAllLinks
	${allLinksCount}=  get element count    //a
	Log To Console    ${allLinksCount}

	FOR    ${i}    IN RANGE    1    ${allLinksCount}
		${linkText}=    get text    (//a)[${i}]
		log to console    ${i}
		log to console    ${linkText}
	END