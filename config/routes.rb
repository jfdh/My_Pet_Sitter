
Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :index, :show, :edit, :update ] do
    resources :bookings, only: [ :new, :create ]
  end

  resources :bookings, only: :destroy do
  resources :reviews, only: [ :new, :create]
  end

<<<<<<< HEAD
get 'my_bookings' ,to: 'pages#my_bookings'

=======
  get 'my_bookings', to:'pages#my_bookings'
>>>>>>> a738312fb40d603c8ff1f5f44b342f7951cd7910
end
