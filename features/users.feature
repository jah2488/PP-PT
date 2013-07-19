Feature: User

  Background:

  Scenario: Create new user
    Given I am on the "sign up" page
    When I fill in "Email" with "user@test.com"
    And I fill in "Password" with "test-password"
    And I fill in "Password confirmation" with "test-password"
    And I press "Sign up"
    Then I should be on the "dashboard"


