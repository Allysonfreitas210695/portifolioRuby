Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'sobre', to: 'static_page#sobre'
  get 'contato', to: 'static_page#contato'
  get 'login', to: 'session#new'
  post 'entrar', to: 'session#create'

  resources :users, only: [:new, :create, :index]
  
  root to: 'welcome#index'
end
