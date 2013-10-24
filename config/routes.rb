Patronage::Application.routes.draw do
  root to: 'bids#index'

  resources :users do
    resources :bids
  end
end
