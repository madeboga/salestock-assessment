require 'selenium-cucumber'

But(/^I type a "([^"]*)"$/) do |arg1|
	step %[I enter "#{arg1}" into input field having id "email_create"]
end

Then(/^Show an alert successfully "([^"]*)" page$/) do |arg1|
	step %[I should see page title as "Promo - My Store"]
end