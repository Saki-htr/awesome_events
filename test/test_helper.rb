ENV['RAILS_ENV'] ||= 'test'
# simplecovを使うときはコメントアウトを外す
# require 'simplecov'
# SimpleCov.start 'rails'
require 'coveralls'
Coveralls.wear!('rails')

require_relative '../config/environment'
require 'rails/test_help'
require_relative 'sign_in_helper'
require 'minitest/mock'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors) # simplecovを使うときはコメントアウト

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  # fixtures :all

  # Add more helper methods to be used by all tests here...
end
