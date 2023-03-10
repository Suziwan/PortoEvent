Rails.application.routes.draw do
  devise_for :users
  
  root "static_pages#index"
  get 'static_pages/index'
  get 'static_pages/secret'

  resources :users

  resources :events
  
  resources :attendances, :only => [:index, :show]
end
