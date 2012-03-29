RailsTwitterBootstrapSim::Application.routes.draw do
  resources :sessions
  resources :questions
  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"

  root :to => "questions#index"
end
