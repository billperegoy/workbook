Workbook::Application.routes.draw do
  root 'books#index'

  get 'users/login', to: 'users#login', as: :login
  resources :users
  resources :books
end
