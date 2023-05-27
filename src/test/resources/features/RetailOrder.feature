@order
Feature: Retail Order

Background: 
Given User is on retail website
When User click on Sign in option


Scenario: Verify User can add an item to cart

And User enter email 'benitez2813@live.com' and password 'Tek@12345'
And User click on login button
And User should be logged in into Account
And User change the category to 'Smart Home'
And User search for an item 'Kasa Outdoor Smart Plug'
And User click on Search icon
And User Click on item
And User select quantity '2'
And User click add to Cart button
Then The cart icon quantity should change to '2'



Scenario: Verify User can place an order with Shipping address and payment Method on file

And User enter email 'benitez2813@live.com' and password 'Tek@12345'
And User click on login button
And User should be logged in into Account
And User change the category to 'Electronics' and User search for an item 'Apex Legends'
And User click on Search icon
And User click on item
And User select quantity '5'
And User click add to Cart button
Then the cart icon quantity should change to '5'
And User click on Cart option
And User click on Proceed to Checkout button
And User click on Place Your Order
Then a message should be displayed ‘Order Placed, Thanks’


Scenario: Verify User can cancel the order

And User enter email 'benitez2813@live.com' and password 'Tek@12345'
And User click on login button
And User should be logged in into Account
And User click on Orders section
And User click on first order in List
And User click on Cancel The Order button
And User select the cancelation Reason 'Bought wrong item'
And User click on Cancel Order button
Then a cancelation message should be displayed ‘Your Order Has Been Cancelled’



Scenario: Verify User can Return the order

And User enter email 'benitez2813@live.com' and password 'Tek@12345'
And User click on login button
And User should be logged in into Account
And User click on Orders section
And User click on first order in list
And User click on Return Items button
And User select the Return Reason 'Item damaged'
And User select the drop off service 'FedEx'
And User click on Return Order button
Then a cancelation message should be displayed 'Return was successful'


Scenario: Verify User can write a review on order placed

And User enter email 'benitez2813@live.com' and password 'Tek@12345'
And User click on login button
And User should be logged in into Account
And User click on Orders section
And User click on first order in list
And User click on Review button
And User write Review headline '<headline value>' and '<review text>'
And User click Add your Review button
Then a review message should be displayed ‘Your review was added successfully’

Examples: 
|EmailValue|PasswordValue|quantity|headline value|review text|
|benitez2813@live.com|Tek@12345|5|Quality|Product has good quality|
