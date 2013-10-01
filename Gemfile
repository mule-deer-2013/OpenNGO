source 'https://rubygems.org'
ruby "1.9.3"

gem 'rails', '3.2.13'

gem 'pg'

gem 'sunspot_rails'
gem 'sidekiq'

gem 'high_voltage'
gem 'simple_form'
gem "faker"

group :production do
  gem 'thin'  
end


group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'uglifier', '>= 1.0.3'
  gem 'compass-rails'
  gem 'zurb-foundation', '~> 4.0.0'
  gem 'modernizr-rails'
end

gem 'normalize-rails'
gem 'jquery-rails'



group :test, :development do
  gem "rspec-rails"
  gem "factory_girl_rails"
  
  gem 'better_errors'
  gem 'progress_bar'
  gem 'thin'
  gem 'sunspot_solr'
 
end


group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'launchy'
end

gem "debugger"
