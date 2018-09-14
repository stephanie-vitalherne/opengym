Rails.application.routes.draw do
  get '/gyms' => 'gyms#index'

  get 'gyms/show'
  get 'gyms/edit'
  get 'gyms/new'

  root 'pages#home'

  resources :users, only: %i[edit index create show update destroy]
  resources :gyms

  get 'register' => 'users#new'

  get 'pages/basketball'
  get 'pages/football'
  get 'pages/soccer'
  get 'pages/other'
  get 'pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
