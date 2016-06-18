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
    Then I should be prompted to enter my personal information

  Scenario: Enter personal information
    Given I have added a meal to my order
    When I check out
    And I enter my name
    And I enter my delivery address
    And I enter my payment information
    Then I should be able to submit my order

  Scenario: Optional Registration
    Given I have added a meal to my order
    And I have entered my personal information
    When I choose to save my information
    And I submit my order
    Then it should be saved

  Scenario: Submit order
    Given I have added a meal to my order
    And I have entered my personal information
    When I submit my order
    Then I should see my order summary
    And I should be charged
    And Josh and Angela should be notified

  Scenario: Cancel order
    Given I have placed an order
    When I cancel my order
    Then I should be refunded
    And Josh and Angela should be notified
