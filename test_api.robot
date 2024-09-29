*** Settings ***
Library    RequestsLibrary

*** Variables ***
${url}    http://127.0.0.1:5000
${game_id}

*** Test Cases ***
Test create new game
    [Documentation]     Test tworzenia nowej gry
    ${response}     POST    ${url}/game
    should be equal as numbers    ${response.status_code}  201
    ${json_data}    set variable    ${response.json()}
    should be equal    ${json_data["message"]}  New game created
    set suite variable    ${game_id}    ${json_data["game_id"]}
    log    ${game_id}

Get Game Status
    [Documentation]    Test pobierania stanu gry
    ${response}     GET    ${url}/game/${game_id}
    should be equal as numbers    ${response.status_code}  200
    ${json_data}    set variable    ${response.json()}
    log    ${json_data}
    should be empty    ${json_data["moves"]}