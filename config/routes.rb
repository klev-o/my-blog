Rails.application.routes.draw do
  get 'main/index'
  get 'about/index'

  resources :about, only: :index
  resources :main, only: :index
  resources :gallery, only: :index

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'main#index'
end
