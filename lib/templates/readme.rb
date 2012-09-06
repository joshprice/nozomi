nozomi "Instructions" do

  create_file "public/index.html", <<-HTML
    <h1>Welcome to Nozomi</h1>
    <p>Your app is now ready to customise</p>
    <p>Here's exactly what Nozomi did to create this project:</p>
    <pre>
    #{`git log --oneline`}
    </pre>
  HTML

end