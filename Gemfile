source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'barby',  '~> 0.6.2'
gem 'bootstrap', '~> 4.0.0'
gem 'bootstrap-will_paginate', '1.0.0'
gem 'chunky_png'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'google_drive'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'pg', '>= 0.18', '< 2.0'
gem 'pry'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.6'
gem 'ransack'
gem 'reek'
gem 'rqrcode','~> 0.4.2'
gem 'rubocop'
gem 'sass-rails', '~> 5.0'
gem 'scss_lint', require: false
gem 'therubyracer'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'will_paginate', '3.1.5'




group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :test do
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end



gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
