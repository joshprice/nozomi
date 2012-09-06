nozomi "Install Capistrano" do
  
  gem_group_add :deployment do
    gem 'capistrano'
    gem 'capistrano-ext'
    gem 'capistrano_colors'
  end
  
  # not sure why this is in rails standard actions but it is
  capify!
end