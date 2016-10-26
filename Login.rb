Given(/^user login$/) do
  visit("https://10.10.5.103/login")
end

Then(/^user get input Username is "([^"]*)"$/) do |user|
  expect(page).to have_css('input#username')
  fill_in('username', :with => 'user1@wavify.org')
end

Then(/^user get Password is "([^"]*)"$/) do |pass|
  expect(page).to have_css('input#password.form-control.pull-left')
  fill_in("Password", :with => "password")
end

Then(/^Click Button Login$/) do
  click_button "Sign in"
  sleep 2
end

Then(/^Click Link Forget Password$/) do
  click_link "Forget Password"
end

Then(/^user get input is "([^"]*)"$/) do |user|
  within("#forget-password") do #scope in forget password
  expect(page).to have_css('input.username.form-control')
  fill_in('Username', :with => 'user1@wavify.org')
end
end

Then(/^Click Button Send request for password$/) do
  click_button "Send request for password"
  sleep 2
end

Then(/^Click Button Send request for password$/) do
  click_button "Send request for password"
  sleep 2
end
