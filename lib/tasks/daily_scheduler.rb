namespace :daily_scheduler do
  task go: :environment do
    Sidekiq.configure_client do |config|
      config.redis = { size: 1, namespace: 'sidekiq-knoda' }
    end
    Recurring::CleanActivities.perform_async
  end
end
