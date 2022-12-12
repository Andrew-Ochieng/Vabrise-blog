Rails.application.routes.draw do
  resources :categories
  resources :post_categories
  resources :tags
  resources :post_tags
  resources :comments
  resources :posts, only: [:index, :show]
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
