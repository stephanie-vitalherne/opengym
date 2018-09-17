Rails.application.routes.draw do
 root  'pages#home'
  get 'participants/index'
  get 'participants/edit'
  get 'participants/show'
  get 'participants/new'

resources :gyms do
resources :events do
  resources :participants
end
end


get '/results' => 'pages#results'
  get '/gyms' => 'gyms#index'

  get 'gyms/show'
  get 'gyms/edit'
  get 'gyms/new'



  resources :users, only: %i[edit index create show update destroy]

  get 'register' => 'users#new'


  get 'pages/basketball'
  get 'pages/football'
  get 'pages/soccer'
  get 'pages/other'
  get 'pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
