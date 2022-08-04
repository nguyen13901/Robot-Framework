*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://www.selenium.dev/

*** Test Cases ***
ScrollElement Test
	open browser    ${url}    ${browser}
	ScrollElement
#	close browser

*** Keywords ***
ScrollElement
	scroll element into view    //input[contains(@alt, 'Pay')]