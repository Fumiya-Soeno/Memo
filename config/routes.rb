Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  $date = Time.now.in_time_zone('Tokyo').to_s
  root "api/memos#index"
  namespace :api, default: {format: :json} do
    resources :memos, only: [:index, :create] do
      collection do
        post "loginConfirm"
      end
    end
  end
end
