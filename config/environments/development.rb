Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.assets.raise_runtime_errors = true
  config.apns_certificate = "#{Rails.root}/certs/certificate_development.pem"
  config.apns_gateway = "gateway.sandbox.push.apple.com"
  config.apns_sandbox = true
  config.twilio = { :sid => "ACcd2389b24d750e7683dff84a092fe71d", :token => "de4f659da42c1d8a9c6ff6302286b050", :from => "+15005550006" }
end
