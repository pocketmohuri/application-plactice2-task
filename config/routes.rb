Rails.application.routes.draw do
  get 'homes/top'
  get 'homes/about'
  devise_for :users
  resources :users, only: [:show, :edit]
  resources :books, only: [:create, :index, :show, :edit]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

