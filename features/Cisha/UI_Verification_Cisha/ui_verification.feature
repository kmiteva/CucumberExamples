Feature: Cisha UI Verification

  As a Product Owner I would like to verify User Interface behaviour

  Background:
    Given the stable internet connection

  @sanity
  Scenario Outline: All links are accessible

    Given The customer who is access some ws in <language>
    When The customer goes to <name_of_tab> tab
    Then The customer should be successfully redirected to <name_of_tab> page


  Examples:
    |language|name_of_tab   |
    |  en    |Our services  |
    |  en    |Why cisha     |
    |  en    |Contact       |
    |  en    |Careers       |
    |  en    |Home          |
    |  de    | Leistungen   |
    |  de    | Start        |
    |  de    | Karriere     |
    |  de    | Wieso cisha  |
    |  de    | Kontakt      |


  @languages
  Scenario: Search services in German language

    Given The customer who is access some ws in de
    When The customer goes to  Leistungen tab
    Then The customer should be successfully redirected to Leistungen page

  @languages
  Scenario: Search services in English language

    Given The customer who is access some ws in en
    When The customer goes to  Contact tab
    Then The customer should be successfully redirected to Contact page

  @smoke
  Scenario: Search services in English language

    Given The customer who is access some ws in en
    When The customer goes to Our services tab
    Then The customer should be successfully redirected to Our services page

