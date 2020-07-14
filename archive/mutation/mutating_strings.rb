# encoding: utf-8
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'

class MutatingStringTest < Minitest::Test
  def test_strip_1
    s1 = "   \n  \tto the    moon\n\n\t    "
    s2 = s1.strip
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_strip_2
    skip
    s1 = "   \n  \tto the    moon\n\n\t    "
    s2 = s1.strip!
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_capitalize_1
    skip
    s1 = "alice"
    s2 = s1.capitalize
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_capitalize_2
    skip
    s1 = "alice"
    s2 = s1.capitalize!
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_upcase_1
    skip
    s1 = "run!"
    s2 = s1.upcase
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_upcase_2
    skip
    s1 = "run!"
    s2 = s1.upcase!
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_downcase_1
    skip
    s1 = "I'M OVER HERE"
    s2 = s1.downcase
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_downcase_2
    skip
    s1 = "I'M OVER HERE"
    s2 = s1.downcase!
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_chop_1
    skip
    s1 = "hello!"
    s2 = s1.chop
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_chop_2
    skip
    s1 = "hello!"
    s2 = s1.chop!
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_chomp_1
    skip
    s1 = "hello\n"
    s2 = s1.chomp
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_chomp_2
    skip
    s1 = "hello\n"
    s2 = s1.chomp!
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_delete_1
    skip
    s1 = "eeny, meeny, miny, moe"
    s2 = s1.delete('e')
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_delete_2
    skip
    s1 = "eeny, meeny, miny, moe"
    s2 = s1.delete!('e')
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_reverse_1
    skip
    s1 = "woolly mammoth"
    s2 = s1.reverse
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_reverse_2
    skip
    s1 = "woolly mammoth"
    s2 = s1.reverse!
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_squeeze_1
    skip
    s1 = "Sunny summer days playing hoops on the roof"
    s2 = s1.squeeze
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_squeeze_2
    skip
    s1 = "Sunny summer days playing hoops on the roof"
    s2 = s1.squeeze!
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_shovel
    skip
    s1 = ""
    s2 = s1 << "abc"
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_concat
    skip
    s1 = ""
    s2 = s1.concat("abc")
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_plus
    skip
    s1 = ""
    s2 = s1 + "abc"
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_sub_1
    skip
    s1 = "kicking"
    s2 = s1.sub('k', 't')
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_sub_2
    skip
    s1 = "kicking"
    s2 = s1.sub!('k', 't')
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_gsub_1
    skip
    s1 = "kicking"
    s2 = s1.gsub('k', 't')
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_gsub_2
    skip
    s1 = "kicking"
    s2 = s1.gsub!('k', 't')
    maybe s1.object_id == s2.object_id
    assert_equal __, s1
    assert_equal __, s2
  end

  def test_square_bracket_equal
    skip
    s1 = "cut"
    assert_equal __, s1

    s2 = s1[-1] = "p"
    s3 = s1[1] = "p"

    assert_equal __, s2
    assert_equal __, s3
    assert_equal __, s1
  end
end

