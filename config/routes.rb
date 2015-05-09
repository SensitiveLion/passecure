Rails.application.routes.draw do
  resources :common_passwords, only: :index

  root "common_passwords#index"
end
