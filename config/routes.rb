Rails.application.routes.draw do
  devise_for :users
  resources :tasks do
    member do
      get :completed 
    end
  end
  resources :samis
  resources :comments
  resources :posts
  resources :books
  resources :students
  resources :gyms

  root to: 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
