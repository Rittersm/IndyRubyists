Rails.application.routes.draw do
  resources :rubyists

  root 'rubyists#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
