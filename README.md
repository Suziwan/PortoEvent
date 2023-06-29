# PortoEvent

Eventbrite-like website project for the city of Porto. It is a dynamic website (back-end and front-end), but it has not been published on the internet.

## Languages and tools
This project used Ruby on Rails, PostgreSQL database with Active Record and HTML/CSS/Bootstrap.  

## Database diagram

<img src=/Diagram_PortoEvent.png width="600">

## Start the program

Install the gems and versions:  
`$ bundle install`  

Precompile assets (images and CSS styling):  
`$ rails assets:precompile`  

Create, migrate and fill up the database using this command:  
`$ rails db:create db:migrate db:seed`  

Launch the server:  
`$ rails s`  

## Website Overview

<kbd>
  <img src=/PortoEvent_Home1.png width="100%">
</kbd>
&nbsp

<kbd>
  <img src=/PortoEvent_Home2.png width="100%">
</kbd>
&nbsp

<kbd>
  <img src=/PortoEvent_CreateEvent.png width="100%">
</kbd>
&nbsp

<kbd>
  <img src=/PortoEvent_SignUp.png width="100%">
</kbd>
&nbsp