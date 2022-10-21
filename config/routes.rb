Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :categories, only: :show
  get "workers/:id", to: "categories#worker", as: :worker
  resources :services, except: [:show, :index] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show] do
    resources :reviews, only: :create
  end
end
