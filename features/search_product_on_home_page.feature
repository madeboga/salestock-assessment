Feature: Search Product on Home Page

  Scenario: Search product using character
    Given I have go to "homepage"
 	When I click on "searchtextbox"
 	But I type "try search" to search a product
 	And I click on "searchicon"
 	And I wait for 5 sec
	Then It should be redirect into "result" page
	And Shown the "results" were found