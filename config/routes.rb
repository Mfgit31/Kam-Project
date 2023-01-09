Rails.application.routes.draw do
  
  resources :appointments, only: [:index, :show, :create]
  resources :customers, except: [:new, :edit]
  resources :housings, except: [:new, :edit]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  #route paths 
  #"/me" route gets the last logged in user
  get "/me", to: "customers#show"

  #"/authorized"
  get "/authorized", to: "customers#show"

  #"/login" route to create a new user session
  #post to use body key to send information
  post "/login", to: "sessions#create"

  #"/logout" route is destroying the session
  delete "/logout", to: "sessions#destroy"

  #"/signup" route to create a new user session
  post "/signup", to: "customers#create"                 




end
