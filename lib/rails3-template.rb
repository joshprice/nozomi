# Nozomi: An opinionated Rails template
#
# Assumes you skipped the Gemfile, test/unit and prototype JS which is done through options like this:
#
#   rails new myapp -m rails3-template.rb --skip-gemfile --skip-test-unit --skip-prototype
#
# Written on a nozomi at 300km/h (the fastest of all the Japanese shinkansen trains) so you know it's awesome


GEMS = %w(haml compass formtastic decent_exposure)
TEST_GEMS = %w(rspec rspec-rails capybara factory_girl_rails)

def gem_def(gem_name)
  "gem '#{gem_name}'"
end

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
    git :rm => "public/#{f}"
  end
end

def add_readme
  git :rm =>  "README"
  file "README.markdown", <<-MARKDOWN
README
======

TODO fill out your application documentation
  MARKDOWN
end

def add_landing_page
  file "public/index.html", <<-HAML
<h1>Welcome to Nozomi</h1>
<p>Your app is now ready to customise</p>
<p>Here's exactly what Nozomi did to create this project:</p>
<pre>
#{`git log`}
</pre>
  HAML
end

def install_jquery
  filename = "jquery-1.4.2.min.js"
  url = "http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"
  run 'mkdir -p public/javascripts/vendor'
  inside('public/javascripts/vendor') do
    run "wget --output-document=#{filename} #{url}"
  end
end

def add_gemfile
  file "Gemfile", <<-RUBY
source 'http://gemcutter.org'

gem 'rails', '3.2.0'
#{GEMS.map{ |gem| gem_def(gem) }.join("\n")}

# persistence
gem 'sqlite3-ruby', :require => 'sqlite3'

group :development, :test do
  #{TEST_GEMS.map{ |gem| gem_def(gem) }.join("\n  ")}
  
  # gem 'ruby-debug'
  # gem 'awesome_print', :require => 'ap'
  # gem 'wirble'
  # gem 'hirb'
end
  RUBY
end

def install_rspec
  generate 'rspec:install'
end

begin
  initial_git_commit "Initial commit from rails"
  #git_commit("Extend .gitignore ")    {               }
  git_commit("Remove public files")   { remove_public_files        }
  git_commit("Readme")                { add_readme                 }
  git_commit("Bundler gemfile")       { add_gemfile                }
  git_commit("Bundle install")        { run 'bundle install'       }
  git_commit("Copy database.yml")     { copy_db_yml                }
  git_commit("Install jQuery")        { install_jquery             }
  git_commit("Install rspec")         { install_rspec              }
  git_commit("Install sass")          { run 'compass init rails .' }
  git_commit("Friendly landing page") { add_landing_page           }

  # run 'rails server &'
  # run 'open http://localhost:3000'
  
  puts <<-MSG
  Nozomi Rails template complete! Your next steps are:

    1. Edit config/database.yml to match your database config
    2. rake db:create:all (to create all databases)
    3. rake db:migrate (to create a db/schema.rb)
    4. Start building your app!
  MSG
rescue Exception => e
  puts "\n#{e.message}"
end