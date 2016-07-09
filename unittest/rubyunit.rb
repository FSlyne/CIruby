require 'test/unit'

class StringTest < Test::Unit::TestCase

  def test_length
    s = "Hello, World!"
    assert_equal(13, s.length)
  end

  def test_length
    s = "Hello, World!"
    assert_not_equal(10, s.length)
  end

end
