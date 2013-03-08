Scholar::Application.routes.draw do

  root :to => 'welcome#index'

  match 'dashboard' => 'dashboard#index', :as => :dashboard

  resources :klasses, :path => 'classes'
  resources :subjects
  resources :teachers
  resources :students

end
