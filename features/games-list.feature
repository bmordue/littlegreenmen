Feature: Games list
  In order to know which game to join
  As a player
  I want a list of the available games
 
Scenario: List of available games

  When the client requests GET /games
  Then the response should be "200"
