Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
          post "/signup", to: "users#create"
          post "/login", to: "sessions#create" 
          post "/add_car", to: "cars#create"  
          resources :cars        
    end
end
end
