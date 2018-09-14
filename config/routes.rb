Rails.application.routes.draw do
 root  'pages#home'



resources :events



  get 'pages/basketball'
  get 'pages/football'
  get 'pages/soccer'
  get 'pages/other'
  get 'pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
