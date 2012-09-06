nozomi "Install Cucumber with Capybara" do
  
  gem_group_add :test do
    gem 'cucumber-rails'
    gem 'capybara'
    gem 'launchy'
  end

  bundle_install
  generate 'cucumber:install --capybara'
  
end