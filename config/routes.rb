Rails.application.routes.draw do

  # where our routes live

  # define a route, map to a controller action 

  # ReSTful routes 

  # show all users 

  
  # get '/users', to: 'users#index'  # static
  # # get '/users' => 'users#index'

  # # show details of 1 user

  # get '/users/:id', to: 'users#show' # dynamic

  # # show new user form

  # get '/users/new', to: 'users#new' # static

  # # process the new user form submitted

  # post '/users', to: 'users#create'


  # # show edit user form
  # get '/users/:id/edit', to: 'users#edit' # static


  # # process the edit user form submitted
  # patch '/users/:id', to: 'users#update'

  # # delete a user object

  # delete '/users/:id', to: 'users#destroy'

  resources :users

  get '/most_donor', to: 'users#most_honor', as: 'rich_donor'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
