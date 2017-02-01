
require 'minitest/autorun'
require '../lib/testing_basics'

class TestingBasicsTest < Minitest::Test

  def test_it_exists
    assert TestingBasics.new
  end

end