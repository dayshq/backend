Rails.application.routes.draw do
  resources :people do
    resources :friends
  end

  resources :rooms do
    resources :messages
    resources :members
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
