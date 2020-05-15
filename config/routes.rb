Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'posts#index'

  resources :posts do
    post 'comments', to: 'comments#create'
  end
  
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  mount Commontator::Engine => '/commontator'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
