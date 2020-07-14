require 'minitest/autorun'
require 'minitest/pride'

class MapPatternTest < Minitest::Test

  def test_1
    names = ["alice", "bob", "charlie"]
    capitalized_names = []
    names.each do |name|
      capitalized_names << name.capitalize
    end
    assert_equal ["Alice", "Bob", "Charlie"], capitalized_names
  end

  def test_2
    family = {
      mother: "alice",
      father: "bob",
      brother: "charlie"
    }
    capitalized_family = {}
    family.each do |relationship, name|
      capitalized_family[relationship] = name.capitalize
    end
    expected = {
      mother: "Alice",
      father: "Bob",
      brother: "Charlie"
    }
    assert_equal expected, capitalized_family
  end

  def test_3
    numbers = [1, 2, 3, 4, 5]
    doubles = []
    numbers.each do |number|
      # Your Code Here
    end
    assert_equal [2, 4, 6, 8, 10], doubles
  end

  def test_4
    numbers = {
      one: 1,
      two: 2,
      three: 3,
      four: 4,
      five: 5
    }
    doubles = {}
    numbers.each do |name, number|
      # Your Code Here
    end
    expected = {
      one: 2,
      two: 4,
      three: 6,
      four: 8,
      five: 10
    }
    assert_equal expected, doubles
  end

  def test_5
    numbers = [1, 2, 3, 4, 5]
    squares = []
    # Your Code Here

    assert_equal [1, 4, 9, 16, 25], squares
  end

  def test_6
    numbers = {
      one: 1,
      two: 2,
      three: 3,
      four: 4,
      five: 5
    }
    squares = {}
    # Your Code Here

    expected = {
      one: 1,
      two: 4,
      three: 9,
      four: 16,
      five: 25
    }
    assert_equal expected, squares
  end

  def test_7
    names = ["alice", "bob", "charlie", "david", "eve"]
    #Your Code Here

    assert_equal [5, 3, 7, 5, 3], lengths
  end

  def test_8
    family = {
      mother: "alice",
      father: "bob",
      brother: "charlie",
      uncle: "david",
      sister: "eve"
    }
    #Your Code Here

    expected = {
      mother: 5,
      father: 3,
      brother: 7,
      uncle: 5,
      sister: 3
    }
    assert_equal expected, lengths
  end

  def test_9
    names = ["alice", "bob", "charlie", "david", "eve"]
    #Your Code Here

    assert_equal ["ecila", "bob", "eilrahc", "divad", "eve"], backwards
  end

  def test_10
    family = {
      mother: "alice",
      father: "bob",
      brother: "charlie",
      uncle: "david",
      sister: "eve"
    }
    #Your Code Here
    
    expected = {
      mother: "ecila",
      father: "bob",
      brother: "eilrahc",
      uncle: "divad",
      sister: "eve"
    }
    assert_equal expected, backwards
  end
end
