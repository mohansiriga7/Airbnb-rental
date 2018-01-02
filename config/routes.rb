Rails.application.routes.draw do
  resources :rent_comparators
  resources :airbnb_host_places
  root 'rent_comparators#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
