Website
---

This is the code that powers the website and backend services of the Unicraft Network, the Minecraft server home of many Chilean universities, in alliance with ElMedievo.

Install the following services and configure them to run on their default ports:
  * [Ruby 2.6.5](https://www.ruby-lang.org/en/).
      * OS X: [RVM](http://rvm.io) is recommended over the default OS X Ruby. Here's a one-liner: `\curl -sSL https://get.rvm.io | bash -s stable --ruby`.
  * [MySQL 14.14](https://www.mysql.com/) or later.
  * [NodeJS 10.20.1](https://linuxize.com/post/how-to-install-node-js-on-ubuntu-18.04/) or later.
  * [Yarn 1.22.4](https://linuxize.com/post/how-to-install-yarn-on-ubuntu-18-04/) or later. Website was built using rails version 6.0.2.2, so you will require Yarn for webpacker to function properly.

Ensure bundler is installed: `gem install bundle`.

Run `bundle install` to download and install dependencies.

* If installing the mysql2 gem through bundler gives you problems, consider installing libmysqlclient-dev using the following shell command:
  * `sudo apt-get install libmysqlclient-dev` and then run `bundle install` again.

## Database setup
  Start MySQL with default settings.
  
  Then, create a `database.yml` file wtihin the [`config/`](https://github.com/ElMedievo-UdeC/Website/tree/master/config) directory, with the following content in it:

```
default: &default
adapter: mysql2
encoding: utf8
username: MYSQL USERNAME
password: USER PASSWORD
host: 127.0.0.1
port: 3306

development:
  <<: *default
  database: web_development

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: web_test

production:
  <<: *default
  database: web_development
```

Replace `MYSQL USERNAME` and `USER PASSWORD` for the corresponding MySQL credentials on your end. 
  
Run the following shell commands from within the Website repo, in order to create the database & complete its migration:

    rake db:create db:migrate
    RAILS_ENV=production rake db:create db:migrate db:seed

## Environments

Run the following shell commands from the Website repo to start all the backend services in the different environments.

### Development

    rails server -b 0.0.0.0 -p 80 -e development

### Production

    rake secret
    export SECRET_KEY_BASE=output-of-rake-secret
    rake assets:precompile RAILS_ENV=production
    rails server -b 0.0.0.0 -p 80 -e production
