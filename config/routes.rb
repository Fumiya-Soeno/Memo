Rails.application.routes.draw do
  $date = Time.now.in_time_zone('Tokyo').to_s
  root "api/memos#index"
  namespace :api, default: {format: :json} do
    resources :memos, only: [:index, :create] do
      collection do
        post "getTweets"
      end
    end
  end
end
