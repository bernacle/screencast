Rails.application.routes.draw do
  resources :episodes

  root 'episodes#index'
end
