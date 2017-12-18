Rails.application.routes.draw do
  resources :appointments
  get 'ourservices/index'

  resources :managedforms
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'subscription/index'
  get 'aboutus/index'  
  resources :home, only: [:index]
  root 'home#index'
end
