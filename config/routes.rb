
Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :index, :show, :edit, :update ] do
    resources :bookings, only: [ :new, :create ]
  end

  resources :bookings, only: :destroy do
  resources :reviews, only: [ :new, :create]
  end

  get 'my_bookings', to:'pages#my_bookings'
end
