Rails.application.routes.draw do
  root :to => "wrestlers#show"
  resources :wrestlers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
