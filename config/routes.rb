Rails.application.routes.draw do
  root "sessions#new"

<<<<<<< HEAD
  get "/",				to: "sessions#new",				as: "login"
  resources :users
=======
  resources :users

  get "/",					to: "sessions#new"
  post '/login',					to: "sessions#create",				as: "login"

  get "/workouts", to: "workouts#index",    as: "workouts"

  get "/results", to: "results#index"
  post "/results", to: "results#create"
  get "/results/:id", to: "results#show", as: 'result'
  get "/challenges", to: "challenges#index", as: "challenges"
  get "/challenges/new", to: "challenges#new", as: "new_challenge" 
  post "/challenges", to: "challenges#create"
>>>>>>> 3cf82a2e8a371f458afbb93db2282009099a707d

end
