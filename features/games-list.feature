Feature: Games list
  In order to know which game to join
  As a player
  I want a list of the available games
 
Scenario: List of available games

    When I send and accept JSON
    And I send a GET request to "/games"
    Then the response status should be "200"

