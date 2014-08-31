Feature: Rock Paper Scissors game development
  As a player
  I want to play rock, paper, scissors
  In order to play

  Background:
    Given I visit '/'

  Scenario: Verify page has dropdown and submit
    Then I should see a "sign_name" dropdown
    And I should see a "Fight!" button

  Scenario: Verify options for dropdown
    Then "sign_name" should contain "rock"
    And "sign_name" should contain "paper"
    And "sign_name" should contain "scissors"

  Scenario: Submitting a throw should show you the results page
    Given I select "rock" from "sign_name"
    And I click "Fight!"
    Then I should see "Your throw:"
    And I should see "My throw:"
    And I should see "New Game"
