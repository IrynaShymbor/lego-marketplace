Rails.application.routes.draw do
  devise_for :users
  resources :bricks

  root to: 'bricks#index'
end
