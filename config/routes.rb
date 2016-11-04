Rails.application.routes.draw do
  root "sessions#new"

  resources :users

  get "/",					to: "sessions#new"
  get "/logout",    to: "sessions#destroy"
  post '/login',		to: "sessions#create",	as: "login"

  get "/workouts",  to: "workouts#index",    as: "workouts"
  get "/users/:id/results",        to: "results#index", as: 'results'
  post "/users/:id/results",       to: "results#create"
  get "/results/:id",    to: "results#show",     as: 'result'
  get "/challenges",     to: "challenges#index", as: "challenges"
  get "/challenges/update_results", as: 'update_results'
  get "/challenges/new", to: "challenges#new",   as: "new_challenge"
  post "/challenges",    to: "challenges#create"
  get "/challenges/:id", to: "challenges#show", as: "challenge"
  put "/challenges/:id", to: "challenges#update"
  delete "/challenges/:id", to: "challenges#destroy"
  get "/users/:id",      to: "users#show"

end
