 Feature: Sign in
  As a visitor
  I want to able to sign in
  In order to become a user


  Scenario: Sign in positive flow
    Given I am not logged in visitor

    When I click sign in button
    Then I see log in form is opened

    When I fill in form with valid credentials
    And I click log in button
    Then I became a logged user
