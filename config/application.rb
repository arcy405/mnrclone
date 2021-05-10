require_relative 'boot'

require 'rails/all'
require "google/apis/drive_v3"


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MnrypDirectoryapp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.exceptions_app = self.routes
    config.i18n.fallbacks = true
    config.i18n.fallbacks = [:en]
  end
end
