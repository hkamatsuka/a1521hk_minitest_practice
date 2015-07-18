require 'test_helper'
require 'a1521hk_minitest_practice'

class A1521hkMinitestPracticeTest < Minitest::Test
  def setup
    @main = A1521hkMinitestPractice::Main.new
  end
  def test_that_it_has_a_version_number
    refute_nil ::A1521hkMinitestPractice::VERSION
  end

  def test_odd?
#    assert_equal true, @main.odd?(1), '1 is odd'
    assert @main.odd?(1) == true, '1 is odd'
    assert @main.odd?(2) == false, '2 is not odd'
    assert @main.odd?(3) == true, '3 is not odd'
  end

  def test_check_number?
    assert @main.check_number?(1233) == false, '1233 is odd'
    assert @main.check_number?(1234) == true, '1234 is not odd'
    assert @main.check_number?(1235) == false, '1235 is odd'
    assert @main.check_number?(1236) == true, '1236 is not odd'
  end
  def test_enough_length?
    assert @main.enough_length?("xy") == false, 'xy is odd'
    assert @main.enough_length?("xyz") == true, 'xyz is not odd'
    assert @main.enough_length?("abcdefgh") == true, 'abcdefgh is not odd'
    assert @main.enough_length?("abcdefghi") == false, 'abcdefghi is odd'
  end
  def test_devide
    assert @main.devide(4,2) == 2, '4/2 is 2'
    assert_raises(ZeroDivisionError) do @main.devide(100,0) end
  end
  def test_fizz_buzz
    assert @main.fizz_buzz(3) == 'Fizz', 'Fizz'
    assert @main.fizz_buzz(5) == 'Buzz', 'Buzz'
    assert @main.fizz_buzz(15) == 'FizzBuzz', 'FizzBuzz'
  end
  def test_hello
    assert @main.hello == 'Hello', 'Hello'
  end
end
