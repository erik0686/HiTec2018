Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :careers, only: [:index]
  resources :students
  resources :home, only: [:index]
  resources :colors
  resources :buildings
  resources :admins
  resources :staffs
  resources :staff_assistances, only: [:new, :create]
  get 'registro', to: 'students#registro'
  post 'students/assign_team', to: 'students#assign_team'

  get 'resources', to: 'teams#resources'
  get 'asistencia', to: 'staff_assistances#new', as: "asistencia"
  # Aqui esta la asistencia de lideres tambien
  get '/teams-puntos', to: 'teams#puntos'

  get '/staffs-puntos', to: 'staffs#puntos'

  post 'colors/agregar', to: 'colors#agregar'
  post 'buildings/agregar', to: 'buildings#agregar'
  post 'activities/agregar', to: 'activities#agregar'

  delete 'activities/borrar', to: 'activities#borrar'
  delete 'buildings/borrar', to: 'buildings#borrar'
  delete 'colors/borrar', to: 'colors#borrar'

  root 'home#index'

end
