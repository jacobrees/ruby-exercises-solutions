RSpec.describe 'group by pattern' do
  it 'group words by length' do
    words = %w[sue alice steve sally adam fort tops dog cat]
    grouped = Hash.new { |hash, key| hash[key] = [] }
    words.each do |word|
      grouped[word.length] << word
    end
    expected = { 3 => %w[sue dog cat], 4 => %w[adam fort tops], 5 => %w[alice steve sally] }
    expect(grouped).to eq(expected)
  end

  xit 'groups by odds and evens' do
    numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    odd_and_even = Hash.new { |hash, key| hash[key] = [] }
    numbers.each do |number|
      # Your code goes here
    end
    expected = { 1 => [1, 1, 3, 5, 13, 21, 55], 0 => [2, 8, 34] }
    expect(odd_and_even).to eq(expected)
  end

  xit 'groups by first letter' do
    words = %w[ant axis albatross bolt badge butter car cdr column]
    words_by_first_letter = Hash.new { |hash, key| hash[key] = [] }
    # Your code goes here
    expected = { 'a' => %w[ant axis albatross], 'b' => %w[bolt badge butter],
                 'c' => %w[car cdr column] }
    expect(words_by_first_letter).to eq(expected)
  end

  xit 'group by uniqueness' do
    words = %w[one two one TWO three one three three three]
    # Your code goes here
    expected = { 'one' => %w[one one one], 'two' => %w[two TWO],
                 'three' => %w[three three three three] }
    expect(grouped).to eq(expected)
  end

  xit 'group by number of zeroes' do
    numbers = [1, 3, 500, 200, 4000, 3000, 10_000, 90, 20, 500_000]
    # Your code goes here
    expected = { 0 => [1, 3], 2 => [500, 200], 3 => [4000, 3000], 4 => [10_000], 1 => [90, 20], 5 => [500_000] }
    expect(grouped).to eq(expected)
  end

  xit 'group by order of magnitude' do
    numbers = [1, 3, 503, 239, 4938, 3932, 19_982, 93, 21, 501_787]
    # Your code goes here
    expected = { 1 => [1, 3], 2 => [93, 21], 3 => [503, 239], 4 => [4938, 3932], 5 => [19_982], 6 => [501_787] }
    expect(grouped).to eq(expected)
  end
end
