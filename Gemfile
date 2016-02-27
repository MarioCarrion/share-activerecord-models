source 'https://rubygems.org'

ruby '2.2.0'

gemspec

group :test, :development do
  gem 'pry'
  gem 'pry-nav'
  gem 'rubocop',                      require: false
  gem 'rubocop-checkstyle_formatter', require: false
  gem 'rubocop-rspec',                require: false
  gem 'pronto',                       require: false
  gem 'pronto-rubocop',               require: false
end

group :test do
  gem 'database_cleaner'
  gem 'factory_girl'
  gem 'rake'
  gem 'redis'
  gem 'rspec'
  gem 'shoulda-matchers'
  gem 'simplecov',         require: false
  gem 'simplecov-rcov',    require: false
  gem 'simplecov-summary', require: false
end
