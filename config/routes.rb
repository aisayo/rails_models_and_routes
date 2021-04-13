Rails.application.routes.draw do

  root 'application#root'
  resources :organizations
  resources :donors
  resources :donations


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
