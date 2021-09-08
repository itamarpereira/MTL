Rails.application.routes.draw do
  root to: 'areas#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :areas, only: [:index, :show]
end
