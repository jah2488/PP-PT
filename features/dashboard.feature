Feature: Dashboard

  Background:
    Given I have an account
    When I go to the "dashboard"

  Scenario: Signing into the dashboard
    Then I should be prompted to sign in
    When I fill out and submit the login form
    Then I should be on the "dashboard"

  Scenario: Adding Projects from dashboard
    Given I am logged in as a registered user
    When I click "Add Project"
    And I fill out and submit the project form
    Then I should see the new project

  Scenario: Adding Tasks from dashboard
    Given I am logged in as a registered user
    And I have a project named "Backyard"
    When I click "Add Task"
    And I fill out and submit the task form
    Then I should see the new task

  Scenario: Adding Actions from dashboard
    Given I am logged in as a registered user
    And I have a project named "Backyard"
    And I have a task named "Rake Leaves"
    When I click "Add Action"
    And I fill out and submit the action form
    Then I should see the new action

  Scenario: Viewing Progress on a Project
    Given I am logged in as a registered user
    And I have a project named "Backyard"
    And I have a task named "Rake Leaves"
    And I have a completed task named "Mow Lawn"
    Then I should see "50%"
