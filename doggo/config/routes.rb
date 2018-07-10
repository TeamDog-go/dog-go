Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out', :to => 'active_admin/devise/sessions#destroy'
    post '/users/sign_in', :to => 'active_admin/devise/sessions#create'
  end
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :questions
  resources :answers
  resources :results
  resources :surveys
  resources :feedbacks
  resources :options
  resources :categories 
  resources :timestamps
  root 'categories#home'
end
