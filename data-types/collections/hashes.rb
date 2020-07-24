require 'minitest/autorun'
require 'minitest/pride'

class HashesTest < Minitest::Test

  def test_1
    #skip
    # In the line below, create a new empty hash called empty
    empty = {}
    assert_equal ({}), empty
  end

  def test_2
    #skip
    # In the line below, create an empty hash with a default value 0
    empty = Hash.new(0)
    assert_equal 0, empty[:not_found]
  end

  def test_3
    #skip
    # In the line below, create a hash called ages. The hash should
    # have a key of "ben" with a value of 4 and a key of "kelly" with
    # a value of 6
    ages = {"ben" => 4, "kelly" => 6}
    assert_equal 2, ages.length
    assert_equal 4, ages["ben"]
    assert_equal 6, ages["kelly"]
  end

  def test_4
    #skip
    # In the line below, create a hash called ages. The hash should
    # have a key of :ben with a value of 4 and a key of :kelly with
    # a value of 6.
    ages = {:ben => 4, :kelly => 6}
    assert_equal 2, ages.length
    assert_equal 4, ages[:ben]
    assert_equal 6, ages[:kelly]

    # There are two different syntaxes for doing this. Use the other way to
    # achieve the same result
    ages = {ben: 4, kelly: 6}
    assert_equal 2, ages.length
    assert_equal 4, ages[:ben]
    assert_equal 6, ages[:kelly]
  end

  def test_5
    #skip
    # In the line below, create a new hash with
    # a default value of zero
    ingredients = Hash.new(0)
    assert_equal 0, ingredients["tomatoes"]
    assert_equal 0, ingredients[:carrots]
  end

  def test_6
    #skip
    books = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # access the value "Grapes of Wrath"  in the line below
    grapes = books["John Steinbeck"]
    assert_equal "Grapes of Wrath", grapes
  end

  def test_7
    #skip
    books = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # add a new key of "Ernest Hemmingway"
    # with a value of "For Whom the Bell Tolls"
    # in the line below
    books.store("Ernest Hemmingway", "For Whom the Bell Tolls")
    expected = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird",
      "Ernest Hemmingway" => "For Whom the Bell Tolls"
    }
    assert_equal expected, books
  end

  def test_8
    #skip
    books = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # change the value associated with
    # "John Steinbeck" to "Of Mice and Men"
    books["John Steinbeck"] = "Of Mice and Men"
    expected = {
      "John Steinbeck" => "Of Mice and Men",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    assert_equal expected, books
  end

  def test_9
    #skip
    books = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # delete the key "Harper Lee"
    books.delete("Harper Lee")
    expected = {
      "John Steinbeck" => "Grapes of Wrath"
    }
    assert_equal expected, books
  end

  def test_10
    #skip
    books = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # access the value "Grapes of Wrath"  in the line below
    grapes = books[:John_Steinbeck]
    assert_equal "Grapes of Wrath", grapes
  end

  def test_11
    #skip
    books = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # add a new key of :Ernest_Hemmingway
    # with a value of "For Whom the Bell Tolls"
    # in the line below
    books[:Ernest_Hemmingway] = "For Whom the Bell Tolls"
    expected = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird",
      Ernest_Hemmingway: "For Whom the Bell Tolls"
    }
    assert_equal expected, books
  end

  def test_12
    #skip
    books = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # change the value associated with
    # :John_Steinbeck to "Of Mice and Men"
    books[:John_Steinbeck] = "Of Mice and Men"
    expected =  {
      John_Steinbeck: "Of Mice and Men",
      Harper_Lee: "To Kill a Mockingbird"
    }
    assert_equal expected, books
  end

  def test_13
    #skip
    books = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # delete the key :Harper+Lee
    books.delete(:Harper_Lee)
    expected = {
      John_Steinbeck: "Grapes of Wrath"
    }
    assert_equal expected, books
  end

  def test_14
    #skip
    ages = {
      "Jimmy" => 4,
      "Julio" => 8,
      "Juliet" => 9
    }
    # Using the ages hash defined above
    # increment Julio's age by one
    ages["Julio"] += 1
    assert_equal 9, ages["Julio"]
  end

  def test_15
    #skip
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    # Using the ages hash defined above
    # increment Julio's age by one
    ages[:Julio] += 1
    assert_equal 9, ages[:Julio]
  end

  def test_16
    #skip
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    # Using the ages hash defined above
    # get an array of all the names
    names = ages.keys
    assert_equal [:Jimmy, :Julio, :Juliet], names
  end

  def test_17
    #skip
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    # Using the ages hash defined above
    # get an array of all the ages
    age_list = ages.values
    assert_equal [4, 8, 9], age_list
  end

  def test_18
    #skip
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    # Using the ages hash defined above
    # find the number of key/value pairs
    num_pairs = ages.size
    assert_equal 3, num_pairs
  end

  def test_19
    #skip
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    # Call a method on the ages hash defined above
    # to figure out if :Jimmy is a key
    jimmy_in_hash = ages.has_key?(:Jimmy)
    assert_equal true, jimmy_in_hash

    # Now figure out if :Jackie is in the hash

    jackie_in_hash = ages.has_key?(:Jackie)
    assert_equal false, jackie_in_hash
  end

  def test_20
    #skip
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    # Call a method on the ages hash defined above
    # to make the keys the values and vice versa
    opposite = ages.invert
    expected = {
      4 => :Jimmy,
      8 => :Julio,
      9 => :Juliet
    }
    assert_equal expected, opposite
  end
end
