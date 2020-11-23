Rails.application.routes.draw do
  root to: "trips#index"
  resources :trips do
    resources :items, only: [:index, :new]
  end
end
