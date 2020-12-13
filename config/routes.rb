Rails.application.routes.draw do
  root to: "trips#index"
  resources :trips do
    resources :items
    resources :missions
    resources :memos
  end
end
