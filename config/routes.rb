Rails.application.routes.draw do
  resources :items, only: [:index, :show, :create, :destroy]
end
