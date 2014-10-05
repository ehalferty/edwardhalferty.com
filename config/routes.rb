Rails.application.routes.draw do
  resources :post_attachments

  root to: "posts#index"

  resources :posts

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
end
