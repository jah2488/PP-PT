Feature: Tasks

  Background:
    Given I am logged in as a registered user
    And I have a "project" with "name" of "Bathroom"
    And I am on the "root" page

  Scenario: Create New Task
    When I click to add a new task
    Then I should see "New Task"
    When I fill in "Name" with "Clean Bathtub"
    And I fill in "Description" with "Time to clean"
    And I add a tag of "work"
    And I press "Create Project"
    Then I should see "Clean Bathtub"
