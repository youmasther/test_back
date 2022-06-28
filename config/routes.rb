Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'articles/index'
      post 'articles/create'
      get '/show/:id', to: 'articles#show'
      delete '/destroy/:id', to: 'articles#destroy'
      get 'categories/index'
      post 'categories/create'
      get '/show/:id', to: 'categories#show'
      delete '/destroy/:id', to: 'categories#destroy'
    end
  end
  resources :articles
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "categories#index"
end
