namespace :scheduler do
  task go: :environment do
    NotifyExpiredPredictionsWorker.perform_async
    NotifyExpiredPredictionsWorker.perform_in(2.minutes)
    NotifyExpiredPredictionsWorker.perform_in(4.minutes)
    NotifyExpiredPredictionsWorker.perform_in(6.minutes)
    NotifyExpiredPredictionsWorker.perform_in(8.minutes)
  end
end
