gem 'capistrano'
gem 'capistrano-ext'
gem 'capistrano_colors'

run 'bundle'
run 'capify'

git :add => '.'
git :commit => '-m "Adding Capistrano"'
