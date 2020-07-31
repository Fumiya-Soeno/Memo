Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  $date = Time.now.in_time_zone('Tokyo').to_s
  root "api/memos#index"
  namespace :api, default: {format: :json} do
    resources :memos, only: [:index, :create]
  end
end
