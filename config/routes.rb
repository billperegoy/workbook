Workbook::Application.routes.draw do
  root 'store_items#index'

  resources :users
  resources :books do
    resources :pages
  end

  get '/user/:id/add_book' => 'users#add_book', as: 'add_book'

  get '/store_items' => 'store_items#index'
  get '/store_items/:id/add_to_cart' => 'store_items#add_to_cart', as: 'add_to_cart'

  get '/static_pages/about' => 'static_pages#about', as: 'about'
  get '/static_pages/contact' => 'static_pages#contact', as: 'contact'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
end
