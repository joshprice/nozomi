gem 'compass-rails', :group => [:asset]

run 'bundle'

git :add => 'Gemfile Gemfile.lock'
git :commit => '-m "Adding Compass"'
