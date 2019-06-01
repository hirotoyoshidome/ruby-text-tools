# encoding: UTF-8
require 'test/unit'

#テスト
class TestSample < Test::Unit::TestCase
  def test_greeting
    assert_equal "Hello", Sample.greeting #アサーション
  end
end
class Sample
  def self.greeting #static
    'Hello'
  end
end
