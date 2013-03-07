Scholar::Application.routes.draw do

  get "dashboard/index"

  root :to => 'dashboard#index'

  resources :students
  resources :teachers
  resources :klasses, :path => 'classes'

end
