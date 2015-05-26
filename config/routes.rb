Rails.application.routes.draw do
  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  #------------------------------

  get '/profiles/:id' => 'profiles#show'
  get '/new_profile' => 'profiles#new'
  get '/create_profile' => 'profiles#create'
  get '/profiles/:id/edit' => 'profiles#edit'
  get '/update_profiles/:id' => 'profiles#update'
  get '/profiles/:id/destroy' => 'profiles#destroy'
  get '/profiles' => 'profiles#index'
  get '/sessions/new' => 'sessions#new'
end
