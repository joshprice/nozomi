#
# Assumes you skipped the Gemfile, test/unit and prototype JS which is done through options like this:
#
#   rails new myapp -m rails3-template.rb --skip-gemfile --skip-test-unit --skip-prototype
#
#

def git_commit(message)
  git :add => '.'
  git :commit => "-am'#{message}'"
end

# init the repo and commit the rails generated files to git
def initial_git_commit
  git :init
  git_commit "Initial commit"
end

def copy_db_yml
  run 'cp config/database.yml config/database.example.yml'
end

def remove_public_files
  %w{index.html favicon.ico}.each do |f|
    run "rm public/#{f}"
  end
end

def install_jquery
  run 'mkdir -p public/javascripts/vendor'
  inside('public/javascripts/vendor') do
    run 'wget http://jqueryjs.googlecode.com/files/jquery-1.4.2.min.js'
  end
end

def add_gemfile
  file "Gemfile", <<-RUBY
    source 'http://rubygems.org'

    gem 'rails', '3.0.0'
    gem 'sqlite3-ruby', :require => 'sqlite3'
    gem 'haml'
    gem 'compass'
    gem 'capistrano'

    group :development, :test do
      gem 'rspec'
      gem 'rspec-rails'
      gem 'webrat'
      gem 'ruby-debug'
      gem 'awesome_print', :lib => 'ap'
      gem "wirble"
      gem "hirb"
    end
  RUBY
end

# generate 'rspec'
# run "haml --rails #{run "pwd"}"
# 
# 
#  
# 
# run 'echo TODO > README'
# run 'touch tmp/.gitignore log/.gitignore vendor/.gitignore'
# run %{find . -type d -empty | grep -v "vendor" | grep -v ".git" | grep -v "tmp" | xargs -I xxx touch xxx/.gitignore}
# 

initial_git_commit
add_gemfile
copy_db_yml
remove_public_files
#install_jquery
git_commit "Initial commit with changes from Rails 3 template"

puts <<-MSG
Rails template complete! Your next steps are:

  1. Edit config/database.yml
  2. rake db:create:all
  3. rake db:migrate (so we can get a db/schema.rb)
  4. Get to work!
MSG

