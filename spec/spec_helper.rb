# frozen_string_literal: true

require 'bundler/setup'
require 'config/simple_cov_config'
SimpleCovConfig.configure

require 'rails'
require 'rack_dev_mark_configurator'
require 'dotenv'
require 'awesome_print'
require 'pry'

Dotenv.load('.env.test')

RSpec.configure do |config|
  config.example_status_persistence_file_path = '.rspec_status'
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
