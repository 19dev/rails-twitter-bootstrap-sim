RailsTwitterBootstrapSim::Application.routes.draw do
  resources :sessions
  resources :questions
  get "login" => "sessions#new", :as => "login"
end
