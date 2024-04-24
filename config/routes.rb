Rails.application.routes.draw do
  root to: "homes#top"
  get "about" => "homes#about"
  devise_for :users
  resources :comments, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resource :favorite, only: [:create, :destroy]
    resources :favorites, only: [:index], param: :comment_id
    resources :responses, only: [:create, :destroy]
  end

  resources :users, only: [:show, :edit, :update]
  devise_scope :user do
    post 'users/guest_sign_in', to:'users/sessions#guest_sign_in', as: :guest_sign_in
  end
  get "search" => "searches#search"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
