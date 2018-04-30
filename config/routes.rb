Rails.application.routes.draw do
  resources :plans, only: [:show]
  resources :inspections, only: [:show]
end
