Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root "home#splash"

  resources :users
  resources :products
  resources :home, :only => [:splash, :index]


end
