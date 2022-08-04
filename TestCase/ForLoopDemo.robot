*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://testautomationpractice.blogspot.com

*** Test Cases ***
ForLoop Test
	open browser    ${url}    ${browser}
	ForLoop
	ForLoop2
	close browser

*** Keywords ***
ForLoop
	FOR    ${i}    IN RANGE    1    10
	    log to console    ${i}
	    exit for loop if    ${i} == 3
	END

ForLoop2
	FOR    ${name}    IN    nguyen    dong    viet
	    log to console    ${name}
	END
