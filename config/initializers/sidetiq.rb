Sidetiq.configure do |config|
  config.handler_pool_size = 1
end

KnodaCore::Engine.eager_load!
