# Concerns example

### requirements
* Ruby 2.2.3
* Postgres
* bundler

### Setup
```
$ gem install bundler
$ bundle install
$ cp config/database.yml.dist config/database.yml # fill in your local db info
$ rake db:create db:migrate db:populate
$ rails s
```

### Local
* visit `/companies` or `/products`

### Run the specs
```
$ rspec spec/
```
