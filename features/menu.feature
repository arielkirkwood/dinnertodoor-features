Feature: Menu
  As Josh and Angela
  We want to provide a menu of one or more choices each week
  In order to inform our customers about what's available

  Scenario: No meal available this week
    Given a week with no meals scheduled
    When the week begins
    Then the menu should be empty
    And customers should be encouraged to return next week

  Scenario: Schedule a meal
    Given I have created a meal
    When I schedule it for a week
    Then I should see it listed for that week

  Scenario: Cancel a meal with existing orders
    Given a week with meals scheduled
    And an order exists for that week
    When I cancel that meal
    And I confirm my decision
    Then customers should be notified
    And customers should be refunded

  Scenario: This week's meals have been delivered
    Given a week with meals scheduled
    When I have delivered all of this week's orders
    Then the menu should be empty
    And customers should be encouraged to return next week


