# these methods should be in a helper module but not sure how to require nozomi back in the temp nozomi template
# perhaps a builder is a better option than a template since it's all code? (see http://pivotallabs.com/users/mbarinek/blog/articles/1437-rails-3-application-builders and https://raw.github.com/gist/611035)
def template(name)
  File.join TemplatePath, "#{name}.rb"
end

def nozomi(message, &block)
  message = "[Nozomi] #{message}"
  say message, :yellow
  commit message, &block
  say "#{message}... DONE\n", :yellow
end

def commit(message, &block)
  yield if block
  git :add => '.'
  git :commit => "-m '#{message}'"
end

def be_run(command)
  run "bundle exec #{command}"
end

def gem_group_add(group, &block)
  gem_group group, &block
  bundle_install
end

def bundle_install(options={})
  local = "--local" unless options[:force]
  run "bundle install --quiet #{local}"
end

# nozomi core tasks start here

nozomi "Initial commit" do
  git :init
  
  # force a full remote bundle install so Gemfile is up to date
  # this also allows us to prime the cache so we can use the --local option
  bundle_install :force => true
end

nozomi "Replace landing page and images" do 
  git :rm => 'public/index.html public/favicon.ico app/assets/images/rails.png'
  create_file "public/index.html", <<-HTML
    <h1>Welcome to Nozomi</h1>
    <p>Your app is now ready to customise</p>
    <p>Here's exactly what Nozomi did to create this project:</p>
    <pre>
    #{`git log`}
    </pre>
  HTML
end

nozomi "Add example database.yml" do
  run 'cp config/database.yml config/database.example.yml'
end

nozomi "Create README in markdown" do
  git :rm => 'README.rdoc'
  create_file "README.markdown", <<-MARKDOWN
    README
    ======

    TODO
    ----
    
    Nozomi says: "Put your application documentation here"
  MARKDOWN
end

