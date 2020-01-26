Given(/^I am not logged in visitor$/) do
  visit 'http://demo.redmine.org/login'
end

When(/^I click sign in button$/) do
  find(:xpath, '//*[@id="account"]/ul/li[1]/a').click
end

Then(/^I see log in form is opened$/) do
  expect(current_url).to include '/login'
  expect(page).to have_content 'Login'
  expect(page).to have_content 'Password'
end

When(/^I fill in form with valid cretintials$/) do
  find('#username').set 'user'
  find('#password').set 'qwerty'

  sleep 5

end

And(/^I click log in button$/) do
  find(:xpath, '//*[@id="login-form"]/form/table/tbody/tr[4]/td[2]/input').click
end

Then(/^I became a logged user$/) do
  expect(page).to have_content 'Logged in as user'
end