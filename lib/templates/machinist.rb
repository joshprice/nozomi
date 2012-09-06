nozomi "Install Machinist" do
  
  gem_group_add :test do
    gem 'machinist'
  end
  
  generate 'machinist:install'
end