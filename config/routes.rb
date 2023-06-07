Rails.application.routes.draw do
  devise_for :owners
  devise_for :users
  root to: "pages#home"
  get "pages/intermediaire", to: "pages#intermediaire", as: "intermediaire"
  resources :activities
  get "trips/which", to: "trips#which", as: 'which_trip'
  resources :trips do
    resources :trip_activities
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
