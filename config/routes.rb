Rails.application.routes.draw do
  root :to => "wrestlers#index"
  resources :wrestlers
  resources :promotions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
