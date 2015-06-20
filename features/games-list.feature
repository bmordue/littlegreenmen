Feature: Games list
  In order to play the game
  As a player
  I want to be able to interact with a list of games
 
Scenario: Get a list of available games

  When I send and accept JSON
  And I send a GET request to "/games"
  Then the response status should be "200"
  And the JSON response should have "$..current_turn"

Scenario: Get a list of players in each game

  When I send and accept JSON
  And I send a GET request to "/games/1051214309/players.json"
  Then the response status should be "200"
