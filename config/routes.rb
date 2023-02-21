Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :users, :only => [:index, :show]

  resources :events, :only => [:index, :show]
  
  resources :attendances, :only => [:index, :show]
end
