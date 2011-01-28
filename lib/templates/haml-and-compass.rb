gem 'haml', '3.0.25'
gem 'compass', '0.10.6'

bundle

git :add => 'Gemfile Gemfile.lock'
git :commit => '-m "Adding HAML, SASS and Compass"'
