Patronage::Application.routes.draw do
  devise_for :users
  root to: 'bids#index'

  resources :users do
    resources :bids
  end
end
