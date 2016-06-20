Given(/^I am on the page company login$/) do
    require "bcrypt"
    visit(sign_in_company_path)
    assert_current_path(sign_in_company_path)
    @company = Company.new(cnpj: "cnpj", nome: "nome", password_digest: BCrypt::Password.create('123456'))
    @company.save
end

When(/^I enter in "([^"]*)" with "([^"]*)"$/) do |area,text|
    fill_in area, with: text
end

When (/^I press the on "([^"]*)" button$/) do |text|
    click_button(text)
end

Then(/^I should see on text "([^"]*)"$/) do |text|
    expect(page).to have_content(text)
end

Then(/^Be redirected to the company page$/) do
    assert_current_path(sign_in_login_path)
end