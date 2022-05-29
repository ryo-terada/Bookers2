Rails.application.routes.draw do
  devise_for :users
  
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit]
  resources :users, only: [:show, :edit, :update, :index]
  
  root to: 'homes#top'
  get 'home/about' => "homes#about"
  
  
  
end
