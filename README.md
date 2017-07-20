# Photo Book

#### _Nicky Santamaria and James Higgins_

## Description

An app to showcase photos by users with a reviews feature.

## Technologies used / Prerequisites

* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)
* [PostgreSQL](https://www.postgresql.org/docs/9.2/static/app-psql.html)
* [Git](https://git-scm.com/)

## Installation

* `$ git clone https://github.com/nrsantamaria/photo-book`
* `$ cd photo-book`

## PostgreSQL Integration
* `$ postgres`
* `$ rake db:create`
* `$ rake db:migrate db:test:prepare`

## Seed database
* `$ rake db:seed`

## Development server

Run `rails s` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.

## Specifications

| Behavior |  Input   |  Output  |
|----------|:--------:|:--------:|
|User adds a image to database.|Name => 'Picture', Description => 'Fancy picture.', | Name: Picture, Description: Fancy Picture
|One-to-many database relationship. |User adds a review to a image.|Review is listed under a specific image.|
|Admin user can delete reviews|Author: Mean Guy, Content => 'Ugly Picture', Delete Comment |Reviews: None|
|User deletes image| Name: Picture, Delete Image|User is taken to profile|
|Validates all fields are filled out.|Validate: name, cost, description, file|If description blank => Error: Must fill out description|

## Known Bugs
* N/A

## License

*This software is licensed under MIT license.*

```
Copyright (c) 2017 Nicky Santamaria
```
