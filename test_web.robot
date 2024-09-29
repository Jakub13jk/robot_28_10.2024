*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      file:///C:/Users/brylka/Downloads/webTicTacToe-master/webTicTacToe-master/index.html

*** Test Cases ***
Test New Game Button
    [Documentation]    Test owiera aplikację webową i klika przecisk New Game
    open browser    ${url}  Chrome
    sleep    5
    maximize browser window
    click element    id:new-game
    capture page screenshot    screen_1.png
    sleep    2