Given(/^I am on the company login page$/) do
    '/sign_in_login'
end

When(/^I press sign up company now link$/) do
    visit (sign_in_login_path)
    #click_button('btn_company')
    #click_link('link_company')
    #find_by_id('div_aba2')
    #click_link('link_company')
end

Then(/^I should be on the Sign Up Company Page$/) do
    '/new_company_path'
end