Rails.application.routes.draw do
  get 'promotions/index'
  get 'promotions/new'
  get 'promotions/edit'
  get 'promotions/show'
  root :to => "wrestlers#index"
  resources :wrestlers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
