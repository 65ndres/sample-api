ENV["RAILS_ENV"] ||= "test"
ENV["DEVISE_JWT_SECRET_KEY"] ||= "test_devise_jwt_secret_key_32b_min!!"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end
