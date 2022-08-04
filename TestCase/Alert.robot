*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://testautomationpractice.blogspot.com

*** Test Cases ***
AlertHandle Test
	open browser    ${url}    ${browser}
	AlertHandle
#	close browser

*** Keywords ***
AlertHandle
	maximize browser window
	click element    //button[@onclick='myFunction()']
#	handle alert    accept
#	handle alert    dismiss
	handle alert    leave