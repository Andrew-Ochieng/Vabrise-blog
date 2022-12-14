Rails.application.routes.draw do
  resources :authors
  resources :categories
  resources :post_categories
  resources :tags
  resources :post_tags
  resources :comments
  resources :posts, only: [:index, :show, :create, :update, :destroy]
  resources :authors, only: [:index, :show, :create, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
