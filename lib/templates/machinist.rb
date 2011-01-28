gem 'machinist', '2.0.0.beta2', :group => [:development, :test]

bundle

generate 'machinist:install'

git :add => '.'
git :commit => '-m "Adding Machinist"'
