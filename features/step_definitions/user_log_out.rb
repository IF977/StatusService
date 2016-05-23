Given(/^I'm logged in on the home page$/) do
    '/'
end

When(/^I press sign out button$/) do
    visit (root_path)
    click_button('btn_login')
end

Then(/^I should be on the home Page$/) do
    '/welcome#teste'
end