Rails.application.routes.draw do
  
  resources :lectures
  resources :assignments
  resources :answers

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "home#index"

end
