Rails.application.routes.draw do
  $date = Time.now.to_s
  root "api/memos#index"
  namespace :api, default: {format: :json} do
    resources :memos, only: [:index, :create]
  end
end
