Feature: Bookcategory

  Background: I should be able to see homepage
    Given i enter URL"https://demo.nopcommerce.com/"
    And I am in home page

Scenario Outline: I should be able to see top manu homepage with categories
When i am on home page
Then I should be able to see top tabs with "<categories>"
Example:
|categories        |
|computer          |
|Electronic        |
|Apparel           |
|Digital downloads |
|Books             |
|jewellery         |
|Gift card         |
|
Scenario Outline: I should be able to see book page with filters
When I select book category from top menu tabs on home page
Then I should be navigated to book category
And I should be able to see "<filters>"
Examples:
| filter      |
| Short by    |
| Display     |
| the Grid    |
| List Tab    |

Scenario Outline: I should be able to see list of terms of each filter
Given I an on book page
When I click on "<filter>" in dropdown menu
Examples:
| filter            | list                                                       |
| sort by           | Name: A to z, name Z to A, Price: High to Low, Creates on  |
| Display           | 3 , 6 , 9                                                  |

Scenario Outline: I should be able to choose nay filter option with specific result
Given I am on book page
When  I click on "<filter>"
And   I click on any "<option>"
Then  I should be able to choose any option from the list
And   I should be able to see "<result>"
Examples:
|Filter            | option          | Result                                                            |
|Sort by           | name:A to z     | sorted product with the product name in alphabetical order A to Z |
|Sort by           | Name: Z to A    | Sorted product with the product name in alphabetical order Z to A |
|Sort by           | Price:low to high|Sorted product with price in descending order                     |
|Sort by           | Price:High to law|Sorted product with the price in ascending order                  |
|Sort by           | Created on       |Recently added product should be show first                       |
|Display            | 3                | 3 products in a page                                            |
|Display            | 6                | 6 products in a page                                            |
|Display            | 9                | 9 products in a page                                            |

Scenario Outline: I should be able to see product display format according display format type as per given picture in srs documnet
Given I am on book page
When I click on "<display format icon>"
Then I should be able to see product display format type as per given picture in SRS document
Examples:
| display format icon  |
| Grid                 |
| List                 |







