Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"
  get '/home/about' => 'homes#about', as: 'about'
  resources :books, only: [:index, :show, :create, :edit, :destroy, :new, :update]
  resources :users, only: [:index, :show, :update, :edit, :destroy, :new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
