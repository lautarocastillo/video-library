source 'https://rubygems.org'

ruby File.read('.ruby-version').strip

gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'redis', '~> 4.1.3'

group :development, :test do
  gem 'byebug', '~> 11.1'
  gem 'faker', '~> 2.10', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec-rails', '~> 4.0.0.beta4'
  gem 'factory_bot_rails', '~> 5.1.1'
  gem 'simplecov', require: false
end
