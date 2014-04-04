Feature: Verification of 'Buy content' form

  As a Test Engineer and Developer we would like to verify the correctness
  of the 'Buy content' form



  @smoke @sanity
  Scenario Outline: Form 'BUY CONTENT'

    Given The customer <customer_id> who is trying to buy a product
    When The customer pay for the item
    Then the Service return a valid session form

    Examples:
    |customer_id|
    |  8687687  |



    Scenario: Notification

      Given some Notifiction


  Scenario: Mailer

  Given Mailer


#      When:
#      Then:a



