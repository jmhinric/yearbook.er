Yearbooker::Application.routes.draw do
  resources :cohorts, only: [:new, :create, :show]

  get "/signup", to: "users#new"
  post "/users", to: "users#create"
  
  resources :users, except: [:new, :create]
end
