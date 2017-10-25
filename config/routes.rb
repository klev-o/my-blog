Rails.application.routes.draw do
  get 'main/index'
  get 'about/index'

  resources :about


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'main#index'
end
