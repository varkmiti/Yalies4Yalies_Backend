Rails.application.routes.draw do
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"

  resources :interactions
  resources :users
  resources :replies
  resources :posts
  resources :sessions
end
