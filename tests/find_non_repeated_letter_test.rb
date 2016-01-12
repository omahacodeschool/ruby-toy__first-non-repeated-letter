require 'test_helper'
require 'find_non_repeated_letter'

class FindNonRepeatedLetterTest < Minitest::Test
  def test_with_one_letter
    string = "a"
    result = find_first_non_repeated_letter(string)
    assert_equal("a", result)
  end

  def test_with_one_unique
    string = "aab"
    result = find_first_non_repeated_letter(string)
    assert_equal("b", result)
  end

  def test_with_two_unique
    string = "aabccd"
    result = find_first_non_repeated_letter(string)
    assert_equal("b", result)
  end

  def test_with_no_unique
    string = "aa"
    result = find_first_non_repeated_letter(string)
    assert_equal(nil, result)
  end

  def test_with_long_run
    string = "aaaaaaaaab"
    result = find_first_non_repeated_letter(string)
    assert_equal("b", result)
  end
end
