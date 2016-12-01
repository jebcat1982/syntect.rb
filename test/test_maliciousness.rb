require File.expand_path("../test_helper", __FILE__)
require 'json'

class TestMaliciousness < MiniTest::Test

  def test_fails_on_non_string_library_path
    assert_raises(TypeError) do
      Syntect::Library.new(123)
    end
  end

  def test_fails_on_non_string_theme_path
    assert_raises(TypeError) do
      Syntect::Theme.new(456)
    end
  end

  def test_invalid_theme_fails_to_load
    assert_raises(RuntimeError) do
      Syntect::Theme.new("foobarbazinvalid.json")
    end
  end
end
