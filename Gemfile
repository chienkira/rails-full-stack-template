source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 2.6.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4'
# Use Puma as the app server
gem 'puma', '~> 4.3.9'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Logging
gem 'lograge'
gem 'logstash-event'
# Load environment variables from Dotenv files
gem 'dotenv-rails'
# Encrypt/decrypt/edit your rails Dotenv files
gem 'dotenv_sekrets'
# Background job
gem 'sidekiq'
gem 'sidekiq-cron'
# More readable enumerated attributes
gem 'enumerize'
# SEO-friendly meta tags
gem 'meta-tags'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :production do
  # Error tracking
  gem 'sentry-raven'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Test
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'faker_japanese'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '>= 4.0.0.beta4'
  gem 'shoulda-matchers'
  gem 'webmock'
  # Pretty prints Ruby objects
  gem 'awesome_print'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Code checker
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  # Help to kill N+1 queries
  gem 'bullet'
end
