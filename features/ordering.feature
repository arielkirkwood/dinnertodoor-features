Feature: Ordering

  Scenario: Choose a meal
    Given a meal is available to order
    When I choose a size
    And I choose a delivery date
    Then I can add it to my order
