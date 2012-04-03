get "http://code.jquery.com/jquery-1.7.1.js",  "vendor/assets/javascripts/jquery.js"
get "http://code.jquery.com/ui/1.8.18/jquery-ui.js", "vendor/assets/javascripts/jquery-ui.js"

git :add => 'vendor/assets/javascripts'
git :commit => '-m "Adding jQuery"'
