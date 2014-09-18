source 'https://rubygems.org'
# ruby version
ruby '2.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'

# Development and Test tools
# Use sqlite3 as the database for Active Record
# Use Rspec as Test-Driven Development, Domain Driven Design, and Acceptance Test-Driven Planning
group :development, :test do
  gem 'sqlite3', '1.3.8'
  gem 'rspec-rails', '2.13.1'
end

# Test tools
# Selenium-WebDriver is a tool for writing automated tests of websites
# Capybara is an integration testing tool for rack based web applications. Capybara is needed by selenium-webdriver
group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
end

# Use SCSS for stylesheets
gem 'sass-rails', '4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.1.1'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.0.1'
# Use jquery as the JavaScript library
gem 'jquery-rails', '3.0.4'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '1.1.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '1.0.2'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
gem 'bcrypt', '3.1.7'

# Production tools
# use pg as interface to the PostgreSQL RDBMS
# use rails_12factor to run app easier
group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end
