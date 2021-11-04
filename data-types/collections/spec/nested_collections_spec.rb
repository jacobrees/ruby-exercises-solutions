RSpec.describe 'Nested Collections' do
  it 'test 1' do
    coordinates = [[2, 5], [87, 2], [56, 39], [3, 46]]
    # Using the coordinates variable defined above
    # Retrive the second element
    second = coordinates[1]

    expect(second).to eq([87, 2])
  end

  it 'test 2' do
    coordinates = [[2, 5], [87, 2], [56, 39], [3, 46]]
    # Using the coordinates variable defined above
    # Retrive the value 39
    thirty_nine = coordinates[2][1]
    expect(thirty_nine).to eq(39)
  end

  it 'test 3' do
    coordinates = [[2, 5], [87, 2], [56, 39], [3, 46]]
    # Using the coordinates variable defined above
    # set the last coordinates to [6, 55]
    coordinates[coordinates.length - 1] = [6, 55]

    expected = [[2, 5], [87, 2], [56, 39], [6, 55]]
    expect(coordinates).to eq(expected)
  end

  it 'test 4' do
    coordinates = [[2, 5], [87, 2], [56, 39], [3, 46]]
    # Using the coordinates variable defined above
    # set the second element of the last coordinates
    # to 0
    coordinates[coordinates.length - 1][1] = 0

    expected = [[2, 5], [87, 2], [56, 39], [3, 0]]
    expect(coordinates).to eq(expected)
  end

  it 'test 5' do
    coordinates = [[2, 5], [87, 2], [56, 39], [3, 46]]
    # Using the coordinates variable defined above
    # add the coordinate [4, 14]
    coordinates.push([4, 14])

    expected = [[2, 5], [87, 2], [56, 39], [3, 46], [4, 14]]
    expect(coordinates).to eq(expected)
  end

  it 'test 6' do
    team = {
      pitchers: %w[Kenny Joan Shabaz],
      fielders: %w[Luke Chris Megan Mark Mackenzie],
      catchers: ['Johnny']
    }
    # Using the team variable defined above
    # retrieve all of the pitchers
    pitchers = team[:pitchers]
    expected = %w[Kenny Joan Shabaz]
    expect(pitchers).to eq(expected)
  end

  it 'test 7' do
    team = {
      pitchers: %w[Kenny Joan Shabaz],
      fielders: %w[Luke Chris Megan Mark Mackenzie],
      catchers: ['Johnny']
    }
    # Using the team variable defined above
    # add "Phil" as a pitcher
    team[:pitchers].push("Phil")

    expected = {
      pitchers: %w[Kenny Joan Shabaz Phil],
      fielders: %w[Luke Chris Megan Mark Mackenzie],
      catchers: ['Johnny']
    }
    expect(team).to eq(expected)
  end

  it 'test 8' do
    team = {
      pitchers: %w[Kenny Joan Shabaz],
      fielders: %w[Luke Chris Megan Mark Mackenzie],
      catchers: ['Johnny']
    }
    # Using the team variable defined above
    # create a new key :coaches with the value
    # of an empty array
    team[:coaches] = []

    expected = {
      pitchers: %w[Kenny Joan Shabaz],
      fielders: %w[Luke Chris Megan Mark Mackenzie],
      catchers: ['Johnny'],
      coaches: []
    }
    expect(team).to eq(expected)
  end

  it 'test 9' do
    team = {
      pitchers: %w[Kenny Joan Shabaz],
      fielders: %w[Luke Chris Megan Mark Mackenzie],
      catchers: ['Johnny']
    }
    # Using the team variable defined above
    # Find out how many fielders there are
    num_fielders = team[:fielders].length
    expect(num_fielders).to eq(5)
  end

  it 'test 10' do
    team = {
      pitchers: %w[Kenny Joan Shabaz],
      fielders: %w[Luke Chris Megan Mark Mackenzie],
      catchers: ['Johnny']
    }
    # Using the team variable defined above
    # Find out if "Kenny" is a pitcher
    kenny_is_pitcher = team[:pitchers].include?("Kenny")
    expect(kenny_is_pitcher).to eq(true)
  end

  it 'test 11' do
    # HINT: You may find it valuable to break the three_day_forecast variable
    # into multiple lines to make it more readable

    three_day_forecast = {
      days: [{ high: 70, low: 63, summary: 'Mostly Sunny' }, { high: 55, low: 47, summary: 'Partly Cloudy' },
             { high: 77, low: 64, summary: 'Sunny' }], 'date' => '6-21-18', ref_num: 3_456_789_765_456_787_656
    }
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast[:ref_num]
    expected = 3_456_789_765_456_787_656
    expect(actual).to eq(expected)
  end

  it 'test 12' do
    three_day_forecast = {
      days: [{ high: 70, low: 63, summary: 'Mostly Sunny' }, { high: 55, low: 47, summary: 'Partly Cloudy' },
             { high: 77, low: 64, summary: 'Sunny' }], 'date' => '6-21-18', ref_num: 3_456_789_765_456_787_656
    }
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast[:days]
    expected = [{ high: 70, low: 63, summary: 'Mostly Sunny' }, { high: 55, low: 47, summary: 'Partly Cloudy' },
                { high: 77, low: 64, summary: 'Sunny' }]
    expect(actual).to eq(expected)
  end

  it 'test 13' do
    three_day_forecast = {
      days: [{ high: 70, low: 63, summary: 'Mostly Sunny' }, { high: 55, low: 47, summary: 'Partly Cloudy' },
             { high: 77, low: 64, summary: 'Sunny' }], 'date' => '6-21-18', ref_num: 3_456_789_765_456_787_656
    }
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast['date']
    expected = '6-21-18'
    expect(actual).to eq(expected)
  end

  it 'test 14' do
    three_day_forecast = {
      days: [{ high: 70, low: 63, summary: 'Mostly Sunny' }, { high: 55, low: 47, summary: 'Partly Cloudy' },
             { high: 77, low: 64, summary: 'Sunny' }], 'date' => '6-21-18', ref_num: 3_456_789_765_456_787_656
    }
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast.keys
    expected = [:days, 'date', :ref_num]
    expect(actual).to eq(expected)
  end

  it 'test 15' do
    three_day_forecast = {
      days: [{ high: 70, low: 63, summary: 'Mostly Sunny' }, { high: 55, low: 47, summary: 'Partly Cloudy' },
             { high: 77, low: 64, summary: 'Sunny' }], 'date' => '6-21-18', ref_num: 3_456_789_765_456_787_656
    }
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast[:days][1][:high]
    expected = 55
    expect(actual).to eq(expected)
  end

  it 'test 16' do
    three_day_forecast = {
      days: [{ high: 70, low: 63, summary: 'Mostly Sunny' }, { high: 55, low: 47, summary: 'Partly Cloudy' },
             { high: 77, low: 64, summary: 'Sunny' }], 'date' => '6-21-18', ref_num: 3_456_789_765_456_787_656
    }
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast[:days][0].keys
    expected = %i[high low summary]
    expect(actual).to eq(expected)
  end

  it 'test 17' do
    three_day_forecast = {
      days: [{ high: 70, low: 63, summary: 'Mostly Sunny' }, { high: 55, low: 47, summary: 'Partly Cloudy' },
             { high: 77, low: 64, summary: 'Sunny' }], 'date' => '6-21-18', ref_num: 3_456_789_765_456_787_656
    }
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast[:days][2].values
    expected = [77, 64, 'Sunny']
    expect(actual).to eq(expected)
  end

  it 'test 18' do
    three_day_forecast = {
      days: [{ high: 70, low: 63, summary: 'Mostly Sunny' }, { high: 55, low: 47, summary: 'Partly Cloudy' },
             { high: 77, low: 64, summary: 'Sunny' }], 'date' => '6-21-18', ref_num: 3_456_789_765_456_787_656
    }
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast.keys[1]
    expected = 'date'
    expect(actual).to eq(expected)
  end

  it 'test 19' do
    three_day_forecast = {
      days: [{ high: 70, low: 63, summary: 'Mostly Sunny' }, { high: 55, low: 47, summary: 'Partly Cloudy' },
             { high: 77, low: 64, summary: 'Sunny' }], 'date' => '6-21-18', ref_num: 3_456_789_765_456_787_656
    }
    # Using the three_day_forecast variable defined above,
    # Change the high on the fist day to 99
    three_day_forecast[:days][0][:high] = 99
    expected = {
      days: [{ high: 99, low: 63, summary: 'Mostly Sunny' }, { high: 55, low: 47, summary: 'Partly Cloudy' },
             { high: 77, low: 64, summary: 'Sunny' }], 'date' => '6-21-18', ref_num: 3_456_789_765_456_787_656
    }
    expect(three_day_forecast).to eq(expected)
  end

  it 'test 20' do
    three_day_forecast = {
      days: [{ high: 70, low: 63, summary: 'Mostly Sunny' }, { high: 55, low: 47, summary: 'Partly Cloudy' },
             { high: 77, low: 64, summary: 'Sunny' }], 'date' => '6-21-18', ref_num: 3_456_789_765_456_787_656
    }
    # Using the three_day_forecast variable defined above,
    # Add a new key "time" with the value "12:30"
    three_day_forecast['time'] = "12:30"
    expected = { 'time' => '12:30',
                 days: [{ high: 70, low: 63, summary: 'Mostly Sunny' }, { high: 55, low: 47, summary: 'Partly Cloudy' }, { high: 77, low: 64, summary: 'Sunny' }], 'date' => '6-21-18', ref_num: 3_456_789_765_456_787_656 }
    expect(three_day_forecast).to eq(expected)
  end
end
