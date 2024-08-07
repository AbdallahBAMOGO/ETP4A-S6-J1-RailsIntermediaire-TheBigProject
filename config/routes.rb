Rails.application.routes.draw do
  # get 'users/show'
  # get 'gossips/index'
  # get 'gossips/show'
  # get 'pages/home'
  # get 'pages/team'
  # get 'pages/contact'
  # get 'pages/welcome'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'pages#home'
  get 'team', to: 'pages#team'
  get 'contact', to: 'pages#contact'
  get 'welcome/:first_name', to: 'pages#welcome', as: 'welcome'
  resources :gossips, only: [:index, :show]
  resources :users, only: [:show]
end
