gem 'fakeweb', '1.3.0', :group => [:test]

run 'bundle'

git :add => 'Gemfile Gemfile.lock'
git :commit => '-m "Adding FakeWeb"'
