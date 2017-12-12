require_relative 'longest_substring'

describe 'longest_substring' do 
  s1 = 'abcabbcdef'

  describe 'output' do
    it 'returns an integer' do
      expect(longest_substring(s1)).to be_a Integer
    end

    it 'returns the longest unique substring' do
      expect(longest_substring(s1)).to eq 'bcdef'
    end
  end

end