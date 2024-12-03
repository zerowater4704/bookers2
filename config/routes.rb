Rails.application.routes.draw do
  devise_for :users
  get "/home/about" => "homes#about", as: "about"
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]

  resources :users, only: [:index, :create, :show, :edit, :update]
end
