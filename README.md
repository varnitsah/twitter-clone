# Ruby on Rails Tutorial sample application

The application will attempt to make a limited functional clone of twitter's tweet system.

# Disclaimer

I claim no ownership of the idea behind the functionality of this app. It may not be used for any commercial purposes in any condition.


## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

For more information, see the
[*Ruby on Rails Tutorial* book](http://www.railstutorial.org/book).