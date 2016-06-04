Given(/^I'm on the welcome page without being logged in a company$/) do
    '/'
end

When(/^I try to access a company directly$/) do
    visit(company_path(:id))
end

Then(/^I should keep on the Welcome page$/) do
    '/'
end

Given(/^I'm on the login page without being logged in a company$/) do
    visit(sign_in_login_path)
end

When(/^I try to access a direct company brownser$/) do
    visit(company_path(:id))
end

Then(/^I should be redirected to the system home page$/) do
    '/'
end