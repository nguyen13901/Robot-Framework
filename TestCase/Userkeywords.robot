*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources.robot

*** Variables ***
${browser}    Chrome
${url}    https://testautomationpractice.blogspot.com

*** Test Cases ***
UserKeyWord Test
	launchBrowser    ${url}    ${browser}
	${page_title}=    PageTitle
	log to console    ${page_title}
	close browser