Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  
  get '/login/', to: 'sessions#new', as: 'login'
  post '/login/', to: 'sessions#create'
  post '/logout/', to: 'sessions#destroy'

  get '/secret/', to: 'secrets#show', as: 'secret'

end
