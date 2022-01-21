Rails.application.routes.draw do
  root 'fallback#index'
  resources :items, only: [:index, :show, :create, :destroy]
  resources :users, only: [:index, :show]
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get '*path', to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
