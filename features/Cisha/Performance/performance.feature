Feature: Response time of RESTful web service in ms

  As a Test engineer I would like to verify the response time
  and average response time in ms of selected RESTful web service


  Scenario Outline: Response time of RESTful web services

    Given <RESTful>  web service
    When request for response time
    Then the response time should be returned
    And the average response time should be calculated


    Examples:
    |RESTful|
    |http://www.google.bg|
    |http://www.google.de|
    |http://www.google.com|
    |http://www.google.fr|

  Scenario: Response time of RESTful web services

    Given http://www.google.co.uk  web service
    When request for response time
    Then the response time should be returned
    And the average response time should be calculated


  @performance @smoke
  Scenario: Response time of selected RESTful web service

    Given Selected  RESTful web service
    When request for response time
    Then the response time should be returned
    And the average response time should be calculated