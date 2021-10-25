RSpec.describe 'Hashes' do
  it 'test 1' do
    # In the line below, create a new empty hash called empty
    empty = ______
    expect(empty).to eq({})
  end

  xit 'test 2' do
    # In the line below, create an empty hash with a default value 0
    empty = ______
    expect(empty[:not_found]).to eq(0)
  end

  xit 'test 3' do
    # In the line below, create a hash called ages. The hash should
    # have a key of "ben" with a value of 4 and a key of "kelly" with
    # a value of 6
    ages = ______
    expect(ages.length).to eq(2)
    expect(ages["ben"]).to eq(4)
    expect(ages["kelly"]).to eq(6)
  end

  xit 'test 4' do
    # In the line below, create a hash called ages. The hash should
    # have a key of :ben with a value of 4 and a key of :kelly with
    # a value of 6.
    ages = ______
    expect(ages.length).to eq(2)
    expect(ages[:ben]).to eq(4)
    expect(ages[:kelly]).to eq(6)

    # There are two different syntaxes for doing this. Use the other way to
    # achieve the same result
    ages = ______
    expect(ages.length).to eq(2)
    expect(ages[:ben]).to eq(4)
    expect(ages[:kelly]).to eq(6)
  end

  xit 'test 5' do
    # In the line below, create a new hash with
    # default values of zero
    # create a "tomatoes" key and a :carrots key
    ingredients = ______

    expect(ingredients["tomatoes"]).to eq(0)
    expect(ingredients[:carrots]).to eq(0)
  end

  xit 'test 6' do
    books = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # access the value "Grapes of Wrath"  in the line below
    grapes = ______
    expect(grapes).to eq("Grapes of Wrath")
  end

  xit 'test 7' do
    books = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # add a new key of "Ernest Hemmingway"
    # with a value of "For Whom the Bell Tolls"
    # in the line below
    ______
    expected = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird",
      "Ernest Hemmingway" => "For Whom the Bell Tolls"
    }
    expect(books).to eq(expected)
  end

  xit 'test 8' do
    books = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # change the value associated with
    # "John Steinbeck" to "Of Mice and Men"
    ______
    expected = {
      "John Steinbeck" => "Of Mice and Men",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    expect(books).to eq(expected)
  end

  xit 'test 9' do
    books = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # delete the key "Harper Lee"
    ______
    expected = {
      "John Steinbeck" => "Grapes of Wrath"
    }
    expect(books).to eq(expected)
  end

  xit 'test 10' do
    books = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # access the value "Grapes of Wrath"  in the line below
    grapes = ______
    expect(grapes).to eq("Grapes of Wrath")
  end

  xit 'test 11' do
    books = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # add a new key of :Ernest_Hemmingway
    # with a value of "For Whom the Bell Tolls"
    # in the line below
    ______
    expected = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird",
      Ernest_Hemmingway: "For Whom the Bell Tolls"
    }
    expect(books).to eq(expected)
  end

  xit 'test 12' do
    books = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # change the value associated with
    # :John_Steinbeck to "Of Mice and Men"
    ______
    expected =  {
      John_Steinbeck: "Of Mice and Men",
      Harper_Lee: "To Kill a Mockingbird"
    }
    expect(books).to eq(expected)
  end

  xit 'test 13' do
    books = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # delete the key :Harper_Lee
    ______
    expected = {
      John_Steinbeck: "Grapes of Wrath"
    }
    expect(books).to eq(expected)
  end

  xit 'test 14' do
    ages = {
      "Jimmy" => 4,
      "Julio" => 8,
      "Juliet" => 9
    }
    # Using the ages hash defined above
    # increment Julio's age by one
    ______
    expect(ages["Julio"]).to eq(9)
  end

  xit 'test 15' do
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    # Using the ages hash defined above
    # get an array of all the names
    names = ______
    expect(names).to eq([:Jimmy, :Julio, :Juliet])
  end

  xit 'test 16' do
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    # Using the ages hash defined above
    # get an array of all the ages
    age_list = ______
    expect(age_list).to eq([4, 8, 9])
  end

  xit 'test 17' do
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    # Using the ages hash defined above
    # find the number of key/value pairs
    num_pairs = ______
    expect(num_pairs).to eq(3)
  end

  xit 'test 18' do
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    # Call a method on the ages hash defined above
    # to figure out if :Jimmy is a key
    jimmy_in_hash = ______
    expect(jimmy_in_hash).to eq(true)

    # Now figure out if :Jackie is in the hash

    jackie_in_hash = ______
    expect(jackie_in_hash).to eq(false)
  end

  xit 'test 19' do
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    # Call a method on the ages hash defined above
    # to make the keys the values and vice versa
    opposite = _____
    expected = {
      4 => :Jimmy,
      8 => :Julio,
      9 => :Juliet
    }
    expect(opposite).to eq(expected)
  end
end
