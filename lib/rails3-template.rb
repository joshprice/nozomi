# Nozomi: An opinionated Rails template
#
# Assumes you skipped the Gemfile, test/unit and prototype JS which is done through options like this:
#
#   rails new myapp -m rails3-template.rb --skip-gemfile --skip-test-unit --skip-prototype
#
# Written on a nozomi shinkansen so you know it's awesome

def git_commit(message, &block)
  yield if block
  git :add => '.'
  git :commit => "-m'Nozomi: #{message}'"
end

# init the repo and commit the rails generated files to git
def initial_git_commit(message)
  git :init
  git_commit message
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
    run 'wget http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js'
  end
end

def add_gemfile
  file "Gemfile", <<-RUBY
# TODO shouldn't this be gemcutter?
source 'http://rubygems.org'

gem 'rails', '3.0.0'

# view
gem 'haml'
gem 'compass'

# persistence
gem 'sqlite3-ruby', :require => 'sqlite3'

# deployment
gem 'capistrano'

group :development, :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'webrat'
  gem 'ruby-debug'
  gem 'awesome_print', :require => 'ap'
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

initial_git_commit "Initial commit from rails"
git_commit("Remove public files") { remove_public_files }
git_commit("Bundler gemfile")     { add_gemfile }
git_commit("Copy database.yml")   { copy_db_yml }
git_commit("Install jQuery")      { install_jquery }

puts <<-MSG
Nozomi Rails template complete! Your next steps are:

  1. Edit config/database.yml
  2. rake db:create:all
  3. rake db:migrate (so we can get a db/schema.rb)
  4. Get to work!
MSG

