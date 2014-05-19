Rails.application.configure do
  config.cache_classes = true
  config.eager_load = false
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_assets = false
  config.assets.compile = false
  config.assets.digest = true
  config.assets.version = '1.0'
  config.log_level = :error
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.autoflush_log = false
  config.log_formatter = ::Logger::Formatter.new
  config.active_record.dump_schema_after_migration = false
  config.twilio = { :sid => "ACc01dcbcd98e13fb37d93933315ea32a7", :token => "2d2764dffd24878a97f8e93c90057824", :from => "+18166056632" }
  config.cache_store = :dalli_store
end
