Feature: HomeWork
  Scenario: Visit Homework page
    When I request Homework page

  Scenario: Upload Homework - Positive
    When I Upload 1d Homewrok
    When I Upload 1n Homewrok
    When I Upload 2n Homewrok

  Scenario: Upload Homework - Negative
    When I Uplaod Empty Homework