gem 'capybara', '0.4.1.1', :group => [:test]
gem 'cucumber-rails', '0.4.0.beta.1', :group => [:development, :test]
gem 'launchy', :group => [:test]

run 'bundle'

generate 'cucumber:install --capybara'

git :add => '.'
git :commit => '-m "Adding Cucumber"'
