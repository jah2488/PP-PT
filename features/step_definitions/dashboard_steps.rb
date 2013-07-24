Given(/^I have an account$/) do
  FactoryGirl.create(:user, :email => 'user@example.com')
end

When(/^I go to the "(.*?)"$/) do |page|
  visit "/#{page}"
end

Then(/^I should be prompted to sign in$/) do
  page.should have_content "You need to sign in"
  current_path.should =~ /sign_in/
end

When(/^I fill out and submit the login form$/) do
  fill_in 'user[email]',    :with => 'user@example.com'
  fill_in 'user[password]', :with => 'testpassword'
  click_button 'Sign in'
end

When(/^I click "(.*?)"$/) do |link|
  click_link link
end

When(/^I fill out and submit the project form$/) do
  fill_in 'project[name]',        :with => 'Backyard'
  fill_in 'project[description]', :with => 'Time to fix it'
  check   'project[in_progress]'
  click_button 'Create Project'
end

Then(/^I should see the new project$/) do
  page.should have_content "Backyard"
end

Given(/^I have a project named "(.*?)"$/) do |project_name|
  click_link 'Add Project'
  fill_in 'project[name]',        :with => project_name
  fill_in 'project[description]', :with => 'Time to fix it'
  check   'project[in_progress]'
  click_button 'Create Project'
end

When(/^I fill out and submit the action form$/) do
  fill_in 'action_item[name]',        :with => 'Go and grab the rake from the shed'
  fill_in 'action_item[description]', :with => ''
  check   'action_item[in_progress]'
  click_button 'Create Action'
end

Then(/^I should see the new action$/) do
  page.should have_content 'Go and grab the rake from the shed'
end

When(/^I fill out and submit the task form$/) do
  fill_in 'task[name]',        :with => 'Sweep Yard'
  fill_in 'task[description]', :with => 'Use the Rake'
  check   'task[in_progress]'
  click_button 'Create Task'
end

Then(/^I should see the new task$/) do
  page.should have_content 'Sweep Yard'
end

Given(/^I have a task named "(.*?)"$/) do |task_name|
  click_link 'Add Task'
  fill_in 'task[name]',        :with => task_name
  fill_in 'task[description]', :with => 'Time to fix it'
  check   'task[in_progress]'
  click_button 'Create Task'
end

Given(/^I have a completed task named "(.*?)"$/) do |task_name|
  click_link 'Add Task'
  fill_in 'task[name]',        :with => task_name
  fill_in 'task[description]', :with => 'Time to fix it'
  check   'task[completed]'
  click_button 'Create Task'
end
