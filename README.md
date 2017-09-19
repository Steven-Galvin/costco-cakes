# [Costco Custom Cake Ordering app](https://cake-orders.herokuapp.com/)
### Web app made for modernizing the way Costco handles its cake orders.
### Steven Galvin, July 24th, 2017
[![Travis](https://img.shields.io/travis/rust-lang/rust.svg?style=plastic)](https://github.com/steven-galvin/costco-cakes)

## Why?
As of writing this, Costco still uses paper and pen for their cake orders and as an employee I've seen first hand how many issues this causes. I made this app as a way to modernize their system and provide an improvement to the member experience and help alleviate the amount of issues that arise from paper and pen systems. It prevents necessary forms from being left blank, it eliminates issues of employees being unable to read handwriting, it eliminates the possibility of misplacing or misfiling orders, and it saves having to keep copies of ordering forms stocked. The member experience is improved by giving them an easy to follow process. Being able to see pictures of the cakes matched up with the names as they make the selection prevents accidentally selecting the wrong design, and requiring all important fields guarantees the decorators have all the information they need to be able to complete the order by the deadline. The process is much in need of modernization and this app sets out to do so.

## Landing Page:
![](public/images/placeholder.png "Placeholder")

## Planning
### Description
This website gives Costco members the ability to place a special cake order with Costco. It features three sides, the Member Side, the Employee Side, and the Admin Side. Check

**The Member Side** gives members the all the forms needed to complete their order and allows them the ability to track their orders. They can create their own orders, update them within a certain time frame before the cakes scheduled completion, or cancel their order entirely if desired.

**The Employee Side** gives employees the ability to see an organized list of To Be Completed Orders(TBCO). They can expand the orders into dynamic pages to show all details for that order. When the employee finishes the cake, they can check it off as done to move it out of the TBCO section. When they see fit, they can check all the completed orders against the cakes that haven't been picked up yet and permanently delete them from the database.

**The Admin Side** gives complete CRUD functionality over all orders and users, including Employee and Member accounts.

The websites **testing** will be at least **90% covered**. Testing is done with Rspec and Capybara. Coverage is found with the **SimplyCov gem**.

**Authentication and Authorization** is handled with the **Devise gem** and custom helper methods.

File uploads are handled with the **Paperclip gem**.

### 1. Configuration/dependencies
  The app will primarily use Ruby on Rails and the SQL database. AJAX added to increase the UX. The app was made with the culmination of knowledge and skills I picked up during my time with Epicodus' Ruby/JavaScript/Rails course.

  Future plans include:
  * Hosting the site live
  * Updating the style of the page

### 2. User Stories
##### Members
  * As a member, I'd like to create an account
  * As a member, I'd like to be able to view all information regarding cakes
  * As a member, I'd like CRUD functionality over orders I've made
  * As a member, I'd like to view all orders I've placed and their current status

##### Employee
  * As an employee, I'd like to see a list of all orders made organized by deadline
  * As an employee, I'd like to expand orders and see their specific details
  * As an employee, I'd like to mark an order as completed to move it out of the list of to be completed orders
  * As an employee, I'd like to delete orders from the database when the cake has already been picked up

##### Admin
  * As an admin, I'd like CRUD functionality over orders in the store
  * As an admin, I'd like to be able to see all orders and change their status between processing and completed
  * As an admin, I'd like CRUD functionality over employees and members accounts

### 3. Integration
##### Member Side
  * Landing page with information regarding app and link to start orders
  * Build order pages with forms to build orders
  * Order completed page displaying the order in it's entirety before confirming
  * Order confirmation page
  * View orders to see all the orders you've placed and their completion status

##### Employee Side
  * Orders page that lists all orders to be completed, organized by scheduled dates
  * Order details page to show all necessary information regarding the orders
  * Completed orders page to show any orders that have already been marked as completed

##### Admin Side
  * CRUD pages to handle CRUD functionality over orders and user accounts (employee and member)

  Stretch Goals:
  * About page for information regarding the company
  * Contact page to reach out to me

### 4. UX/UI
  * SASS
  * AJAX

  Stretch Goals:
  * React or Angular 4 for front end

### 5. Polish
  * Refactor code.
  * Delete unused code.
  * Make README awesome.

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Node.js](https://nodejs.org/) (with NPM)
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)
* [Postgres](https://www.learnhowtoprogram.com/ruby/ruby-database-basics/installing-postgres-7fb0cff7-a0f5-4b61-a0db-8a928b9f67ef) (here's a good lesson online for setting it up)

## Installation

As of writing this README, these instructions work on MacOS.

* Run `$ git clone <this-repository-url>`
* Then `$ cd costco-cakes`
* Once in the 'costco-cakes' folder, run `bundle install` to install gems, `$ rails db:setup` to setup up the database, and `$ rails s` to run the server. Then visit http://localhost:3000/ to view the app.

#### User accounts
This website has three user accounts for testing purposes if installation instructions are followed properly.
```
Admin:
email | admin@test.com
password | 123asd

Employee
email | employee@test.com
password | 123asd

Member
email | member@test.com
password | 123asd
```

## Built With

* Ruby ~> 2.4.1
* Rails ~> 5.1
* SQL
* HTML
* CSS/SASS
* Bootstrap https://getbootstrap.com/
* Jquery https://jquery.com/
* Node
* Bower
* FactoryGirl
* Paperclip
* Devise
* AJAX

<!-- ## Revisions

This section is for listing the revisions I've made to the previous site. Any refactoring, additional features, or debugging will be recorded here along with my commit history.

#### Style Changes
* choose color pallet to build off of instead of materialize defaults
* add website title to navbar with link to root
* add collapsable menu that opens side nav when clicked
* add welcome message calling user by name for personalable touch
* edit button colors
* make 'finalize order' and item delete buttons
* add flex to products page to organize products cleanly
* add borders and box shadow with default height to products for uniformity
* add images to products

#### AJAX

* add AJAX to updating cart with items so it reflects in the navbar
* add AJAX to deleting cart item and adjusting total price
* add AJAX to show and hide product details

#### Functionality Changes
* prevent users from adding negative order items to cart
* prevent users from sending empty string to cart
* allow only admin to add products
* redirect users to sign in page if trying to reach unauthorized pages
* allow admin to increase price of items by steps of 0.01
* allow admin to update and delete products
* allow admins to add or edit product images -->

## Authors

Steven Galvin

[Send me an email!](mailto:steven.john.galvin@gmail.com)

## License

MIT License

Copyright (c) Steven Galvin, 2017

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
