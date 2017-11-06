Rails.application.routes.draw do

  resources :users
  #get '/posts/:key1/:key2', to: 'posts#index'

  resources :posts
  get 'posts/page/:page', to: 'posts#index'
  #resources :posts, except: :show
  resources :about, only: :index
  resources :gallery, only: :index


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'main#index'
end
