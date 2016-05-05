Given(/^I am on the home page$/) do
    '/'
end

When (/^I press login button$/) do
    visit (root_path)
    click_button('btn_login')
end

Then(/^I should be on the Login Page$/) do
    '/sign_in_login'
end