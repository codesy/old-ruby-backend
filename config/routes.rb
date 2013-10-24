Patronage::Application.routes.draw do
  root to: 'users#index'

  resources :users

  resources :bids
end
