require_relative 'longest_substring'

  s1 = 'abcabbcdef'

describe 'brute_longest_substring' do 
  
  describe 'output' do
    it 'returns an integer' do
      expect(brute_longest_substring(s1)).to be_a Integer
    end

    it 'returns the longest unique substring' do
      expect(brute_longest_substring(s1)).to eq 5
    end
  end

end

describe 'sliding_longest_string' do
  
  describe 'output' do
    it 'returns an integer' do
      expect(sliding_longest_substring(s1)).to be_a Integer
    end

    it 'returns the longest unique substring' do
      expect(sliding_longest_substring(s1)).to eq 5
    end
  end
end