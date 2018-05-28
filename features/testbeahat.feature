Feature: Site building
 In order to add features to my Drupal site
 As a site builder
 I need to be able to administer content types
 @api  
 Scenario: Reach the manage fields page of the article content type
   Given I am logged in as a "administrator"
   When I am at "/admin/structure/types"
   And I click "Manage fields" in the "Article" row
   Then I should be on "admin/structure/types/manage/article/fields"
   And I should see text matching "Add field"
