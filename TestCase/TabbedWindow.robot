*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://demo.automationtesting.in/Windows.html

*** Test Cases ***
TabbedWindow Test
	open browser    ${url}    ${browser}
	TabbedWindow
	close all browsers

*** Keywords ***
TabbedWindow
	maximize browser window
	click element    //div[@id='Tabbed']//button
	switch window    Selenium
	click element    //a[@id='navbarDropdown']
	click link    //a[contains(@href, 'about')]