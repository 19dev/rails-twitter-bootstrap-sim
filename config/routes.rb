RailsTwitterBootstrapSim::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  resources :sessions
  resources :questions
  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"

  root :to => "questions#index"
end
