Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'sobre', to: 'static_page#sobre'
  get 'contato', to: 'static_page#contato'

  resources :users, only: [:new, :create]
  
  root to: 'welcome#index'
end
