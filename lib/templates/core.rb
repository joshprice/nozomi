def template(name)
  File.join TemplatePath, "#{name}.rb"
end

apply template('git')

git :rm => 'public/index.html'
git :rm => 'public/favicon.ico'
git :rm => 'public/images/rails.png'
git :commit => '-m "Removing placeholder index and images"'

run 'cp config/database.yml config/database.example.yml'
git :add => 'config/database.example.yml'
git :commit => '-m "Adding example database.yml"'

git :rm => 'README'
run 'echo > README.markdown'
git :add => 'README.markdown'
git :commit => '-m "Switching to Markdown for the README"'

