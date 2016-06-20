Rails.application.routes.draw do


  resources :users do
    get 'empresas' => 'users#show_companies'
    get 'avaliacoes/:id' => 'users#show_exames', as: 'avaliacoes'
    get 'perguntas/:exame_id' =>  'users#show_questions', as: 'perguntas'
    get 'reviews/:question_id' => 'users#review_question', as: 'reviews'
    post 'reviews/:question_id' => 'reviews#create'
    
  end
  resources :companies do
    resources :exames do
      resources :questions
    end
  end
  root 'welcome#teste' # primeira página
  get 'sign_in' => 'sessions#new' 
  post 'sign_in' => 'sessions#create' 
  delete 'sign_out' => 'sessions#destroy'
  get 'sign_in_company' => 'sessions_companies#new' 
  post 'sign_in_company' => 'sessions_companies#create' 
  delete 'sign_out_company' => 'sessions_companies#destroy'
  get 'sign_in_login' => 'login#login'
  get 'search_comp' => 'searchcomp#searchcomp' 
  #get 'avaliacoes' => 'companies#show_exames'
  
  #post 'sign_in_login' => 'login#create'
  #delete 'sign_out_login' => 'login#destroy'


end
