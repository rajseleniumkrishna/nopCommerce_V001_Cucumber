Feature: Customers

@sanity
Scenario: Add a new Customer
	Given User Launch Chrome Browser
	When User opens url "https://admin-demo.nopcommerce.com/login"
	And User enters Email as "admin@yourstore.com" and Password as "admin"
	And Click on Login
	Then User can view Dashboard
	When User click on customers Menu
	And click on customers Menu Item
	And click on Add new button
	Then User can view Add new customer page
	When User enter customer info
	And click on save button
	Then User can view confirmation message "The new customer has been added successfully."
	And close browser
	
@regression	
Scenario: Search customer by EmailID
	Given User Launch Chrome Browser
	When User opens url "https://admin-demo.nopcommerce.com/login"
	And User enters Email as "admin@yourstore.com" and Password as "admin"
	And Click on Login
	Then User can view Dashboard
	When User click on customers Menu
	And click on customers Menu Item
	And Enter customer Email
	When Click on search button
	Then User should found Email in the search table
	And close browser