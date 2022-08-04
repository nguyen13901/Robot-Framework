*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://selenium.dev/selenium/web/mouse_interaction.html

*** Test Cases ***
MouseAction Test
	open browser    ${url}    ${browser}
	MouseAction
#	close browser

*** Keywords ***
MouseAction
	click element    //input[@id='clickable']
	sleep    1
	open context menu    //input[@id='clickable']
	sleep    1
	double click element    //input[@id='clickable']
	sleep    1
	drag and drop    //div[@id='draggable']    //div[@id='droppable']