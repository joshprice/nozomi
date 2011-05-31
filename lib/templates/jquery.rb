get "http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js",  "public/javascripts/jquery.js"
get "http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.5/jquery-ui.min.js", "public/javascripts/jquery-ui.js"
`curl https://github.com/rails/jquery-ujs/raw/master/src/rails.js -o public/javascripts/rails.js`

git :add => 'public/javascripts'
git :commit => '-m "Adding jQuery"'
