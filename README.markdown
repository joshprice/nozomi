Nozomi: Faster Rails templating
===============================

My stack for new rails 3 projects.

Each change is committed to git in a single commit, so you can cherry pick the bits you like. Alternatively feel free to use the template as a base for your own version. 

Usage
-----

    gem install nozomi
    nozomi projectname

args
----

* -d for selecting database, passed directly through to Rails
* -i for Interactive mode, user can choose any of the provided mini-templates


bundler
-------

Easy gem management.

guard
-----

Only need one terminal window open to run rspec, spork, rails server, and automatically reload bundler etc.

rspec
-----

I don't remember the last time I used Test::Unit, does anybody actually use it anymore?

jquery
------

jQuery is today's default JS framework of choice.


haml
----

I cringe when I see ERB, if your designer doesn't understand Haml, perhaps it's time for a new designer.

sass
----

Now that SCSS is a superset of CSS there should be no arguments here.

bootstrap-sass
--------------

Awesome out-of-the-box styling using the Twitter-Bootstrap suite, done in sass.

decent_exposure
---------------

For fashion-model thin controllers, so skinny they're barely there. (Did you know that Nozomi is also a Japanese fashion model?)

capybara
--------

The best interface for driving any kind of integration specs with Selenium, Webrat, etc


Installing the gem locally for testing
======================================

You will probably want to uninstall any existing nozomi gem:

    gem uninstall nozomi

Now run:

    rake install


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

