Rails.application.routes.draw do
<<<<<<< HEAD
 root  'pages#home'



resources :events


  resources :users


  get 'pages/basketball'
  get 'pages/football'
  get 'pages/soccer'
  get 'pages/other'
  get 'pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
