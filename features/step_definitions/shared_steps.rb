Given(/^I am logged in as a registered user$/) do
  visit dashboard_path
  fill_in 'user[email]',    :with => 'user@example.com'
  fill_in 'user[password]', :with => 'testpassword'
  click_button 'Sign in'
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content content
end

Then(/^I should be on the "(.*?)"$/) do |page|
  current_path.should == "/#{page}"
end
