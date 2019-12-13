Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users
  # get "users/new", to: "users#new"
end
