gem 'guard', :group => [:development, :test]
gem 'guard-rspec', :group => [:development, :test]
gem 'guard-bundler', :group => [:development, :test]
gem 'guard-rails', :group => [:development, :test]

run 'bundle'
run 'guard init'
run 'guard init bundler'
run 'guard init rspec'
run 'guard init rails'

git :add => '.'
git :commit => '-m "Adding Factory Girl"'
