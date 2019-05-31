Rails.application.routes.draw do
  resources :subscriptions, only: [:index] do
    resources :movies, only: [:index, :show]
  end
end
