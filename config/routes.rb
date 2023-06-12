Rails.application.routes.draw do
  devise_for :owners
  devise_for :users
  namespace :business do
    get "chats/index", to: "chats#index", as: "chats"
    get "chats/:id", to: "chats#show", as: "chat"
    resources :activities
  end
  root to: "pages#home"
  get "pages/intermediaire", to: "pages#intermediaire", as: "intermediaire"
  get "pages/checkout", to: "pages#checkout", as: "checkout"
  get "pages/add", to: "pages#add", as: "add"
  resources :activities
  get "trips/which", to: "trips#which", as: 'which_trip'
  resources :trips do
    resources :trip_activities
  end
  resources :chatrooms do
    resources :messages, only: :create
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
