Feature: Negar acesso direto company
  As a system administrator
  In order not to allow direct access to a company
  I want to redirect it to home page system
  
  Scenario: 
    Given I'm on the welcome page without being logged in a company
    When I try to access a company directly
    Then I should keep on the Welcome page
    
    
  Scenario:
    Given I'm on the login page without being logged in a company
    When I try to access a direct company brownser
    Then I should be redirected to the system home page