Rails.application.routes.draw do
  devise_for :users
  root to: "spots#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/profile", to: "pages#profile"
  get "/friends", to: "pages#friends"
  resources :spots, only: [:show, :index] do
    resources :reviews, only: [:new, :create]
  end

  resources :followings, only: [:create, :destroy]
end
