*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://tocchien.zing.vn/

*** Test Cases ***
CaptureScreen Test
	open browser    ${url}    ${browser}
	CaptureScreen
#	close all browsers

*** Keywords ***
CaptureScreen
	capture element screenshot    //section[@class='registrationHero-2sgwh']    tocchien.png

