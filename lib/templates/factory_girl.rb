nozomi "Install Factory Girl" do
  
  gem_group_add :test do
    gem 'factory_girl'
    gem 'factory_girl_rails'
  end

  run 'mkdir -p spec/factories'
end