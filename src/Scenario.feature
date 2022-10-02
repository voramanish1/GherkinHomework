Feature: Demo Nopcommerce's topmenu acceptance criteria
As a user, I would like to check acceptance criteria of Nopcommerce topmenu
Background: User is on given URL
When User type URL https://demo.nopcommerce.com
And User click on Enter button
Then User is on given URL

Scenario: Verify that user can navigate to book category
When User is on given URL
And Click on books tab on top menu
Then User is navigated to books category page

Scenario:  Verify that user can see the books category page filters and list of products
When  User is on given URL
And   Click on books tab on top menu
And   Check filters and and list tab.
Then  Books category page is displayed with filters and list tabs

Scenario: Verify that user can see 'Sort by' filters on book category page
Given User is on books category page
When User is on books category page
And Check 'sort by' filter is present
Then 'Sort by' filter is available on book category page

Scenario: Verify that user can see 'display' filter on book category page
Given User is on books category page
When User is on books category page
And Check 'display' filter is present
Then 'Display' filter is available on book category page

Scenario: Verify that user can see 'grid' tab on book category page
Given user on book category category page
When User is on books category page
And Check 'grid' tab is present
Then 'Grid' tab is available on bok category page

Scenario: Verify that user can see 'list' tab on book category page
Given User is in books category page
When Use is on book category page
Then 'list' tab is avalable on book category page

Scenario: Verify that user can see 'Name: A TO z' selection is selection is present in 'Sort by' filter
Given User is on book category page
When User is on book category page
And Click on 'Sort by' filter
And Check on 'Name': A to Z' selection is present
Then 'Name: A to Z' selection is present in 'sort by' filter

Scenario: Verify that user can see 'name A to Z' is first option in 'sort by' filter
Given User is on book category page
When User is on book category page
And Click on 'sort by' filter
And Check that 'name: A to Z' is first in order
Then 'name: A to Z' is first option in order

Scenario: Verify that user can see 'Name: A to Z' filter is functioning as expected (note: products are filtered in alphabetical order)
Given User is on books category page
When User is on book category page
And Click on 'sort by' filter
And Select 'name: A to Z' filter
Then All products are displayed in alphabetical order