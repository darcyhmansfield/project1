Rails.application.routes.draw do
  get 'teams/new'
  get 'teams/index'
  root :to => "wrestlers#index"
  get '/login' => 'session#new'        
  post '/login' => 'session#create' 
  delete '/login' => 'session#destroy'
  resources :wrestlers
  resources :promotions
  resources :users, :only => [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
