# Artistspy

[![Build Status](https://travis-ci.org/vinhnglx/artspy.svg?branch=develop)](https://travis-ci.org/vinhnglx/artspy)
[![Coverage Status](https://coveralls.io/repos/github/vinhnglx/artspy/badge.svg?branch=develop)](https://coveralls.io/github/vinhnglx/artspy?branch=develop)

Artistspy is a simple API application. Here are few features that the application  supports:

- Returns the artists and re-format the results
- Provide a default artist value for the root url
- Fetch an artist and save as a favourite

## Getting Started

### How to run

- Install ruby version 2.3.1

- Clone and setup gem dependencies

```
  gem install bundler
  bundle install
```

- Setup environment variables

```
  cp config/application.yml.sample config/application.yml
```

```
# config/application.yml

development:
  api_uri: 'api.spotify.com'
  api_limit: 50
  artist_endpoint: '/v1/search?type=artist'
```

- Setup database

```
  rake db:create
  rake db:migrate
```

- Run the server by `rails server` command.

## API documentation

The API documentation available on: http://docs.artistspy.apiary.io/

## Live example:

#### The API available on Heroku

- Access this link: https://artistspy.herokuapp.com/ to see default value of an artist.

- To see APIs please access this link: https://artistspy.herokuapp.com/api/v1

#### The API available to access on Postman

You can using [Postman](https://www.getpostman.com/) to interact with Artistspy API. Please import this collection to your Postman: https://www.getpostman.com/collections/611de9fd2f8cbb491b30
