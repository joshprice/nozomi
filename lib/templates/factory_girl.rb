gem 'factory_girl', :group => [:development, :test]
gem 'factory_girl_rails', :group => [:development, :test]

run 'bundle'
run 'mkdir -p spec/factories'
generate 'machinist:install'

git :add => '.'
git :commit => '-m "Adding Factory Girl"'
