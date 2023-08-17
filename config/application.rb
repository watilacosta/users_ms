# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module UsersMs
  class Application < Rails::Application
    config.load_defaults 7.0

    config.generators.system_tests = nil

    config.api_only = true
  end
end
