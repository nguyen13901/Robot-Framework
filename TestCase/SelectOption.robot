*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
SelectOption Test
	open browser    ${url}    ${browser}
	SelectOption
	close browser

*** Keywords ***
SelectOption
	maximize browser window
	select from list by label    continents    Africa
	sleep    2
	select from list by index    continents    5

	select from list by label    selenium_commands    Switch Commands
	sleep    2
	select from list by index    selenium_commands    4