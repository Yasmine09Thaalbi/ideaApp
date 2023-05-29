require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module Railsgirls
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Add the following line to include the app/uploaders directory in autoload paths
    config.autoload_paths += Dir[Rails.root.join('app', 'uploaders', '**/')]

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
