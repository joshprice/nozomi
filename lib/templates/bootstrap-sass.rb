nozomi "Install Twitter bootstrap" do
  
  gem_group_add :assets do
    gem 'bootstrap-sass'
  end
  
  run "echo '//= require bootstrap' >> app/assets/stylesheets/application.css"
end

