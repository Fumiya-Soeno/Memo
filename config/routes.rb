Rails.application.routes.draw do
  root "api/memos#index"
  namespace :api, default: {format: :json} do
    resources :memos, only: [:index, :create]
  end
end
