Given(/^I am on the page user login$/) do
    require "bcrypt"
    visit(sign_in_login_path)
    assert_current_path(sign_in_login_path)
    @user = User.new(nome: "nome", email: 'test@test2.com', login: 'test', password_digest: BCrypt::Password.create('123456'))
    @user.save
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |area,text|
    fill_in area, with: text
end

When (/^I press the "([^"]*)" button$/) do |text|
    click_button(text)
end

Then(/^I should see a text "([^"]*)"$/) do |text|
    expect(page).to have_content(text)
end

Then(/^Be redirected to the user page$/) do
    assert_current_path(sign_in_login_path)
end