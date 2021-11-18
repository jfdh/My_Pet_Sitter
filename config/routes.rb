Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :index, :show, :edit, :update ] do
    resources :bookings, only: [ :new, :create ]
  end

  resources :bookings do
  resources :reviews, only: [ :new, :create ]
  end

  get 'my_bookings', to: 'pages#my_bookings'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
end
