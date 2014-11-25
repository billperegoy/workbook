Workbook::Application.routes.draw do
  root 'books#index'

  #get 'users/login', to: 'users#login', as: :login
  resources :users
  resources :books
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
end
