Rails.application.routes.draw do
  devise_for :users
  resources :students, only: [:new, :create, :show]
  resources :home, only: [:index]
  resources :staffs, only: [:new, :create, :show]
  resources :staff_assistances, only: [:new, :create]
  resources :student_activities, only: [:new, :create]
  get 'registro', to: 'students#registro'
  post 'students/assign_team', to: 'students#assign_team'
  post 'asignar_puntos', to: 'teams#asignar_puntos'

  get 'resources', to: 'teams#resources'
  get 'asistencia', to: 'staff_assistances#new', as: "asistencia"
  # Aqui esta la asistencia de lideres tambien
  get '/teams-puntos', to: 'teams#puntos'

  get 'staff-puntos', to: 'student_activities#new', as: "staff-puntos"
  get 'leaderboard', to: 'home#leaderboard', as: "leaderboard"


  post 'colors/agregar', to: 'colors#agregar'
  post 'buildings/agregar', to: 'buildings#agregar'
  post 'activities/agregar', to: 'activities#agregar'

  delete 'activities/borrar', to: 'activities#borrar'
  delete 'buildings/borrar', to: 'buildings#borrar'
  delete 'colors/borrar', to: 'colors#borrar'

  root 'home#index'

end
