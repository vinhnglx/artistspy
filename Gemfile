source 'https://rubygems.org'

gem 'rails', '~> 5.1.0.beta1'

### Database
gem 'pg', '~> 0.18'

### App server
gem 'puma', '~> 3.7'

### Handling Cross-origin Resource Sharing (CORS)
gem 'rack-cors'

### Environment variables management
gem 'figaro'

### JSON generation
gem 'active_model_serializers', '~> 0.10.0'

### Coding style
gem 'brakeman'
gem 'bullet'
gem 'rails_best_practices'
gem 'rubocop'

### Travis
gem 'travis'

### Coverall
gem 'coveralls', require: false

### HTTP Connect
gem 'httparty'

group :development, :test do
  ### Debugging
  gem 'awesome_print'
  gem 'byebug'

  ### Anotate schema
  gem 'annotate'

  ### Unit test
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

group :test do
  gem 'database_cleaner'
  gem 'simplecov'
  gem 'webmock'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
end
