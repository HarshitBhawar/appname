Rails.application.routes.draw do
  resources :hellos
  
 
  # get 'home/index'
  
  # # get 'admin/index'
  # # get 'admin/create'
  # # get 'admin/show'
   get '/login' => 'sessions#new'
   post '/login' => 'sessions#create'
   get '/logout' => 'sessions#destroy'
  # get 'yusers/new'
  # post 'yusers/create'
  
   root "articles#index"
   get 'comments/edit'
   get 'comments/form'
  # # resources :sessions, only: [:new, :create, :destroy]  
  # # get 'signup', to: 'yusers#form', as: 'signup'  
  # # get 'login', to: 'sessions#new', as: 'login'  
  # # get 'logout', to: 'sessions#destroy', as: 'logout' 
  resources :articles do
    resources :comments
  end

   resources :yusers 
  
   get 'yusers/form'

end
