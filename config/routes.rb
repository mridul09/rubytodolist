Rails.application.routes.draw do
  devise_for :users
  resources :todolists
  root 'dashboard#index'
end
