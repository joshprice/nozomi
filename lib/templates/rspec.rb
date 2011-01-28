gem 'rspec-rails', '2.4.1', :group => [:development, :test]

run 'bundle'

generate 'rspec:install'

git :add => '.'
git :commit => '-m "Adding RSpec"'
