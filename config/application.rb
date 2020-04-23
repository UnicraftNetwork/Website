require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ORG
  NAME = "UdeC Craft"
  DOMAIN = "udecesports.com"
  SHOP = "shop.#{DOMAIN}"
end

module UdeCCraft
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Gracefully handle website errors, such as 404, 442 & 502
    config.exceptions_app = routes

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
