nozomi "Install Guard utilities (rspec, bundler, rails)" do
  
  gem_group_add :development do
    gem 'guard'
    gem 'guard-rspec'
    gem 'guard-bundler'
    gem 'guard-rails'
  end

  be_run 'guard init'
  be_run 'guard init bundler'
  be_run 'guard init rspec'
  be_run 'guard init rails'
  
end