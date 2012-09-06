nozomi "Instructions" do

  create_file "public/index.html", <<-HTML
    <h1>Welcome to Nozomi</h1>
    <p>Your app is now ready to customise</p>
    <p>Here's exactly what Nozomi did to create this project:</p>
    <pre>
    #{`git log`}
    </pre>
  HTML

  log :enjoy!, <<-MSG
  Nozomi Rails template complete! Your next steps are:

    1. Edit config/database.yml to match your database config
    2. rake db:create:all (to create all databases)
    3. rake db:migrate (to create a db/schema.rb)
    4. Start building your app!
  MSG
  
end