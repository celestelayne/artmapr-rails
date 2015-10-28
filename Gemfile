source 'https://rubygems.org'
# tell which version of ruby to use

group :production do
	# Use postgresql as the database for Active Record
	gem 'pg'
	# modifies the way Rails works to suit Heroku
	gem 'rails_12factor'
end

# Gems used only for assets and not required
# in production environments by default.

	# Use CoffeeScript for .coffee assets and views
	gem 'coffee-rails', '~> 4.1.0'
	# Use SCSS for stylesheets
	gem 'sass-rails', '~> 5.0'
	# Use Uglifier as compressor for JavaScript assets
	gem 'uglifier', '>= 1.3.0'
	# https://github.com/twbs/bootstrap-sass
	gem 'bootstrap-sass', '~> 3.3.5'
	# Automatically adds the proper vendor prefixes to your CSS when compiled
	gem 'autoprefixer-rails'

# https://github.com/plataformatec/simple_form
gem 'simple_form'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#Annotate failed without this
gem 'responders', '~> 2.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-theme'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'annotate'
  # gets database to work on Heroku, which uses a different database
  gem 'sqlite3'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring is a Rails application preloader. It speeds up development by keeping your application running in the background so you don't need to boot it every time you run a test, rake task or migration. Read more: https://github.com/rails/spring
  gem 'spring'
	# Rspec allows us to write rests for rails
	gem 'rspec-rails'
	gem 'capybara', '~> 2.5'
	gem 'shoulda-matchers', '~> 3.0'

end
