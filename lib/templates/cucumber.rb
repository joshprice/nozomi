gem 'capybara', :group => [:test]
gem 'cucumber-rails', :group => [:development, :test]
gem 'launchy', :group => [:test]

run 'bundle'

generate 'cucumber:install --capybara'

git :add => '.'
git :commit => '-m "Adding Cucumber"'
