Rails.application.routes.draw do
  resources :password

  root "passwords#index"
end
