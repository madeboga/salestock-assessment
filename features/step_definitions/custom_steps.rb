require 'selenium-cucumber'

Given(/^I have go to "(.*?)"$/) do |arg1|
	#Homepage
	if (arg1=="homepage") then
    	step %[I navigate to "http://automationpractice.com/"]
    #Registration user
    elsif (arg1=="accountpage") then
    	step %[I navigate to "http://automationpractice.com/index.php?controller=authentication&back=my-account"]
    elsif (arg1=="personalinformation") then
    	step %[I navigate to "http://automationpractice.com/index.php?controller=authentication&back=my-account#account-creation"]
    end
end

When(/^I click on "(.*?)"$/) do |arg1|
	#Explore homepage
	if (arg1=="promoproducts") then
		step %[I click on element having class "img-responsive"]
	elsif (arg1=="contactus") then
		step %[I click on element having id "contact-link"]
	#Search product
	elsif (arg1=="searchtextbox") then
		step %[I click on element having id "searchbox"]
	elsif (arg1=="searchicon") then
		step %[I click on element having name "submit_search"]
	#Registration user
	elsif (arg1=="emailtextboxforcreate") then
		step %[I click on element having id "email_create"]
	elsif (arg1=="createbutton") then
		step %[I click on element having id "SubmitCreate"]
	end
end

But(/^I type "([^"]*)" to search a product$/) do |arg1|
	step %[I enter "#{arg1}" into input field having id "search_query_top"]
end

Then(/^It should be redirect into "([^"]*)" page$/) do |arg1|
	if (arg1=="promoproducts") then
		step %[I should see page title as "Promo - My Store"]
	elsif (arg1=="contactus") then
		step %[I should see page title as "Contact us - My Store"]
	elsif (arg1=="result") then
		step %[I should see page title as "Search - My Store"]
	elsif (arg1=="personalinformation") then
		step %[I should see page title as "Login - My Store"]
	end
end

And(/^Shown the "(.*?)" were found$/) do |arg1|
	if (arg1=="results") then
    	step %[element having class "heading-counter" should be present]
    end
end