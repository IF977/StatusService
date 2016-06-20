Feature: Fazer login
  As a user
  In order to login
  I want to log in to the system
  
  Scenario: User login page Unsucessful
    Given I am on the page user login
    When I fill in "session[login]" with "test"
    And I fill in "session[password]" with "abcdef"
    And I press the "Log in" button
    Then I should see a text "Incorrect login or password"
    
  Scenario: User login page sucessful
    Given I am on the page user login
    When I fill in "session[login]" with "test"
    And I fill in "session[password]" with "123456"
    And I press the "Log in" button
    Then Be redirected to the user page