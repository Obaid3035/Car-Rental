Rails.application.routes.draw do

  devise_for :admins

  namespace :admins do
    root 'homes#dashboard'
    resources :manufacturers
    resources :cars
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
