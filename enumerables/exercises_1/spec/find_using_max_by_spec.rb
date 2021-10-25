RSpec.describe 'max_by' do
  # You get the first test for free... it's already passing.
  it 'longest word' do
    words = %w[apple banana cherry date eggplant]

    found_word = words.max_by(&:length)

    expect(found_word).to eq('eggplant')
  end

  # This one is missing the block inside the loop.
  xit 'shortest word' do
    words = %w[apple banana cherry date eggplant]

    found_word = words.max_by do |word|
      # write code here
    end

    expect(found_word).to eq('date')
  end

  # This one is missing the entire loop
  xit 'array with the most items' do
    arrays = [%i[a b c], [1, 2, 3, 4, 5], ['zoo', :things, :stuff]]

    # write code here

    expect(biggest_array).to eq([1, 2, 3, 4, 5])
  end

  # You're on your own on this one.
  xit 'array with fewest items' do
    arrays = [%i[a b c], [1, 2, 3, 4, 5], ['zoo', :things, :stuff]]

    # write code here

    expect(smallest_array).to eq(%i[a b c])
  end

  xit 'biggest number' do
    numbers = [1, 10, 100, 1000, 10_000, 1_000_000]

    # write code here

    expect(found).to eq(1_000_000)
  end

  xit 'smallest number' do
    numbers = [1, 10, 100, 1000, 10_000, 1_000_000]

    # write code here

    expect(found).to eq(1)
  end

  xit 'most programmers' do
    programmers = { ruby: %w[katrina sandi jim aaron desi], java: %w[abby jon susan] }

    # write code here

    expect(most_programmers.first).to eq(:ruby)
  end

  xit 'fewest programmers' do
    programmers = { ruby: %w[katrina sandi jim aaron desi], java: %w[abby jon susan] }

    # write code here

    expect(fewest_programmers.first).to eq(:java)
  end
end
