Feature: RESTWebServices

  As a Test engineer I would like to verify the response code

  Scenario: RESTWebServices

    Given the RESTWebService
    When request the RESTWebService
    Then response should be successful