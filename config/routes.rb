Rails.application.routes.draw do

  root 'static_pages#home'

  #get '/home',  to: 'static_pages#home'
  get '/help',  to: 'static_pages#help'#, as: 'helf'
  get '/about',  to: 'static_pages#about'
  get '/contact',  to: 'static_pages#contact'

  get '/signup', to: 'users#new'
  resources :users

  #GET, POST, PATCH, DELETE: Basic HTTP operations between Client & Server, & fundamental of REST API architectures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#test0'
end
