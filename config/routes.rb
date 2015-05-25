Rails.application.routes.draw do
  get '/profiles/:id' => 'profiles#show'
  get '/new_profile' => 'profiles#new'
  get '/create_profile' => 'profiles#create'
  get '/profiles/:id/edit' => 'profiles#edit'
  get '/update_profiles/:id' => 'profiles#update'
  get '/profiles/:id/destroy' => 'profiles#destroy'
  get '/profiles' => 'profiles#index'
  get '/sessions/new' => 'sessions#new'
end
