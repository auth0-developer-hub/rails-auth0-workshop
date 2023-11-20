# frozen_string_literal: true

require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require "active_record/railtie"
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'rails/test_unit/railtie'
require 'active_model/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WebAppRailsRubyHelloWorldInternalPrototypeTemp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Don't generate system test files.
    config.generators.system_tests = nil

    # Skipping tests for the sake of time
    config.generators do |g|
      g.template_engine nil #to skip views
      g.test_framework  nil #to skip test framework
      g.assets  false
      g.helper false
      g.stylesheets false
    end
    
    config.exceptions_app = routes

    config.logger = Logger.new($stdout)
    config.logger = ActiveSupport::Logger.new("log/#{Rails.env}.log")
  end
end
