Given(/^i'm on the user sign up page$/) do
  visit new_user_registration_path
end

When(/^I create a new user$/) do
  fill_in :name, :with => "Juan"
  fill_in :email, :with => "juan86@hotmail.com"
  fill_in :password, :with => "holahola"
  #fill_in :password_confirmation, :with => "holahola"
  click_button 'Sign up'
end

Then(/^should be redirected to my dashboard\.'$/) do
  assert page.has_content?('successfully')
end