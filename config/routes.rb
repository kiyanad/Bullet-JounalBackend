Rails.application.routes.draw do
 namespace :api do
  namespace :v1 do
    resources :user_habits
    resources :habits
    resources :users, only: [:create, :index]
post '/login', to: 'auth#create'
get '/profile', to: 'users#profile'
    resources :user_instances
    resources :user_books
    resources :activities

      end
     end
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
