Rails.application.routes.draw do
<<<<<<< HEAD
  get 'sessions/new'
  get 'pages/leaderboard'
=======

>>>>>>> 4e2fcb6a1f13e8a91bda9228f167268bd778ab2e
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


get '/results' => 'pages#results'
  get '/gyms' => 'gyms#index'

  get 'gyms/show'
  get 'gyms/edit'
  get 'gyms/new'



  resources :users, only: %i[edit index create show update destroy]

  get 'register' => 'users#new'

<<<<<<< HEAD
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get 'pages/basketball'
  get 'pages/football'
  get 'pages/soccer'
  get 'pages/other'
  get 'pages/about'
=======
  get '/leaderboard' => 'pages#leaderboard'
  get '/basketball' => 'pages#basketball'
  get '/football' => 'pages#football'
  get '/soccer' => 'pages#soccer'
  get '/other' => 'pages#other'
  get '/about' => 'pages#about'
>>>>>>> 4e2fcb6a1f13e8a91bda9228f167268bd778ab2e
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
