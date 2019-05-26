Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get '_list' => 'books#_list'
  get 'home/about' => 'homes#about'
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
