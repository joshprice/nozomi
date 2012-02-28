gem 'bootstrap-sass', :group => [:assets]

run 'bundle'
run "echo '//= require bootstrap' >> app/assets/stylesheets/application.css"
generate 'machinist:install'

git :add => '.'
git :commit => '-m "Adding Bootstrap"'

