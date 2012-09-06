nozomi "Install RSpec test framework" do

  gem_group_add :test do
    gem 'rspec-rails'
  end

  generate 'rspec:install'
end
