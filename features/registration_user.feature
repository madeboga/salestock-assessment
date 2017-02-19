Feature: Registration User

  Scenario: Sign up new user with valid email
    Given I have go to "accountpage"
 	When I click on "emailtextboxforcreate"
 	But I type a "try@try.com"
 	And I click on "createbutton"
 	And I wait for 5 sec
	Then It should be redirect into "personalinformation" page