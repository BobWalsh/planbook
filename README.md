# What is Planbook?

A rails 5 prototype app created over a rainy weekend to test three things:

* Auth0 - is it a workable alternative to the Devise and Omniauth Gem and a great deal of finicky boilerplate code?

* Bootstrap 4 - is it better/faster/easier than Bootstrap 3?

* Vue.js 2 - What's all the fuss about? Is it better/faster/easier than React.js?

# Tentative conclusions as of Jan. 9, 2017:

* Auth0 - needs better rails documentation, but it's far easier to set up than Omniauth and rock solid.

* Bootstrap 4 - (as of alpha 5) is about 205 faster than Bootstrap 4 on complex/large pages.
 
* Vue.js 2 - A serious contender to React.js, so long as you don't plan on going native. In a nutshell, it's the templating js you've always wanted for Rails' views, and definitely worth learning about.


# Running Planbook

1. Copy the  clone from Github to your local machine.
2. You will need to go to Auth0.com, create a free account, create a Client ('Regular Web Application'), and copy the AUTH0_CLIENT_ID, AUTH0_CLIENT_SECRET and AUTH0_DOMAIN to a .env file in your cloned copy.
2. While in the Auth0 Dashboard for your Client application, set 'Allowed Callback URLs' to 'http://localhost:3000/auth/auth0/callback' and save.
2. cd into your clone directory.
2. `bundle install`
3. `rake db:create && rake db:migrate` Unless you don't use Postgres, in which case you'll want to change database.yml 

