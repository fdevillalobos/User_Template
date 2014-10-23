Feature: User submission

  As an admin
  so that I can track all the users in the database.

  Scenario: put a user
    Given i'm on the user sign up page
    When I create a new user
    Then should be redirected to my dashboard.'