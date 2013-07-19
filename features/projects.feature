Feature: Projects

  Background:
    Given I am logged in as a registered user
    And I am on the "root" page


  Scenario: Create New Project
    When I click to add a new project
    Then I should see "New Project"
    When I fill in "Name" with "Backyard"
    And I fill in "Description" with "Time to clean"
    And I add a tag of "work"
    And I press "Create Project"
    Then I should see "Backyard"
