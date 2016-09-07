Rails.application.routes.draw do
  resources :blogs

  get 'welcome/index'

  root 'welcome#index'
end
