Rails.application.routes.draw do
  get 'coments/new'
  post 'coments' => 'coments#create'
  get 'coments/index'
  get 'coments/show'
  get 'coments/edit'
  devise_for :users
  root to: "homes#top"
  get "about" => "homes#about"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
