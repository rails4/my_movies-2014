## MyMovies – sample app which uses TMDB API

RSpec documentation:

* [rspec-rails](https://github.com/rspec/rspec-rails)
* [rspec-collection_matchers](https://github.com/rspec/rspec-collection_matchers)
* [rspec-expectations](https://github.com/rspec/rspec-expectations)

Other public APIs:

* [List of data APIs that require no server-side auth or private credentials](https://gist.github.com/wbzyl/9989677)
  (forked from [gist:4952991](https://gist.github.com/afeld/4952991)).

**TODO:**

Use [dotenv](https://github.com/bkeepers/dotenv) to load ENV variables.
See also [Environment Variables](https://shellycloud.com/documentation/environment_variables).


### fc -l -10

```sh
cat ~/.railsrc
  --skip-bundle
  --no-test-framework
  --skip-test-unit
rails new my_movies
cd my_movies/
# add rspec-rails, capybara, database_cleaner, and themoviedb gems to Gemfile
gem list rspec
bundle install
mv README.rdoc README.md
rails g rspec:install
```

### The Movie Database API

* [Movie & TV API Overview](https://www.themoviedb.org/documentation/api)
* [wrappers libraries](https://www.themoviedb.org/documentation/api/wrappers-libraries)
* [themoviedb](https://github.com/ahmetabdi/themoviedb) –
  a Ruby wrapper for the [The Movie Database API](http://docs.themoviedb.apiary.io/)

Example:

```sh
bin/tmdb
```

### fc -l -4

```sh
rails g controller Home index
rails g controller Search index
rails g controller Movies show
rails g controller People show
```

### Initializers

```ruby
Tmdb::Api.key(ENV['TMDB_API_KEY'])
Tmdb::Api.language("en")           # setup your default language
```

### Routing

```ruby
Rails.application.routes.draw do
  resources :movies, only: :show
  resources :people, only: :show

  match "search", to: "search#index", via: :get

  # You can have the root of your site routed with "root"
  root 'home#index'
end
```


## Things you may want to cover

This README would normally document whatever steps are necessary to
get the application up and running:

* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
