Workbook::Application.routes.draw do
  root 'books#index'

  resources :users
  resources :books
  get '/user/:id/add_book' => 'users#add_book', as: 'add_book'
  get '/store_items' => 'store_items#index'
  get '/store_items/:id/add_to_cart' => 'store_items#add_to_cart', as: 'add_to_cart'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
end
