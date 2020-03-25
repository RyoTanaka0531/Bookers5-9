Rails.application.routes.draw do
  devise_for :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books, only: [:new, :create, :index, :edit, :destroy, :show, :update]
  resources :users, only: [:show, :index, :destroy, :edit, :update]
end
