Workbook::Application.routes.draw do
  root 'books#index'
  resources :users
  resources :books
end
