Rails.application.routes.draw do

 #  devise_scope :user do
 #   get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
 #   get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
 # end
  # devise_for :users

  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }



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
