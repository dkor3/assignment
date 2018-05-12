Rails.application.routes.draw do
  devise_for :users
  get 'comments/create'

  get 'comments/destroy'

  get 'home/intro'

  root "home#index"

  resources :posts do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :comments, only: [:create, :destroy]
  end
end
