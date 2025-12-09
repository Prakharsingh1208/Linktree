Rails.application.routes.draw do
  resource :user_detail
  resources :trees
  resource :session
  resources :passwords, param: :token
  resource :user_detail
  get "up" => "rails/health#show", as: :rails_health_check
  get "home/index"
  get "login", to:"sessions#new"
  root "home#index"
  get "/session/register", to: "sessions#register"
  post "session/save", to:"sessions#save"
end
