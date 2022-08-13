Rails.application.routes.draw do
  devise_for :users
  root to: 'postings#index'
  get 'my_postings', to: 'pages#user_postings'
  resources :postings do
    resources :bookings, only: [:new, :create, :destroy]
  end # only: [:index, :new, :create, :show, :destroy, :edit,]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
