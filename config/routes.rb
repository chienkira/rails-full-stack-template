Rails.application.routes.draw do
  resources :examples
  resources :status, only: :index

  # Sidekiq Monitoring web ui
  mount Sidekiq::Web => '/sidekiq'
end
