Rails.application.routes.draw do
  get '/', to: 'sessions#new'
  post '/', to: 'sessions#create'
  get '/welcome', to: 'sessions#welcome'
  get '/secret', to: 'secrets#show'
  get '/logout', to: 'sessions#destroy'
end
