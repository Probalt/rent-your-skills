Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :owner do
    resources :courses
  end
  resources :courses, only: [:index, :show] do
    resources :bookings, only: [:create, :index, :show, :destroy]
  end
end
