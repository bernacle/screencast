Rails.application.routes.draw do
  devise_for :users

  resources :episodes
  resource :subscription
  resource :card

  root 'episodes#index'
end
