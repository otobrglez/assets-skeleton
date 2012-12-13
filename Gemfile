source 'https://rubygems.org'

gem 'rails', '3.2.9'
gem 'jquery-rails'
gem 'oj'

# Redis
gem 'redis'
gem 'connection_pool'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'handlebars_assets'
end

group :test, :development do
	gem 'rspec'
	gem 'rspec-rails'
	gem 'guard'
  gem 'guard-spork'
  gem 'guard-rspec'
	gem 'guard-bundler'
  gem 'guard-livereload'
  gem 'rb-fsevent', '~> 0.9.1' # This gem can couse problems on non OSX machines!
  gem 'factory_girl'
  gem 'jasmine'
  gem 'jasmine-spec-extras'
  gem 'guard-jasmine-headless-webkit', git: 'git://github.com/johnbintz/guard-jasmine-headless-webkit.git'
  gem 'database_cleaner'
end
