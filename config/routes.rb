Rails.application.routes.draw do
  resources :high_scores, only: [:index, :create]
end
