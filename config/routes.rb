Rails.application.routes.draw do

  root 'access#menu'

  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :students
  resources :instructors
  resources :cohorts
  resources :courses
  resources :cohort_students
end
