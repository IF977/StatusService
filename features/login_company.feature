Feature: Fazer login company
  As a company
  In order to login
  I want to log in to the system
  
  Scenario: User login page company Unsucessful
    Given I am on the page company login
    When I enter in "session[cnpj]" with "11111111111111"
    And I enter in "session[password]" with "aasdddf"
    And I press the on "Log in" button
    Then I should see on text "Incorrect login or password"
    
  Scenario: User login page company Unsucessful
    Given I am on the page company login
    When I enter in "session[cnpj]" with "11111111111111"
    And I enter in "session[password]" with "123456"
    And I press the on "Log in" button
    Then Be redirected to the company page