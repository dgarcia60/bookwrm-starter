Rails.application.routes.draw do
  root "books#index"
  resources :favorites
  resources :books do
    resources :reviews
  end
  resources :authors
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
