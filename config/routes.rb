Rails.application.routes.draw do
  devise_for :users

  resources :messages, only: [:create]

  root to: 'pages#home'
end
