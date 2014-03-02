Feature: RESTWebServices

  As a Test engineer I would like to verify the response code

  @smoke
  Scenario: RESTWebServices

    Given the RESTWebService
    When request the RESTWebService
    Then the response should be successful