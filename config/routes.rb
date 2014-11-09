Workbook::Application.routes.draw do
  root 'users#index'
  resources :users
end
