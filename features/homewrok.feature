Feature: HomeWork
  Scenario: Visit Homework page
    When I request Homework page

  Scenario: Upload Homework - Positive
    When I Upload pos1d Homework
    When I Upload pos1n Homework
    When I Upload pos2n Homework

  Scenario: Upload Homework - Negative
    When I Upload empty Homework
    When I Upload inKey Homework
    When I Upload inEmail Homework
    When I Upload inTime Homework
    When I Upload inKey-inEmail Homework
    When I Upload inKey-inTime Homework
    When I Upload inTime-inEmail Homework
    When I Upload inTime-inEmail-inKey Homework