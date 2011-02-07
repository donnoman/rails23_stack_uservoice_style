source 'http://rubygems.org'

gem 'rails', '2.3.10'

if File.exists?(recipes_path = "../cap-recipes")
  gem 'cap-recipes', :path => recipes_path, :require => false
else
  gem 'cap-recipes', :git => "git@github.com:donnoman/cap-recipes.git", :branch => "testing",  :require => false
end

gem "haml"
gem "haml-rails"
gem 'resque'
gem "rspec"
gem "rspec-rails"

group :development do
  gem "ruby-debug"
  gem "capistrano"
end


