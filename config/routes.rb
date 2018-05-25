Rails.application.routes.draw do
  resources :plans, only: [:show]
  resources :inspections, only: [:show]
  resources :docs, only: [:index] do
    collection do
      get :json
    end
  end
end
