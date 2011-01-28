gem 'formtastic', '1.2.3'

run 'bundle'

generate 'formtastic:install'

git :add => '.'
git :commit => '-m "Adding Formtastic"' 
