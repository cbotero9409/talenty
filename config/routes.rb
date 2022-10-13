Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :categories, only: :index
  resources :users, only: :show
  resources :services, except: [:show, :index] do
    resources :bookings, only: :create
  end
  resources :bookings, only: [:index, :show]
end
