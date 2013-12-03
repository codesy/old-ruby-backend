source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use Slim for templating
gem 'slim', '~> 2.0.1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use Devise for authentication
gem 'devise'

# Use GitHub's OmniAuth provider
gem 'omniauth'
gem 'omniauth-github'

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use thin as the app server
gem 'thin'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'meta_request', group: :development

group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end

group :test do
  gem 'guard-rspec'
  gem 'factory_girl_rails'
  gem 'database_cleaner', '~> 1.2.0'
  gem 'shoulda'
  gem 'capybara'
  gem 'launchy'
  gem 'coveralls', require: false
end
