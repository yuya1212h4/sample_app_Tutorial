require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

# 成功/失敗の表示設定 gem minitest-reporters
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  include ApplicationHelper # このクラスのメソッドを使えるようにしている

  # テストユーザーがログイン中の場合にtrueを返す
  def is_logged_in?
    !session[:user_id].nil?
  end
  # Add more helper methods to be used by all tests here...
end
