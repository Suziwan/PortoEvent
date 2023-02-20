Rails.application.routes.draw do
  root "home#index"

  resources :users, :only => [:index, :show]

  resources :events, :only => [:index, :show]
  
  resources :attendances, :only => [:index, :show]
end
