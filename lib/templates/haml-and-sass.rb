gem 'haml-rails', :group => [:asset]
gem 'sass-rails'

run 'bundle'

git :add => 'Gemfile Gemfile.lock'
git :commit => '-m "Adding HAML, SASS"'
