Feature: I would like to eat cucumbers

Scenario Outline: eating cucumbers

Given there are <start> cucumbers
When I eat <eat> cucumbers
Then I should have <left> cucumbers

Examples:
|start|eat|left|
|10   |10 |0   |
|11   |10 |1   |
|20   |0  |20  |
|100  |10 |70  |


  Scenario: eating cucumbers

    Given there are 10 cucumbers
    When I eat 8 cucumbers
    But  I buy the other 3
    Then I should have enough cucumbers


