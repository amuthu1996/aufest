Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :registers
  root to: 'registers#new'
  devise_for :users
  resources :users
end
