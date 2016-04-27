Rails.application.routes.draw do

  resources :users
  resources :companies
  root 'welcome#index' # primeira página
  get 'sign_in' => 'sessions#new' 
  post 'sign_in' => 'sessions#create' 
  delete 'sign_out' => 'sessions#destroy'


end
