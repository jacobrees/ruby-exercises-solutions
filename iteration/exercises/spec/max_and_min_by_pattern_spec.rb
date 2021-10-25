RSpec.describe 'max and min by pattern' do
  it 'test 1' do
    numbers = [1, 100, 1000, 1_000_000]
    greatest = numbers[0]
    numbers.each do |number|
      greatest = number if number > greatest
    end
    expect(greatest).to eq(100_000)
  end

  it 'test 2' do
    magnitudes = {
      ones: 1,
      hundreds: 100,
      thousands: 1000,
      millions: 1_000_000
    }
    greatest = magnitudes[magnitudes.keys[0]]
    magnitudes.each do |_name, value|
      greatest = value if value > greatest
    end
    expect(greatest).to eq(1_000_000)
  end

  xit 'test 3' do
    meals = %w[banana nuts salad steak cake]
    shortest_word = meals[0]
    meals.each do |meal|
      # Your Code Here
    end

    expect(shortest_word).to eq('nuts')
  end

  xit 'test 4' do
    meals = {
      breakfast: 'banana',
      snack: 'nuts',
      lunch: 'salad',
      dinner: 'steak',
      dessert: 'cake'
    }
    shortest_word = meals[meals.keys.first]
    meals.each do |meal, dish|
      # Your Code Here
    end

    expect(shortest_word).to eq('nuts')
  end

  xit 'test 5' do
    stats = [3001, 431, 1695, 0.27601, 0.340]
    most_digits = stats[0]
    # Your Code Here

    expect(most_digits).to eq(0.27601)
  end

  xit 'test 6' do
    stats = {
      games_played: 3001,
      home_runs: 431,
      rbi: 1695,
      batting_average: 0.27601,
      on_base_percentage: 0.340
    }
    most_digits = stats[stats.keys.first]
    # Your Code Here

    expect(most_digits).to eq(0.27601)
  end

  xit 'test 7' do
    ages = [39, 45, 29, 24, 50]
    # Your Code Here

    expect(oldest).to eq(50)
  end

  xit 'test 8' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    # Your Code Here

    expected = { name: 'miguel', age: 50 }
    expect(oldest).to eq(expected)
  end

  xit 'test 9' do
    programmers = [%w[katrina sandi jim aaron desi], %w[abby jon susan]]
    # Your Code Here

    expect(fewest_programmers).to eq(%w[abby jon susan])
  end

  xit 'test 10' do
    programmers = { ruby: %w[katrina sandi jim aaron desi], java: %w[abby jon susan] }
    # Your Code Here

    expect(fewest_programmers).to eq(:java)
  end
end
