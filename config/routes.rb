Rails.application.routes.draw do

  get 'messages/index'
  get 'messages/new'
  get 'messages/edit'
  get 'messages/show'
 root  'pages#home'
  get 'participants/index'
  get 'participants/edit'
  get 'participants/show'
  get 'participants/new'

resources :gyms do
resources :events do
  resources :participants do
        delete 'delete' => 'participants#destroy'
      end
end
end

resources :users do
  resources :messages
end


get '/results' => 'pages#results'
  get '/gyms' => 'gyms#index'

  get 'gyms/show'
  get 'gyms/edit'
  get 'gyms/new'



  resources :users, only: %i[edit index create show update destroy]

  get 'register' => 'users#new'

  get '/leaderboard' => 'pages#leaderboard'
  get '/basketball' => 'pages#basketball'
  get '/football' => 'pages#football'
  get '/soccer' => 'pages#soccer'
  get '/other' => 'pages#other'
  get '/about' => 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
