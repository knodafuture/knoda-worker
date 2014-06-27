namespace :scheduler do
  task go: :environment do
    Sidekiq.configure_client do |config|
      config.redis = { size: 1, namespace: 'sidekiq-knoda' }
    end
    Recurring::NotifyExpiredPredictions.perform_async
    Recurring::NotifyExpiredPredictions.perform_in(2.minutes)
    Recurring::NotifyExpiredPredictions.perform_in(4.minutes)
    Recurring::NotifyExpiredPredictions.perform_in(6.minutes)
    Recurring::NotifyExpiredPredictions.perform_in(8.minutes)
  end
end
