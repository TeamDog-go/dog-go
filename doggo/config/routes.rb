Rails.application.routes.draw do
  devise_for :users
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :questions
  resources :answers
  resources :sessions
  resources :results
  resources :surveys
  resources :feedbacks
  resources :options
  resources :categories 
  resources :timestamps
end
