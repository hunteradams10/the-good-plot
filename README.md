***ALL COMMITS ARE ON DEV BRANCH, NOT ON MAIN. ALL THE WORK IS ON DEV AND THE HEROKU APP IS DEPLOYED FROM DEV**


## The Problem I Am Trying To Solve

I want to create a two-sided marketplace where people can buy and sell second-hand books from one-another. I'm going to build an application that provides this service, where users that sign up can buy or sell second-hand books from other users.

## Why It Needs Solving

It is a problem that needs solving because people may want to buy books at a cheaper price (some textbooks, for example, go into the hundreds of dollars. Second-hand would be cheaper). They also may not want to go through a third-party, as the process can be a lot simpler when it is between two people in the absence of a third party. Also, sometimes, the age or worn condition of a book may hold a certain appeal for some (a story within a story!), and this app will give people the opportunity to buy these kinds of books.

# Description of Marketplace App:

## Purpose:

The purpose of my marketplace application is to provide a place where people can buy and sell secondhand books to one-another. This is to ensure that books are accessible to more people because they can be bought and sold at reasonable prices.

## Functionality:

When a user lands on the home page, they can only view the homepage itself, and the Listings page. They must sign up or sign in to be able to do anything else.
Once a user has signed up/signed in, new navigation options will appear in the navbar: "Bought", "Sold", "Order Addresses", and "Favourites". The user can also make a listing, and buy listings from others. They will only be able to edit and destroy listings that they have made, and can only view listings that others have made. They can upload images with listings that they create. At the bottom of each listing, on the individual listings pages, users have the option of "favouriting" the listing. When they Favourite a listing, the button will toggle and the Favourite will be added to their "Favourites" page, which can be navigated to via the navbar. If they want to unfavourite, they can simply toggle the button on the listing again, and it'll remove it from their Favourites. The Favourite page has the time and date that the listing was favourited, and a link to the listing itself.

Users can input Order Addresses on the corresponding page. This was to enable them to select an address when they proceed with an order. The inputs are working and the addresses will be saved. The website is responsive.

## Features:

- Devise gem for authentication/authorization/sanitisation
- Only users who own listings can edit/destroy listings
- Listings can be favourited/unfavourited
- Responsive navbar and pages
- Trix editor for dynamic listing editing and added functionality
- Users can Favourite/Unfavourite listings
- Address page for adding multiple order addresses
- Genre-select when uploading a listing is a drop-down menu
- Radio buttons for condition select
- File upload capability
- Most pages can only be viewed when user has signed up and logged in.

## Tech Stack:

This application runs on the following:

* Ruby On Rails v6
* CSS
* html
* Javascript
* Heroku
* Bootstrap for responsiveness and stlying
