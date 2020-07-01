# ![RealWorld Example App](logo.png)

> ### Ruby on Rails codebase containing real world examples (CRUD, auth, advanced patterns, etc) that adheres to the [RealWorld](https://github.com/gothinkster/realworld) spec and API.


### [Demo](https://github.com/gothinkster/realworld)&nbsp;&nbsp;&nbsp;&nbsp;[RealWorld](https://github.com/gothinkster/realworld)


This codebase was created to demonstrate a fully fledged fullstack application built with **[Ruby on Rails](https://rubyonrails.org/)** including CRUD operations, authentication, routing, pagination, and more.

We've gone to great lengths to adhere to the **Ruby on Rails** community styleguides & best practices.

This implementation diverges from the spec in the following ways:

- As a fullstack implementation, there is no separation between the frontend and backend, and this implementation cannot be combined with others. For more details see the [RealWorld](https://github.com/gothinkster/realworld) repo.
- Application URLs are not prefixed with `/#/`.
- Articles and Comments are composed with the Trix rich text editor, rather than markdown.
- Comments and Likes should show up live between multiple browsers, as I wanted an excuse to demonstrate Action Cable (WebSockets).

# How it works

This implementation aims to be a minimal-dependency, "stock" Ruby on Rails app. As such, we're using turbolinks for more responsive page loads, Stimulus JS and Action Cable for interactivity, and Trix for rich text editing.

However, on top of the generated base we are also using:
- Devise for authentication
- TODO probably something extra for pagination

# Getting started

This application was written against Ruby 2.6, and Rails 6.0.

By default, it uses a local SQLite3 database, update `config/database.yml` if you want MySQL or Postgres.

To run locally:

```
bundle install
yarn install
rails db:migrate
rails server
```


# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
