Rails.application.routes.draw do
  resources :courses
  get 'home/student_details'
  devise_for :students
  root 'home#home'
  get "home/index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
