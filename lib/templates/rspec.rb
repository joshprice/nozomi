nozomi "Install RSpec test framework" do

  gem_group_add :test do
    gem 'rspec-rails'
  end

  bundle_install
  generate 'rspec:install'
end
