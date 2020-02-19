Rails.application.routes.draw do
  resources :examples

  # Sidekiq Monitoring web ui
  mount Sidekiq::Web => '/sidekiq'
end
