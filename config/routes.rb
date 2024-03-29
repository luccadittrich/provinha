Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :posts
  resources :tests do
    resources :answers
    resources :stars
  end

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
