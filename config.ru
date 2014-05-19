require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = { :size => 1, :namespace => 'sidekiq-knoda' }
end

require 'sidekiq/web'
run Sidekiq::Web
