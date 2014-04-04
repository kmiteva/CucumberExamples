Feature: I would like to search something in the network
  As a Product Owner I would like to search something in the net

  Background:
    Given the stable internet connection is established

  @smoke
  Scenario Outline: Search fruits in google

    Given The customer who is access google site
    When The customer is searching for <staff>
    Then The lists of searching staff should be displayed

    Examples:
    |staff|
    |apple|
    |lemon|
    |grapes|
    |orange|
    |avocado|
    |banana |
    |guava  |
    |mango  |

