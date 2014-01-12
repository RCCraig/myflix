Myflix::Application.routes.draw do
  resources :videos, only: [:show] do
    collection do
      post :search, to: "videos#search"
    end
    resources :reviews, only: [:create]
  end
  resources :categories, only: [:show]
  resources :users, only: [:create]
  resources :sessions, only: [:create]
  resources :queue_items, only: [:create, :destroy]

  get  'my_queue', to: 'queue_items#index'
  
  get 'ui(/:action)', controller: 'ui'
  get 'register', to: "users#new"
  get 'sign_in', to: 'sessions#new'
  get 'home', to: "videos#index"
  get 'sign_out', to: 'sessions#destroy'
  root to: 'pages#front'

end
