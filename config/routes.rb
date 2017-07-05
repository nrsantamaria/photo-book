Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, controllers: {
  #       sessions: 'users/sessions'
  #     }

  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end

  root to: 'images#index'

  resources :users do
    resources :images
  end
end
