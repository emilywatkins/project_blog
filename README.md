# Portfolio site

#### Rails Unit, exercise in Ruby, Rails, Routing, Authorization and Authentication, PostgreSQL - 4.27.18

#### Emily Watkins

## Description

This is a personal portfolio website. It includes information about me, contact, interests, and posts with featured projects.

## Setup

rails 5.2.0
ruby 2.4.1

Clone this repository:

`$ bundle install`
`$ rails s`

Create database on local computer

`$ rails db:create`

Navigate to http://localhost:3000/

## Strengths exercise

__Strengths__
* using my brain
* finding creative ways to solve a problem
* investing time into learning the system or tool to understand its strengths and weaknesses i.e. what it could/should be used for and what it shouldn't.
* finding more efficient solutions without sacrificing quality of solution
* being creative within rigid structure
* creating processes with built-in checks and balances.
* parallel parking
* having a good attitude
* practicing growth mindset every day
* seeking to understand perspectives before making assumptions based on my perspective
* doing my best with whatever is on my plate, regardless of whether or not it's my ideal place / time / situation
* pretending i'm not as introverted as i actually am

__Skills__
* cooking
* playing Bach
* whistling
* following the rules

__Interests__
* learning something new
* getting better at whatever i'm doing at any given time
* reading books

## Current functionality
* Admin login - Devise
* Admin functionality only shown to admin, regardless if non-admin site user is logged in or not
* Welcome homepage with navigation to projects page
* Projects page has link to detailed project content

## Future functionality
* Integration and unit testing
* Seed database
* Add projects to show off
* Explore RailsAdmin for admin functionality instead of Devise since there should only be one admin and users should not need to log in to view content.

## Technologies Used

* Ruby
* Rails
* PostgreSQL
* Capybara, FactoryBot, (soon SimpleCov) and rspec for upcoming testing
* Devise for admin auth and auth

## License

Licensed under the MIT License.

Copyright (c) 2018 Emily Watkins
