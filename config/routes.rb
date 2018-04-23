Rails.application.routes.draw do
  resources :plans, only: [:show]
end
