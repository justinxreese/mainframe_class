Feature: Googling
  Scenario: Looking up info about Capital One
    Given I want to look up "Capital One"
    When I visit Google
    And I enter my search term
    And click search
    Then I see results about what I wanted to look up