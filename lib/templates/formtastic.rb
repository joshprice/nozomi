gem 'formtastic'

run 'bundle'

generate 'formtastic:install'

git :add => '.'
git :commit => '-m "Adding Formtastic"' 
