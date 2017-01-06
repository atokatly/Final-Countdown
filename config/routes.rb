Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#index"
  resources :users
  resources :pitches
  resources :thankyou
  resources :pitchdays

  # Session controllers
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # get '/users/new' => 'users#new'
  # post '/users' => 'users#create'
end
