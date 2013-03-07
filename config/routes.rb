Scholar::Application.routes.draw do

  get "dashboard/index"

  root :to => 'dashboard#index'

  resources :klasses, :path => 'classes'
  resources :subjects
  resources :teachers
  resources :students

end
