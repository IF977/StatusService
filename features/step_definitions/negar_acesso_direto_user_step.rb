Given(/^I'm on the welcome page without being logged in a user$/) do
    '/'
end

When(/^I try to access a user directly$/) do
    visit (user_path(:id))
end

Then(/^I should continue on the Welcome page$/) do
    '/'
end

Given(/^I'm on the login page without being logged in a user$/) do
    '/sign_in_login'
end

When(/^I try to access a direct User browser$/) do
    visit(company_path(:id))
end

Then(/^I should go to the welcome page$/) do
    '/'
end
