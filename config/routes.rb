Rails.application.routes.draw do
  resources :conversions, except: [:update, :delete]
  resources :measurements, only: [:index, :show]
  resources :users, only: [:index, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
