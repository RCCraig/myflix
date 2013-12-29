Myflix::Application.routes.draw do
  resources :videos, only: [:show]
  resources :categories, only: [:show]
  get '/home', to: 'videos#index'  	
  
  get 'ui(/:action)', controller: 'ui'
  root to: 'videos#index'

end
