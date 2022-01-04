Rails.application.routes.draw do
  resources :shared_wish_lists, only: :show
  resources :wish_lists, except: :index do
    resources :items
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
