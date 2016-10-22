Rails.application.routes.draw do
  get 'sessions/create'

  get '/', to: 'pages#index', as: 'index'
  get '/auth/twitter/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
