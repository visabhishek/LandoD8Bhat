Feature: Anonymous User Tests
  In order to protect data of the company and its customers
  As an anonymous user
  I want to make sure that no data is available to anonymous visitors

  Background:
    Given I am not logged in

  Scenario: Check general availability of the site
    When I am on "user"
    Then I should see the text "User account"
    And I should not see the text "Access denied"

  Scenario: Test the user login form and error messages
    When I am on "user"
    And I press "Log in"
    Then I should see the following error messages:
      | error messages |
      | Username or e-mail address field is required |
      | Password field is required |
    And I should not see the following error messages:
      | error messages |
      | Sorry, unrecognized username or password |
      | Unable to send e-mail. Contact the site administrator if the problem persists |

  Scenario Outline: Make sure certain urls are not available
    When I am on "[url]"
    Then I should get a "403" HTTP response
    And I should see the text "Access denied"
    Examples:
      | url      |
      | admin    |
      | node/add |
      | user/1   |
