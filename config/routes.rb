Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "restaurants#index"
  resources :restaurants do
    resources :reservations
    resources :reviews
    collection do
      get 'search', to: 'restaurants#search'
    end
    
    
  end
  

end
