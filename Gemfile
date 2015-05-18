source 'https://rubygems.org'
source 'https://rails-assets.org'

ruby '2.1.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'

# Eviromental vars
gem 'dotenv-rails', '~> 1.0.2', :groups => [:development, :test]

# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# rails-assets.org gems go here
gem 'rails-assets-bootstrap'
gem 'rails-assets-angular'
gem 'rails-assets-leaflet'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# asset uploading
gem 'carrierwave', '~> 0.10.0'
gem 'fog', '~> 1.26.0'
# gem 'rmagick', '~> 2.13.4'

# admin of models
gem 'rails_admin', '~> 0.6.6'

# better Heroku
gem 'rails_12factor', '~> 0.0.3'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'minitest'
  gem 'passenger'
  gem 'guard'
  gem 'guard-minitest'
  gem 'guard-passenger'
  gem "guard-bundler", "~> 2.0.0"
  gem 'rr', '~> 1.1.2'
  gem 'activerecord-nulldb-adapter'
  gem 'database_cleaner', '~> 1.3.0'
  gem 'travis', '~> 1.7.4'
end

