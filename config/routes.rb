Rails.application.routes.draw do
  # resources :courses
  # devise_for :users, 
  devise_for :users, skip: [:sessions], path_names:{sign_up:'signup', password: 'secret', confirmation: 'verification', unlock: 'unblock'}
  as :user do
    get 'login', to: 'devise/sessions#new', as: :new_user_session
    post 'login', to: 'devise/sessions#create', as: :user_session
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end
  
  get 'home/index'
  root to:'home#index'
  resources :courses do
    resources :lessons, module: :courses
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
