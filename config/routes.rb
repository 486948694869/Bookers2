Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about'=>'homes#about', as:'about'
  resources :books, only: [:edit, :create, :index, :show, :destroy, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index, :edit, :update]

end