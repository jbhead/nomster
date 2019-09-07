require_relative 'boot'

require 'rails/all'

require 'carrierwave'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Nomster
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Fonts path
    config.assets.paths << "#{Rails.root}/app/assets/fonts"

    # Precompile additional assets
    config.assets.precompile += %w( .svg .eot .woff .ttf )

    # AWS KEYS 
    AWS_ACCESS_KEY: "AKIAUUEPJYAY4S7S3R57"
    AWS_SECRET_KEY: "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"
    AWS_BUCKET: "josh-head-nomster"


  end
end
