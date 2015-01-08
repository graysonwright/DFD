Rails.application.routes.draw do
  get "log_in" => "sessions#new", :as => "log_in"

  get "sign_up" => "users#new", :as => "sign_up"
  resources :users

  resources :sessions

  resources :events

  resources :members
  
  root to: "events#index"

end
