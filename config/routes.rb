Rails.application.routes.draw do
  resources :friends
  resources :people do
    resources :friends
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments 
  end
end
