Rails.application.routes.draw do
    get '/gyms' => 'gyms#index'

  resources :gyms
  get 'gyms/show'
  get 'gyms/edit'
  get 'gyms/new'
 root  'pages#home'
  get 'pages/basketball'
  get 'pages/football'
  get 'pages/soccer'
  get 'pages/other'
  get 'pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
