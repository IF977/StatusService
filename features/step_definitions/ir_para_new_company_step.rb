Given(/^I am on the company login page$/) do
    '/sign_in_login'
end

When(/^I press sign up company now link$/) do
    visit (sign_in_login_path)
    # Para tag que não estao visiveis pode utilizar:
        #Capybara.ignore_hidden_elements = false
        #Ou fazer usando visible: false
    within('div#box_login') do
        click_on('btn_company')
        page.find('#div_aba2', visible: false).click_link('link_company', visible: false)
    end
   # Capybara.ignore_hidden_elements = true
end

Then(/^I should be on the Sign Up Company Page$/) do
    '/new_company_path'
end