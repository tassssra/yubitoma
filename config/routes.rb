Rails.application.routes.draw do
  root 'events#index'
  devise_for :users

  resources :events do
    resources :joins, only: [:create, :destroy]
  end

  resources :users
end
