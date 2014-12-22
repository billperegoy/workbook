Workbook::Application.routes.draw do
  root 'store_items#index'

  resources :users

  # These are really deeply nested. Should I just define the 
  # routes I need?
  resources :books do
    resources :pages do
      resources :slider_questions
      resources :questions do
        resources :answers
      end
    end
  end

  get '/user/:id/add_book' => 'users#add_book', as: 'add_book'

  get '/store_items' => 'store_items#index'
  get '/store_items/:id/add_to_cart' => 'store_items#add_to_cart', as: 'add_to_cart'

  get '/user/:id/books/:book_id/add_content' => 'books#add_content', as: 'add_content_to_book'

  get '/static_pages/about' => 'static_pages#about', as: 'about'
  get '/static_pages/contact' => 'static_pages#contact', as: 'contact'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
end
