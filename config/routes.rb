Rails.application.routes.draw do
  get '/spaces/new', to: 'spaces#new'
  # get '/spaces', to: 'spaces/'
  post '/spaces', to: 'spaces#create'
  get '/spaces/loser', to: 'spaces#loser'
  # resources :spaces

  resources :top_players
  resources :sessions
  resources :grids
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
