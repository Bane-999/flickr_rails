Rails.application.routes.draw do
  resources :photos, only: [:new]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "photos#new"
end
