Feature: Ordering
  As a hungry person
  I want to order some of Josh and Angela's delicious food
  In order to not have to cook on an evening

  Background:
    Given a meal is available to order

  Scenario: Choose a meal
    When I choose a size
    And I choose a delivery date
    Then I can add it to my order

  Scenario: Check out order
    Given I have added a meal to my order
    When I check out
    Then I should be prompted to enter my payment information

  Scenario: Submit order
    Given I have added a meal to my order
    And I have entered my payment information
    When I submit my order
    Then I should see my order summary
    And Josh and Angela should be notified
