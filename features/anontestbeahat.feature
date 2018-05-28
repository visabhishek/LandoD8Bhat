Feature: Site browsing
 @api  
 Scenario: Reach the manage fields page of the article content type
   Given I am not logged in
   When I am at "/"
   And I should see text matching "Welcome to Drupal8.5"
