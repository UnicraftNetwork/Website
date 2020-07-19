# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'babosa', '~> 1.0', '>= 1.0.3'                              # Slugs
gem 'bootsnap', '>= 1.4.2', require: false                      # Optimize and cache expensive computations
gem 'devise', '~> 4.7', '>= 4.7.2'                              # Authentication
gem 'gemoji', '~> 3.0', '>= 3.0.1'                              # Emojis
gem 'jbuilder', '~> 2.7'                                        # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'kaminari', '~> 1.2.1'                                      # Pagination
gem 'kaminari-i18n', '~> 0.5.0'                                 # Pagination i18n
gem 'mysql2', '~> 0.5.3'                                        # MySQL, as the database for Active Record
gem 'puma', '~> 4.1'                                            # Puma, as the app server
gem 'rails', '~> 6.0.2', '>= 6.0.2.2'                           # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails-i18n', '~> 6.0'                                      # i18n
gem 'sanitize', '~> 5.2', '>= 5.2.1'                            # HTML & CSS Sanitizer
gem 'sass-rails', '>= 6'                                        # SCSS, for stylesheets
gem 'turbolinks', '~> 5'                                        # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'webpacker', '~> 4.0'                                       # Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker

gem 'thredded', '~> 0.16.16'

gem 'tzinfo-data',                                              # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
    platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'font-awesome-sass', '~> 5.13'                              # Up-to-date font-awesome icons
gem 'minecraft-data', '~> 0.2.0'                                # Retrieves up-to-date, minecraft player profiles's information

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]           # Call 'byebug' anywhere in the code to stop execution and get a debugger console
end

group :development do
  gem 'web-console', '>= 3.3.0'                                 # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
end

group :test do
  gem 'capybara', '>= 2.15'                                     # Adds support for Capybara system testing and selenium driver
  gem 'selenium-webdriver'
  gem 'webdrivers'                                              # Easy installation and use of web drivers to run system tests with browsers
end
