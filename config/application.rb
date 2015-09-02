require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'base64'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Workjounral
  class Application < Rails::Application


  end
end
