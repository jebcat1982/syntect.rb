require File.expand_path("../test_helper", __FILE__)
require 'json'

class TestBasics < MiniTest::Test
  def setup
    @library = Syntect::Library.new(Linguist::Grammars.path)
  end

  def test_wow
    assert_equal 1, 1
  end
end
