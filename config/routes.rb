Rails.application.routes.draw do

  get '/about' => 'pages#about'
  get '/services' => 'pages#services'
  get '/team' => 'pages#team'
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  root 'pages#index'

end
