Rails.application.routes.draw do
  
  resources :appointments, only: [:index, :show, :create]
  resources :customers, except: [:new, :edit]
  resources :housings, except: [:new, :edit]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # get "/me", to: "users#show"




end
