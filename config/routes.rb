Rails.application.routes.draw do
  resources :posts
  devise_for :users
  
  authenticated :user do
    root to: 'application#index', as: :authenticated_root
  end
  root 'application#welcome', as: :unautheticated_root
  get '/about', to: 'application#about'
end
