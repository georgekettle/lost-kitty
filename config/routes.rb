Rails.application.routes.draw do
  # resources :pets, only: [:index, :show, :new, :create, :destroy, :edit, :update]
  resources :pets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
