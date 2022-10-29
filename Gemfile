source "https://rubygems.org"

ruby "3.1.2"

gem "rails", "~> 7.0.4"

gem "sprockets-rails"

gem "pg", "~> 1.1"

gem "puma", "~> 5.0"

gem "importmap-rails"







group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"


end


group :development do
  gem "bullet"
  gem "dotenv-rails"
end

group :development, :test do
  gem "pry-rails"
  gem "pry-byebug"
  gem "rspec-rails"
  gem "coderay"
  gem "rubocop"
end

group :test do
  gem "capybara"
  gem "factory_bot_rails"
  gem "rspec_junit_formatter"
  gem "selenium-webdriver"
end

group :production do
  gem "rack-attack"
end
