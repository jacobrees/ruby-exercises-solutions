RSpec.describe 'map pattern' do
  it 'capitalizes' do
    names = %w[alice bob charlie]
    capitalized_names = []
    names.each do |name|
      capitalized_names << name.capitalize
    end
    expect(capitalized_names).to eq(%w[Alice Bob Charlie])
  end

  xit 'doubles' do
    numbers = [1, 2, 3, 4, 5]
    doubles = []
    numbers.each do |number|
      # Your code goes here
    end
    expect(doubles).to eq([2, 4, 6, 8, 10])
  end

  xit 'squares' do
    numbers = [1, 2, 3, 4, 5]
    squares = []
    # Your code goes here
    expect(squares).to eq([1, 4, 9, 16, 25])
  end

  xit 'lengths' do
    names = %w[alice bob charlie david eve]
    # Your code goes here
    expect(lengths).to eq([5, 3, 7, 5, 3])
  end

  xit 'normalize zip codes' do
    numbers = [234, 10, 9119, 38_881]
    # Your code goes here
    expect(zip_code).to eq(%w[00234 00010 09119 38881])
  end

  xit 'backwards' do
    names = %w[alice bob charlie david eve]
    # Your code goes here
    expect(backwards).to eq(%w[ecila bob eilrahc divad eve])
  end

  xit 'words with no vowels' do
    words = %w[green sheep travel least boat]
    # Your code goes here
    expect(without_vowels).to eq(%w[grn shp trvl lst bt])
  end

  xit 'trims last letter' do
    animals = %w[dog cat mouse frog platypus]
    # Your code goes here
    expect(trimmed).to eq(%w[do ca mous fro platypu])
  end
end
