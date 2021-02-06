Rails.application.routes.draw do
  root to: 'articles#index'
  devise_for :authors

  resources :authors do
    resources :articles
  end
end
