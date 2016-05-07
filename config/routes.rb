Rails.application.routes.draw do


  resources :users
  resources :companies
  root 'welcome#index' # primeira página
  get 'sign_in' => 'sessions#new' 
  post 'sign_in' => 'sessions#create' 
  delete 'sign_out' => 'sessions#destroy'
  get 'sign_in_company' => 'sessions_companies#new' 
  post 'sign_in_company' => 'sessions_companies#create' 
  delete 'sign_out_company' => 'sessions_companies#destroy'
  get 'sign_in_login' => 'login#login'
  #post 'sign_in_login' => 'login#create'
  #delete 'sign_out_login' => 'login#destroy'


end
