# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  - 5.2

* System dependencies
  - ruby 2.4.0 >

* Configuration

* Database creation
  - rails db:create db:migrate

* Database initialization
  - rails db:seed


* Services (job queues, cache servers, search engines, etc.)
  - EventMachine
  - Puma server

* Deployment instructions
  ### development
    - rails s
    - rails runner faye_websocket.rb
  
  ### production
    - rails assets:precompile
    - RAILS_ENV=production rails s &
    - RAILS_ENV=production rails runner faye_websocket.rb &

* ...
