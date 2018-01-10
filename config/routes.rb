Rails.application.routes.draw do


  #get 'pages/about'
  get '/about' => 'pages#about'
  
  get '/services' => 'pages#services'

  #get 'pages/contact'
  get '/contacts' =>  'contacts#new'
    resources :contacts, only: [:new, :create]
    
  get '/team' => 'pages#team'
  


  root 'pages#index'

 
end
