ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
#require "minitest/assert_select"
require "minitest/reporters"
Minitest::Reporters.use!
require 'simplecov'
SimpleCov.start 'rails' do
  add_filter '/bin/'
  add_filter '/db/'
  add_filter '/spec/' # for rspec
  add_filter '/test/' # for minitest
end


class ActiveSupport::TestCase
  fixtures :all
  include ApplicationHelper

   # Returns true if a test user is logged in.
   def is_logged_in?
     !session[:user_id].nil?
   end

  # Log in as a particular user.
   def log_in_as(user)
     session[:user_id] = user.id
   end
  end

class ActionDispatch::IntegrationTest
    def log_in_as(user, password: 'password')
        post login_path, params: { session: { email: user.email, password: password} }
    end
end
