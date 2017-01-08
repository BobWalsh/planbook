Rails.application.routes.draw do
  # home page
  root 'public_pages#home'

  # Dashboard
  get 'dashboard' => 'dashboard#show'

  # Auth0 routes for authentication
  get '/auth/auth0/callback' => 'auth0#callback'
  get '/auth/failure'        => 'auth0#failure'
  # logout
  delete 'logout' => 'logout#logout'
end

