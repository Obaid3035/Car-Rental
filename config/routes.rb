Rails.application.routes.draw do

  devise_for :admins

  devise_scope :admin do
  root to: "devise/sessions#new"
  end

  namespace :admins do
    root 'homes#dashboard'
    resources :manufacturers
    resources :cars
    resources :bookings
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
