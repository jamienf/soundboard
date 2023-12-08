Rails.application.routes.draw do
  resources :sounds
  root 'sounds#index'
end