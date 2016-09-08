Rails.application.routes.draw do
  resources :blogs
  resources :posts
  resources :comments

  get 'welcome/index'

  root 'welcome#index'
end
