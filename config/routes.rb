Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :careers, only: [:index]
  resources :students
  resources :home, only: [:index]
  resources :colors
  resources :buildings
  root 'home#index'

end
