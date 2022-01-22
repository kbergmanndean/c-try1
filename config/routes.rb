Rails.application.routes.draw do
 
  resources :items, only: [:index, :show, :create, :destroy]
  resources :users, only: [:index, :show]
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  get '*path', to: 'application#fallback_index_html', constraints: ->(request) do
    !request.xhr? && request.format.html?
  end
  # get '*path', to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
