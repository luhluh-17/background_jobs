require 'sidekiq/web'

Rails.application.routes.draw do
  root 'site#index'

  mount Sidekiq::Web => '/sidekiq'
end
