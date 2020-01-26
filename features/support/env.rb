# frozen_string_literal: true

require 'capybara/cucumber'
require 'selenium-webdriver'
# require 'site prism'
# require 'require all'

# require all 'page object'
# require_relative ''

def options
  Selenium::WebDriver::Chrome::Options.new(args: %w[window-size=1800,1000])
end

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

# World(FeatureHelper)
