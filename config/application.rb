require File.expand_path('../boot', __FILE__)
require 'rails/all'
Bundler.require(*Rails.groups)

module KnodaWorker
  class Application < Rails::Application
    config.paths['db/migrate'] = KnodaCore::Engine.paths['db/migrate'].existent
    config.twitter_key = "14fSb3CT7EEQkoryO8RNx7BrG"
    config.twitter_secret = "6Z5OGzxLL9NqVEpAbLs9FFd2PyLm6pd7j5r98IZr5e0HRr73bo"
    config.asset_host = ENV['ASSET_HOST']
    config.knoda_web_url = ENV["KNODA_WEB_URL"]
  end
end
