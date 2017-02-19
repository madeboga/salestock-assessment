Feature: Explore Home Page

  Scenario: Click on promo products block banner
    Given I have go to "homepage"
 	When I click on "promoproducts"
 	And I wait for 5 sec
	Then It should be redirect into "promoproducts" page

  Scenario: Click on contact us
    Given I have go to "homepage"
 	When I click on "contactus"
 	And I wait for 5 sec
	Then It should be redirect into "contactus" page


