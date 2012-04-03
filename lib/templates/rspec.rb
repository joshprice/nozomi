gem 'rspec-rails', :group => [:development, :test]

run 'bundle'

generate 'rspec:install'

git :add => '.'
git :commit => '-m "Adding RSpec"'
