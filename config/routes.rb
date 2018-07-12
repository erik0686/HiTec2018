Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :careers, only: [:index]
  resources :students
  resources :home, only: [:index]
  root 'home#index'

end
