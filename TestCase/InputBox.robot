*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://www.nopcommerce.com/en/login

*** Test Cases ***
Login Test
	open browser    ${url}    ${browser}
	LoginToApplication
	close browser

*** Keywords ***
LoginToApplication
	${user_name}    Set Variable    //input[@id='Username']
	input text    ${user_name}    nguyen13901@gmail.com
	sleep    5
	clear element text    ${user_name}
	${Remember_Me}    Set Variable    //input[@id='RememberMe']/following-sibling::label
	click element    ${Remember_Me}
	sleep    10