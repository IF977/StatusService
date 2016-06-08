Feature: Negar acesso direto user
  As a system administrator
  In order not to allow direct access to a user
  I want to redirect it to home page system
  
  Scenario: 
    Given I'm on the welcome page without being logged in a user
    When I try to access a user directly
    Then I should continue on the Welcome page
    
  Scenario:
    Given I'm on the login page without being logged in a user
    When I try to access a direct User browser
    Then I should go to the welcome page