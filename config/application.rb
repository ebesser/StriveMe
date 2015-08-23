require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Workjounral
  class Application < Rails::Application

        ActionMailer::Base.smtp_settings = {
             :address              => "smtp.gmail.com",
             :domain               => "mail.google.com",
             :port                 => 587,
             :user_name            => "workjournal52@gmail.com",
             :password             => "qwe90qwe",
             :authentication       => "login",
             :enable_starttls_auto => true
        }


  end
end
