Feature: Basic Login in chess24

  As a Product owner I would like to verify all types of  login

  @sanity @smoke @login @successful_login
  Scenario: Successful Login /A customer has correct login credentials

    Given a registered customer is on site
    When the customer tries to login with correct password
    Then the login attempt should be successful


  @regression @error_message @not-be-tested
  Scenario: Unsuccessful Login /A customer has incorrect login credentials
#    BUG 1234
    Given a registered customer is on site
    When the customer tries to login with incorrect password
    Then the login attempt should be unsuccessful

  @regression  @error_message
  Scenario: Unsuccessful Login /A customer tries to login with invalid email

    Given a registered customer is on site
    When the customer tries to login with invalid email
    Then the login attempt should be unsuccessful

  @regression @error_message
  Scenario: Unsuccessful Login /A customer tries to login without any credentials

    Given a registered customer is on site
    When the customer tries to login without any credentials
    Then the login attempt should be unsuccessful