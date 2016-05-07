Given(/^I am on the user login page$/) do
    '/sign_in_login'
end

When(/^I press sign up user now link$/) do
    visit (sign_in_login_path)
    page.find('#div_user').click_link('link_user')
    #click_link('link_user')
end

Then(/^I should be on the Sign Up User Page$/) do
    '/new_user_path'
end