*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.hackerrank.com/auth/login
*** Test Cases ***
LoginTest
		set selenium speed    2
	    open browser    ${url}    ${browser}
		loginToApplication
		close browser

*** Keywords ***
loginToApplication
	input text    //input[@id='input-1']    nguyen13901@gmail.com
	input text    //input[@id='input-2']    Nguyen123@
	click element    //button[@data-analytics='LoginPassword']
