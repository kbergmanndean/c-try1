Rails.application.routes.draw do
 
  resources :items, only: [:index, :show, :create, :destroy]
  resources :users, only: [:index, :show]
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/", to: 'application#fallback_index_html'
  get '*path', to: 'application#fallback_index_html', constraints: ->(request) {!request.xhr? && request.format.html? }
end

