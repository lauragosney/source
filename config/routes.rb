Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # users could sign up multiple times
  resources :users

  # users can only make 1 session (you are either logged in or out)
  resource :session

  get "about", to: "pages#about"

  root "pages#home"


end
