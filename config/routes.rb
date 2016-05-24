Rails.application.routes.draw do
  devise_for :users

  resources :episodes

  root 'episodes#index'
end
