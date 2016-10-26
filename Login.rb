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
