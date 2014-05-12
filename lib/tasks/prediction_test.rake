namespace :prediction_test do
  task buildimage: :environment do
    Prediction.first().build_image()
  end

end
