Rails.application.routes.draw do
  get 'welcome', to: 'welcome#index'
  get "welcome", to: "welcome#show", as: "new_log_in"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/sessions/new", to: "sessions#new", as: "new_session"
  post "/sessions", to: "sessions#create", as: "sessions"
  get "/sessions", to: "sessions#show", as: "log_in"
  delete "/sessions", to: "sessions#destroy"

  resources :articles
  resources :users
  resources :likes

end
