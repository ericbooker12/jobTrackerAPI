source 'https://rubygems.org'

git_source(:github) do |repo_name|
	repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
	"https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'
gem 'puma', '~> 3.0'
gem 'faker', github: 'stympy/faker'
gem 'rack-cors', :require => 'rack/cors'
gem 'active_model_serializers'

group :development, :test do
	gem 'sqlite3'
	# Call 'byebug' anywhere in the code to stop execution and get a debugger console
	gem 'byebug', platform: :mri
	gem 'rspec-rails', '~> 3.5'
end

group :development do
	gem 'listen', '~> 3.0.5'
	# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
	gem 'spring'
	gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
	gem 'factory_girl_rails', '~> 4.0'
	gem 'shoulda-matchers', '~> 3.1'
	gem 'database_cleaner'
end

group :production do
	gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
