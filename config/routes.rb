Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "prototypes#index"
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create 
  end
  resources :users, only: :show
  #resources :prototypes, only: [:index, :new, :edit, :update, :destroy, :create, :show]
  #resources :prototypes do
    #resources :comments, only: :create
  #end
  #resources :users do
    #resources :users, only: :show
    #collection do
     # get 'search'
    #end
  #end
  
end