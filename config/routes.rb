Rails.application.routes.draw do
  get 'shared_wish_lists/:shared_id', to: 'shared_wish_lists#show', as: 'shared_wish_lists'
  patch 'shared_wish_lists/:shared_id/purchase/:item_id', to: 'shared_wish_lists#purchase',
                                                          as: 'shared_wish_lists_purchase'
  resources :wish_lists, except: :index do
    resources :items
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
