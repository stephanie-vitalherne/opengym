Rails.application.routes.draw do

  root 'pages#home'

  resources :users, only: %i[edit index create show update destroy] do
      resources :messages
  end

  resources :gyms do
    resources :events do
      resources :participants do
        delete 'delete' => 'participants#destroy'
      end
    end
end


  get '/results' => 'pages#results'
  get '/gyms' => 'gyms#index'

  get 'register' => 'users#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/leaderboard' => 'pages#leaderboard'
  get '/basketball' => 'pages#basketball'
  get '/football' => 'pages#football'
  get '/soccer' => 'pages#soccer'
  get '/other' => 'pages#other'
  get '/about' => 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
