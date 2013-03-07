Scholar::Application.routes.draw do

  root :to => 'dashboard#index'

  resources :students
  resources :teachers
  resources :klasses, :path => 'classes'

end
