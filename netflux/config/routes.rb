Rails.application.routes.draw do
  resources :subscriptions, only: [:show] do
    resources :movies, only: [:index, :show]
  end
end
