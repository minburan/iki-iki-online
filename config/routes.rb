Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  get "about" => "homes#about"
  resources :comments, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
