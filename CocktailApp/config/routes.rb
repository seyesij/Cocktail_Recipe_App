Rails.application.routes.draw do
  root to: 'cocktails#index'

  resources :cocktails do
    resources :recipes
  end
end
