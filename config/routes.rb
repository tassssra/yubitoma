Rails.application.routes.draw do
  devise_for :users

  resources :users
  resources :events do
    resources :joins, only: [:create, :destroy]
  end

  root 'events#index'
end
