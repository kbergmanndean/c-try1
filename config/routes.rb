Rails.application.routes.draw do
  resources :items, only: [:index, :show, :create, :destroy]
  resources :users, only: [:index, :show]
  get "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
