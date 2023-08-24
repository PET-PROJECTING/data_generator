require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module DataGenerator
  class Application < Rails::Application
    config.load_defaults 7.0

    config.autoload_paths += %W(#{config.root}/app/controllers/modules)

    config.api_only = true
  end
end
