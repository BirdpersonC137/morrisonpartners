Rails.application.routes.draw do
  resources :managedforms
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'subscription/index'
  get 'aboutus/index'  
  root 'home#index'
end
