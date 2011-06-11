Pat's Fork Notes:
-----------

* Using Bundler to manage gem dependencies
* Using Clamp for CLI structure
* -d for selecting database, passed directly through to Rails
* Templates are now separated into small, distinct files
* -i for Interactive mode, user can choose any of the provided mini-templates

Nozomi: Faster Rails templating
===============================

My stack for new rails 3 projects.

Each change is committed to git in a single commit, so you can cherry pick the bits you like. Alternatively feel free to use the template as a base for your own version. 



rspec
-----

I don't remember the last time I used Test::Unit, does anybody actually use it anymore?

jquery
------

jQuery is today's default JS framework of choice

haml
----

I cringe when I see ERB, if your designer doesn't understand Haml, perhaps it's time for a new designer

sass
----

Now that SCSS is a superset of CSS there should be no arguments here

compass
-------

Useful for its library of CSS3 mixins and other useful utility functions, and a sprite builder called lemonade

grid-coordinates
----------------

Because blueprint and other compass css frameworks are too heavyweight

decent_exposure
---------------

For fashion-model thin controllers, so skinny they're barely there. (Did you know that Nozomi is also a Japanese fashion model?)

rspec-integration
-----------------

Because cucumber is pretty heavyweight and somewhat awkward compared to plain old rspec, (admit it non-devs rarely read or write your stories anyway)

capybara
--------

The best interface for driving any kind of integration specs with Selenium, Webrat, etc

jammit
------

There's no sense in sending more down the wire than you absolutely have to.



How to contribute
-----------------

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

Copyright
---------

Copyright (c) 2010 Josh Price. See LICENSE for details.

