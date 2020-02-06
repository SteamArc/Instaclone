Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", to: "static#index"
  get "/users/:user_id/posts", to: "posts#user_index"
  resources :posts, only: [:new, :show, :index, ]
  resources :likes, only: [:create, :show, :destroy]
  
  
  resources :users, only: [] do
    resources :posts, only: [:index]
  end
    resources :posts
end
