source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.5'
gem 'dotenv-rails', '~> 2.7.4', group: [:development, :test]

gem 'rails', '~> 6.0.2', '>= 6.0.2.2'
gem 'puma', '~> 4.3'

gem 'pg', '>= 0.18', '< 2.0'
gem 'oj'
gem 'oj_mimic_json'

gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'jbuilder', '~> 2.7'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

gem 'petrovich', '~> 1.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development, :test do
  gem 'rspec-rails', '~> 3.8'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers', '~> 4.1'
  gem 'faker', '>= 2.0.0'
  gem 'timecop'
  gem 'database_cleaner'
  gem 'fuubar', '>= 2.4.1'
  gem 'awesome_pry'
  gem 'simplecov', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
  gem 'better_errors'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
