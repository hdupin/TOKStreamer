Rails.application.routes.draw do
  devise_for :users
  resources :streams

  root 'streams#index'
end
