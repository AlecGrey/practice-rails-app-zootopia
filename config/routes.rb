Rails.application.routes.draw do
  resources :exhibits, except: :index
  resources :zoos, only: [:index, :show]
  resources :animals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
