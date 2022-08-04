*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
RadioButton Test
	open browser    ${url}    ${browser}
	set selenium speed    1
	RadioButton
	close browser

*** Keywords ***
RadioButton
	maximize browser window
	select radio button    sex    Male
	sleep    2
	select radio button    sex    Female
	select radio button    exp    2
	select checkbox    Manual Tester
	select checkbox    Automation Tester