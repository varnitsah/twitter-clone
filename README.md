# Ruby on Rails Twitter clone(On going)

The application will attempt to make a limited functional clone of twitter's tweet system.


# Disclaimer

I claim no ownership of the idea behind the functionality of this app. It may not be used for any commercial purposes in any condition.

## Important
In config/puma.rb, comment out 
```
workers Integer(ENV['WEB_CONCURRENCY'] || 2)
```
during development on Windows. Make Sure to remove the comment while deploying
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

### Account Activation and Password Reset Emails 
#### Local
When you sign up as a new user on localhost:3000, the activation email format will be available in the server log
```
<a href="https://localhost:3000/account_activations/hc6uXSa5xBpxSVu04oioxg/edit?email=sample%40example.com">Activate</a>
  </body>
</html>
```
Copy the link into the browser and open. Open in the same tab where you signed up if you get a protocol error in the browser. 


#### Enable send grid on heroku
```
$ heroku addons:create sendgrid:starter
```
Add to config/environments/production.rb 
Input your heroku app name
```
config.action_mailer.raise_delivery_errors = true
config.action_mailer.delivery_method = :smtp
host = '<your heroku app>.herokuapp.com'
config.action_mailer.default_url_options = { host: host }
ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],
  :password       => ENV['SENDGRID_PASSWORD'],
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
}
```
The user_name and password are set using the ENV variable
```
$ heroku config:get SENDGRID_USERNAME
$ heroku config:get SENDGRID_PASSWORD
```

## Images

We use evn variables to store images on Amazon's S3 in production.  
- config/initializers/carrier_wave.rb

Setup the environment variables in heroku
```
$ heroku config:set S3_ACCESS_KEY=<access key>
$ heroku config:set S3_SECRET_KEY=<secret key>
$ heroku config:set S3_BUCKET=<bucket name>
$ heroku config:set S3_REGION=<bucket region>
```