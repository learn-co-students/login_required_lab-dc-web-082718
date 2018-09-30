Rails.application.routes.draw do

  get '/', to: 'sessions#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/secrets', to: 'secrets#show'
  get '/homepage', to: 'sessions#show'
  get '/logout', to: 'sessions#destroy'

end
